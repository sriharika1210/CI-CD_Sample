Write-Host "Running Tests..."

# Run Unit Tests
dotnet test --configuration Release --collect:"XPlat Code Coverage" --results-directory "./TestResults"

Write-Host "Tests completed!"
