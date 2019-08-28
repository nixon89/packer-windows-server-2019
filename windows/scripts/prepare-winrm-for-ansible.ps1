Write-Host "Preparing WinRM for Ansible..."
Set-Location C:
$url = "https://raw.githubusercontent.com/ansible/ansible/devel/examples/scripts/ConfigureRemotingForAnsible.ps1"
$file = "$env:temp\ConfigureRemotingForAnsible.ps1"
(New-Object -TypeName System.Net.WebClient).DownloadFile($url, $file)
powershell.exe -ExecutionPolicy ByPass -File $file -ForceNewSSLCert -CertValidityDays 3650 -SkipNetworkProfileCheck -GlobalHttpFirewallAccess -EnableCredSSP