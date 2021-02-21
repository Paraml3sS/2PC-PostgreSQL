FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build
WORKDIR /src

COPY . .
RUN dotnet restore AggregatorCompany.Api/AggregatorCompany.Api.csproj
WORKDIR /src/AggregatorCompany.Api
RUN dotnet publish -c Release -o ./output

FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
WORKDIR /src
COPY --from=build /src/AggregatorCompany.Api/output .

EXPOSE 80
ENTRYPOINT ["dotnet", "AggregatorCompany.Api.dll"]