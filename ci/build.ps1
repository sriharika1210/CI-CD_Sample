Write-Host "Starting Build..."

# Restore packages
dotnet restore

#Run solution
- run: echo 25 | dotnet run --project MyApp

# Build solution
dotnet build --configuration Release

Write-Host "Build completed successfully!"
