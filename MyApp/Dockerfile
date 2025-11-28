# STEP 1: Build Stage
FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build
WORKDIR /src

COPY .. .

RUN dotnet restore ./MyApp/MyApp.csproj


RUN dotnet publish ./MyApp/MyApp.csproj -c Release -o /app/publish

# STEP 2: Runtime Stage
FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS final
WORKDIR /app
COPY --from=build /app/publish .
ENTRYPOINT ["dotnet", "MyApp.dll"]
