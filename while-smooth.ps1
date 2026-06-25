function Rem-Smoothwall {
while ($true){
# 1. Close Microsoft Edge to release locks on browser files
#Stop-Process -Name "msedge" -Force -ErrorAction SilentlyContinue
# 2. Remove the extension from Edge's forced extension installation lists
Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Edge\ExtensionInstallForcelist" -Name "dlcaglefdlidioooijnigjhfcndlncfp" -ErrorAction SilentlyContinue
Remove-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Edge\ExtensionInstallForcelist" -Name "dlcaglefdlidioooijnigjhfcndlncfp" -ErrorAction SilentlyContinue
# 3. Delete any standalone registry management configurations for this extension
Remove-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Edge\3rdparty\extensions\dlcaglefdlidioooijnigjhfcndlncfp" -Recurse -ErrorAction SilentlyContinue
Remove-Item -Path "HKCU:\SOFTWARE\Policies\Microsoft\Edge\3rdparty\extensions\dlcaglefdlidioooijnigjhfcndlncfp" -Recurse -ErrorAction SilentlyContinue
# 4. Remove cached extension local source data from the user profile
$UserEdgeExtensions = "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Default\Extensions\dlcaglefdlidioooijnigjhfcndlncfp"
if (Test-Path $UserEdgeExtensions) { 
    Remove-Item -Path $UserEdgeExtensions -Recurse -Force
}
Write-Host "Press controlC to exit the program" -ForegroundColor Green
Start-Sleep -Milliseconds 100
}}

Rem-Smoothwall