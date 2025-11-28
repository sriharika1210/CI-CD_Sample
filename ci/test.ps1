Write-Host "Running Tests..."

# Build test Docker image
docker build -f Dockerfile.tests -t myapp-tests .

# Run Unit Tests
#dotnet test --configuration Release --collect:"XPlat Code Coverage" --results-directory "./TestResults"
mkdir TestResults
        mkdir CoverageReport
        docker run --rm \
          -v ${{ github.workspace }}/TestResults:/src/TestResults \
          -v ${{ github.workspace }}/CoverageReport:/src/CoverageReport \
          myapp-tests

# Manual Tests With Code Coverage
Get-Content "./inputs/ageInput.txt" | dotnet-coverage collect --output-format cobertura --output "../manual_coverage.cobertura.xml" -- dotnet "./MyApp/bin/Release/net9.0/MyApp.dll"


Write-Host "Tests completed!"
