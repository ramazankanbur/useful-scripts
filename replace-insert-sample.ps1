$appSettingFile = Get-Content .\appsettings.json | Out-String

if ($appSettingFile -like "*HideLoginIcon*") { 
   ($appSettingFile) | Foreach-Object {
    $_ -Replace '"HideLoginIcon": "false",', '"HideLoginIcon": "true",'  `
      -Replace '"HideLoginIcon":"false",', '"HideLoginIcon": "true",'  } | Set-Content  .\appsettings.json
}
else {
  $indexOfCurly = $appSettingFile.IndexOf('{')+1;
  $appSettingFile = $appSettingFile.Insert($indexOfCurly, '"HideLoginIcon": "true",') 
  $appSettingFile | Out-File -FilePath .\appsettings.json
}
