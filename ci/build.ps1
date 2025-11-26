Write-Host "Starting Build..."

# Restore packages
dotnet restore

#Install Package
dotnet tool install -g dotnet-coverage

#Run solution
Get-Content "./inputs/ageInput.txt" | dotnet run --project MyApp

# Build solution
dotnet build --configuration Release

Write-Host "Build completed successfully!"
