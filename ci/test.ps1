param(
    [string]$workspace
)

Write-Host "Running Tests..."

# Build test Docker image
docker build -f MyApp.Tests/Dockerfile.tests -t myapp-tests .

# Prepare folders
mkdir "$workspace/TestResults" -Force
mkdir "$workspace/CoverageReport" -Force

# Run Unit Tests inside Docker
docker run --rm `
    -v "$workspace/TestResults:/src/TestResults" `
    -v "$workspace/CoverageReport:/src/CoverageReport" `
    myapp-tests

# Manual Tests With Code Coverage
Get-Content "./inputs/ageInput.txt" | dotnet-coverage collect --output-format cobertura --output "../manual_coverage.cobertura.xml" -- dotnet "./MyApp/bin/Release/net9.0/MyApp.dll"


Write-Host "Tests completed!"
