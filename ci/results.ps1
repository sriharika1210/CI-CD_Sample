Write-Host "=== Generating Coverage Report ==="

# Install ReportGenerator
dotnet tool install -g dotnet-reportgenerator-globaltool

$workspace = (Get-Location).Path

$testResults = "$workspace/TestResults"
$manualCoverage = "$workspace/manual_coverage.cobertura.xml"
$output = "$workspace/CoverageReport"

Write-Host "Looking for test results in: $testResults"
Write-Host "Looking for manual coverage file: $manualCoverage"

reportgenerator "-reports:$testResults/**/*.xml;$manualCoverage" "-targetdir:$output" "-reporttypes:Html"

Write-Host "Coverage Report generated!"
