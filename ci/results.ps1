Write-Host "=== Generating Coverage Report ==="

dotnet tool install -g dotnet-reportgenerator-globaltool

reportgenerator -reports:"*.xml" -targetdir:"CoverageReport" -reporttypes:"Html"

Write-Host "Coverage Report generated!"
