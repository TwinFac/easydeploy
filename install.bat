@echo off
set KEY=%1
set TENANT=%2
set MANUFACTURER=%3

set TENANT=%TENANT%
set KEY=%KEY%
set MANUFACTURER=%MANUFACTURER%

docker-compose up -d
