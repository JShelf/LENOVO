if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }
$GraphicsCardId = Get-PnpDevice -FriendlyName "NVIDIA GeForce GTX 1050"
Disable-PnpDevice -InstanceId $GraphicsCardId.InstanceId 
Enable-PnpDevice -InstanceId $GraphicsCardId.InstanceId 