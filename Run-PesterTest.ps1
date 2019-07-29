<#

.SYNOPSIS
test installed Softwaresets

.DESCRIPTION
Running Powershell Pester to test the exiting executables on the XenApp Server
and send out the output to ReportUnit to generate a html report

.EXAMPLE


.NOTES
Author: Matthias Schlimm

		History

Last Change: 13.12.2017 MS: Script created
Last Change:

.LINK


#>
PARAM(
		[parameter(Mandatory=$false)][string]$ApplicationConfigFile
	)




Begin {


    $script_path = $MyInvocation.MyCommand.Path
	$script_dir = Split-Path -Parent $script_path
    $ApplicationFile = $script_dir + "\ConfigFiles\" + $ApplicationConfigFile

}
Process {

    Describe "Application Configuration files" {
        It "Test $ApplicationFile" {

        Test-Path $ApplicationFile | Should be $true
        }

    }

    $Applications = Get-Content "$ApplicationFile"
    ForEach ($Application in $Applications)
    {

		$Application=$Application.split(",")
		$fileversion = (get-item $($Application[1]) -erroraction silentlycontinue).VersionInfo.FileVersion
		Describe "$($Application[0]) - $fileversion" {

				It "Test Path $($Application[1])" {
					Test-Path $($Application[1]) | Should be $true
				}
		}
	}

}

End {


}