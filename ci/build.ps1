Write-Host "Starting Build..."

# Restore packages
dotnet restore

#Install Package
dotnet tool install -g dotnet-coverage

# Build solution
#dotnet build --configuration Release
docker build -f "./MyApp/Dockerfile" -t myapp .

Write-Host "Build completed successfully!"
