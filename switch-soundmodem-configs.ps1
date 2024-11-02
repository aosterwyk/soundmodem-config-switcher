# Soundmodem Config Switcher v1.0.0 
# https://github.com/aosterwyk/soundmodem-config-switcher 

Write-Host "Switching working dir to $($PSScriptRoot)"
set-location $PSScriptRoot | out-null

$configs = Get-ChildItem -Filter "soundmodem.ini.*"

$count = 0
$configs | ForEach-Object {
    Write-Host "[$($count)] $($_.name)"
    $count++ 
}

$selectedConfig = Read-Host "Select a config"
# Write-Host $configs[$selectedConfig]
if(Test-Path $configs[$selectedConfig]) {
    if(Test-Path ".\soundmodem.ini") {
        Write-Host "Deleting soundmodem.ini"
        Remove-Item "soundmodem.ini"
    }
    else { Write-Host -ForegroundColor Yellow "soundmodem.ini does not exist" }
    
    Write-Host "Copying $($configs[$selectedConfig].name) to soundmodem.ini"
    Copy-Item $configs[$selectedConfig] -Destination ".\soundmodem.ini"
}
else { 
    Write-Host -ForegroundColor Red "$($selectedConfig) not found. Exiting." 
    exit 
}

Read-Host -prompt "Press enter to exit"
exit 
