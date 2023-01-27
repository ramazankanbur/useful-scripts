
$REPORTS_DIR=$args[0]

if($REPORTS_DIR -eq $null){
	Write-Output "You have to provide the directory containing your coverage reports."
	Exit 2
}

Get-ChildItem "$REPORTS_DIR\*\*.xml" | 
Foreach-Object {
    [XML]$content = Get-Content $_.FullName
}

$linerate = [float]$content.coverage.'line-rate'
$coverage = $linerate *100
$total_coverage = [math]::round($coverage, 2);
Write-Output "TOTAL_COVERAGE=$total_coverage"
Exit 0