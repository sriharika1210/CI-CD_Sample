Write-Host "Running Tests..."

# Run Unit Tests
dotnet test --configuration Release --collect:"XPlat Code Coverage" --results-directory "./TestResults"

# Manual Tests With Code Coverage
Get-Content "../inputs/ageInput.txt" | dotnet-coverage collect --output-format cobertura --output "../coverage.cobertura.xml" -- dotnet "../MyApp/bin/Debug/net9.0/MyApp.dll"


Write-Host "Tests completed!"
