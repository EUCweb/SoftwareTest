clear-host
$script_path = $MyInvocation.MyCommand.Path
$script_dir = Split-Path -Parent $script_path

$jsonFiles = (Get-childitem -Path $script_dir -Recurse -Filter "*.json").FullName

ForEach ($JF in $jsonFiles)
{
    Write-Host " --- --- --- --- --- --- ---" -ForegroundColor white
    Write-Host "Prcessing $JF" -ForegroundColor Magenta
    try {
        $validJson = Convertfrom-Json -inputobject (GC $JF -Raw) -ErrorAction Stop;
    } catch {
        $validJson = $false;
    }

    if (!($validJson -eq $false)) {
        Write-Host " + json formatting is correct" -ForegroundColor Green;
    } else {
        Write-Host " + json formatting is incorrect !! plesae check file $JF" -ForegroundColor Red -Backgroundcolor Black;
    }
}
Write-Host " --- --- --- FINISH --- --- --- ---" -ForegroundColor white
Write-Host "Press any key to continue..."
$a = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")