FROM mcr.microsoft.com/dotnet/core/sdk:3.1.301

ENV PATH="${PATH}:/root/.dotnet/tools"
RUN apt-get -qq update && apt-get -qq -y install openjdk-11-jre > /dev/null \
    && dotnet tool install --global dotnet-sonarscanner \
    && dotnet tool install --global dotnet-roundhouse --version 1.3.0
