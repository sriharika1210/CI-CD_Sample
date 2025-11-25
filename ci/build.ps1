Write-Host "Starting Build..."

# Restore packages
dotnet restore

#Run solution
dotnet run --project MyApp < "./inputs/ageInput.txt"

# Build solution
dotnet build --configuration Release

Write-Host "Build completed successfully!"
