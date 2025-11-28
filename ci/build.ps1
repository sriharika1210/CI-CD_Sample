Write-Host "Starting Build..."

# Restore packages
dotnet restore

#Install Package
dotnet tool install -g dotnet-coverage

# Build solution
#dotnet build --configuration Release
docker build -t myapp .

Write-Host "Build completed successfully!"
