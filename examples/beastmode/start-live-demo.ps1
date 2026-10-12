# Start the existing hardware receiver and tunnel its loopback-only UI.
$ErrorActionPreference = 'Stop'
$sshOptions = @('-o','BatchMode=yes','-o','StrictHostKeyChecking=yes','-o','HostName=10.0.10.204','-o','HostKeyAlias=beastmode')
$check = & ssh @sshOptions beastmode 'curl --max-time 2 -fsS http://127.0.0.1:8732/api/frame' 2>$null
if ($LASTEXITCODE -ne 0) {
    $command = 'sudo -n systemd-run --unit=rtl8922-live-demo --collect --property=WorkingDirectory=/home/plaing/rtl8922-iq-research/soapy /bin/bash /home/plaing/rtl8922-iq-research/soapy/run-receiver.sh /usr/bin/python3 /home/plaing/rtl8922-iq-research/soapy/run-live-demo.py'
    & ssh @sshOptions beastmode $command
    if ($LASTEXITCODE -ne 0) { throw 'Could not start receiver. Inspect beastmode logs before retrying.' }
}
if (-not (Get-NetTCPConnection -LocalAddress 127.0.0.1 -LocalPort 8732 -State Listen -ErrorAction SilentlyContinue)) {
    $tunnelArgs = @('-N','-T') + $sshOptions + @('-o','ExitOnForwardFailure=yes','-o','ServerAliveInterval=15','-L','127.0.0.1:8732:127.0.0.1:8732','beastmode')
    $tunnel = Start-Process -WindowStyle Hidden -FilePath ssh -ArgumentList $tunnelArgs -PassThru
    Write-Host "SSH tunnel PID: $($tunnel.Id)"
}
Write-Host 'Live FFT: http://127.0.0.1:8732'
Write-Host 'Use Stop receiver & release card in the page to stop capture and restore settings.'
