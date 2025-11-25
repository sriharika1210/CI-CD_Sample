Write-Host "Starting Build..."

# Restore packages
dotnet restore

#Run solution
Get-Content "./inputs/ageInput.txt" | dotnet run --project MyApp

# Build solution
dotnet build --configuration Release

Write-Host "Build completed successfully!"
