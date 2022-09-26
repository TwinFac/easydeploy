@echo off
set KEY=%~1
set TENANT=%~2
set MANUFACTURER=%~3

setx TENANT %TENANT%
setx KEY %KEY%
setx MANUFACTURER %MANUFACTURER%

docker-compose up -d
