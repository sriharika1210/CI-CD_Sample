Write-Host "=== Generating Coverage Report ==="

dotnet tool install -g dotnet-reportgenerator-globaltool

reportgenerator -reports:manual_coverage.cobertura.xml -targetdir:CoverageReport -reporttypes:Html

Write-Host "Coverage Report generated!"
