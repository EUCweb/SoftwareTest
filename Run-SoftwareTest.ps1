<#

.SYNOPSIS
run Softwaresets

.DESCRIPTION
Running Powershell Pester to test the exiting executables on the XenApp Server
and send out the output to ReportUnit to generate a html report

.PARAMETER Type
possible Value, it uses the Types from the config.json. You can add your own, if you like
VA = VirtualApps
VD = VirtuelDesktops

.PARAMETER InstallationSet
Defines which Set of files are used to check if the software is sinstalled

.PARAMETER SkipMail
Switch: Skips the Mailsend, make no sence with Switch TestMode

.PARAMETER TestMode
Switch: Will use the emailToTest instead of the emailTo of the config.json. Can be used for debug only

.EXAMPLE
Running a Virtual Desktop (VD) SoftwareTest on the DEV InstallationsSet
Run-SoftwareTest -type VD -InstallationSet DEV

.EXAMPLE
Running a Virtual Apps (VA) SoftwareTest on the Standard InstallationsSet
Run-SoftwareTest -type VA -InstallationSet STD

.EXAMPLE
Running a Virtual Apps (VA) SoftwareTest on the Standard InstallationsSet and skips the Mail delivery
Run-SoftwareTest -type VA -InstallationSet STD -SkipMail

.EXAMPLE
Running a Virtual Desktop (VD) SoftwareTest on the DEV InstallationsSet and send the Mail to the Test Receipient only
Run-SoftwareTest -type VD -InstallationSet DEV -TestMode



.NOTES
Author: Matthias Schlimm


		History

Last Change: 13.12.2017 MS: Script created
Last Change: 04.09.2018 MS: update Citrix Director Server
Last Change: 26.07.2019 MS: update to json configuration and use new reportunit extend.exe
.LINK


#>
PARAM(
	[parameter(Mandatory = $true)]
	[string]$Type,
	[parameter(Mandatory = $true)]
	[string]$InstallationSet,
	[parameter(Mandatory = $false)]
	[switch]$SkipMail,
	[parameter(Mandatory = $false)]
	[switch]$TestMode
)


Begin {

	$script_path = $MyInvocation.MyCommand.Path
	$script_dir = Split-Path -Parent $script_path
	$jsonCfgFile = $script_dir + "\config.json"
	$PesterScript = $script_dir + "\Run-PesterTest.ps1"
	$folder = "SoftwareTest"
	$ReportPath = "$env:temp\$folder"
	$Computer = $env:COMPUTERNAME

	$jsondata = Convertfrom-Json -inputobject (GC $jsonCfgFile -Raw)


	$DNSHost = $jsondata.WebServer.LBname + "." + $env:USERDNSDOMAIN.ToLower()
	$AppCfgFiles = ($jsondata.SoftwareSet.$($Type).$($InstallationSet)).split(",")



}
Process {





	clear-host


	If(!(test-path $ReportPath)) { New-Item -ItemType Directory -Force -Path $ReportPath }
	[int]$PesterCountFailed = 0
	[int]$PesterCountPassed = 0

	ForEach ($AppCfgFile in $AppCfgFiles) {
		$AppCfgFile = $Type + "\" + $AppCfgFile
		$AppCfgBaseName = [System.IO.Path]::GetFileNameWithoutExtension("$AppCfgFile")

		$outfile = $ReportPath + "\" + $Computer + "-" + $AppCfgBaseName + ".xml"
		$PesterCount = Invoke-Pester -PassThru -Script @{ Path = $PesterScript; Parameters = @{ ApplicationConfigFile = $AppCfgFile }; } -OutputFormat NUnitXml -OutputFile "$outfile"
		$PesterCountFailed = $PesterCountFailed + $($PesterCount.FailedCount)
		$PesterCountPassed = $PesterCountPassed + $($PesterCount.PassedCount)
	}
	Start-Process -filePath "$script_dir\extent.exe" -ArgumentList "-d ""$ReportPath"" -o ""$ReportPath"" --merge -r v3html" -Wait -WindowStyle Hidden


	ForEach ($WebServer in $($jsondata.WebServer.Hosts).split(",")) {
		$SWTestrootfolder = "\\" + $WebServer + "\c$\" + $($jsondata.WebServer.localpath) + "\" + $folder
		If(!(test-path $SWTestrootfolder)) { New-Item -ItemType Directory -Force -Path $SWTestrootfolder }

		$SWTestComputerfolder = $SWTestrootfolder + "\" + $Computer
		If(test-path $SWTestComputerfolder) { remove-item "$SWTestComputerfolder" -Force -Recurse }
		If(!(test-path $SWTestComputerfolder)) { New-Item -ItemType Directory -Force -Path $SWTestComputerfolder }
		Copy-Item -Path "$ReportPath\*" -Destination "$SWTestComputerfolder" -Force -Recurse -Exclude "*.xml"
	}

	$URL4launch = "https://$DNSHost/Softwaretest/$Computer/index.html"

}

End {
	IF (!($SkipMail)) {
		IF ($PesterCountFailed -ne 0) {
			$emailSubject = ("WARNING: Software Installation Test failed with $PesterCountFailed Test(s) - Application Report for $computer " + (Get-Date -format R))
			$html = "<html><body><p>Softwaretest is running with Type $Type and and checking Softwareset $InstallationSet. Click here for more information to see which tests are failed (Passed Test $PesterCountPassed - Failed Test $PesterCountFailed) : <a href=`"$URL4launch`">Result of Software Installations $Computer</a></body></html>"
		}
		ELSE {
			$emailSubject = ("Software Installation Test passed $PesterCountPassed Test(s) - Application Report for $computer " + (Get-Date -format R))
			$html = "<html><body><p>Softwaretest is running with Type $Type and checking Softwareset $InstallationSet. Click here for more information : <a href=`"$URL4launch`">Result of Software Installations $Computer</a></body></html>"
		}

		IF ($TestMode) { $emailTo = $jsondata.Mail.emailToTest } ELSE { $emailTo = $jsondata.Mail.emailTo }

		$mailMessageParameters = @{
			From = $jsondata.Mail.emailFrom
			To = $emailTo
			Subject = $emailSubject
			SmtpServer = $jsondata.Mail.smtpServer
			Body = $html
			#Attachment =
		}
		Send-MailMessage @mailMessageParameters -BodyAsHtml

	}

	remove-item "$ReportPath\*" -Force -Recurse

}
