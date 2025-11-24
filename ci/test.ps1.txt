Write-Host "Running Tests..."

# Run Unit Tests
dotnet test --configuration Release --collect:"XPlat Code Coverage"

Write-Host "Tests completed!"
