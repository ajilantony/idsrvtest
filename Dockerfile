FROM microsoft/dotnet:1.0.0-preview2-sdk

RUN mkdir /app
WORKDIR /app

COPY project.json /app
RUN sudo dotnet restore
COPY . /app
RUN sudo dotnet build

EXPOSE 5000/tcp
RUN sudo dotnet run