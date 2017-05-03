FROM microsoft/aspnet:1.0.0-rc1-update1-coreclr

MAINTAINER Bayron Lara

COPY    . /app
WORKDIR /app

RUN ["dnu", "restore"]

EXPOSE 5000

ENTRYPOINT ["dnx", "web"]