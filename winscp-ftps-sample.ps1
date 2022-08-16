$logPath = $args[0]
$fromPath = $args[1]
$toPath = $args[2]
$userFtp = $args[3]
$passFtp = $args[4]
$hostFtp = $args[5]

& "C:\Program Files (x86)\WinSCP\WinSCP.com" `
  /log="${logPath}\WinSCP.log" /ini=nul `
  /command `
    "open ftps://${userFtp}:${passFtp}@${hostFtp}/" `
    "Put $fromPath $toPath" `
    "exit"

$winscpResult = $LastExitCode
if ($winscpResult -eq 0)
{
  Write-Host "Success"
}
else
{
  Write-Host "Error"
}

