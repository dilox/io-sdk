REM @echo off
REM pushd "%~dp0"

docker run --rm ubuntu date
REM cd iosdk
REM docker login -u iosdk -p %DOCKER_HUB_ACCESS_TOKEN%
REM go build -o iosdk.exe -ldflags "-X main.Version=master" .
REM iosdk init "C:\Users\runneradmin\importer" "pagopa/io-sdk-javascript" --io-apikey="123456"
REM iosdk start

REM :exit
REM popd
@echo on
