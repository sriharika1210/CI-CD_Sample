Write-Host "Running Tests..."

# Run Unit Tests
dotnet test --configuration Release --collect:"XPlat Code Coverage" --results-directory "./TestResults"

#Manual Tests
dotnet-coverage collect --output-format cobertura --output ../coverage.cobertura.xml --dotnet ../MyApp/bin/Debug/net9.0/MyApp.dll < ./inputs/ageInput.txt

Write-Host "Tests completed!"
