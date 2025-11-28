param(
    [string]$workspace
)

Write-Host "Running Tests..."

# Build test Docker image
docker build -f Dockerfile.tests -t myapp-tests .

# Prepare folders
mkdir "$workspace/TestResults" -Force
mkdir "$workspace/CoverageReport" -Force

# Run Unit Tests inside Docker
docker run --rm `
    -v "$workspace/TestResults:/src/TestResults" `
    -v "$workspace/CoverageReport:/src/CoverageReport" `
    myapp-tests

Write-Host "Tests completed!"
