Write-Host "Running Tests..."


# Manual Tests With Code Coverage
Get-Content "./inputs/ageInput.txt" | dotnet-coverage collect --output-format cobertura --output "../manual_coverage.cobertura.xml" -- dotnet "./MyApp/bin/Release/net9.0/MyApp.dll"


Write-Host "Tests completed!"
