Write-Host "Starting Build..."

# Restore packages
dotnet restore

# Build solution
dotnet build --configuration Release

Write-Host "Build completed successfully!"
