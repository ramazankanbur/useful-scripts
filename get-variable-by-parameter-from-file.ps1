$filePath=$args[0]
$variableName=$args[1]

Get-Content $filePath | Foreach-Object{  
 $var = $_.Split(':')   
New-Variable -Force -Name $var[0] -Value $var[1] }
 
Write-Output (Get-Variable((Get-Variable "variableName")).Value).Value
