@echo off
echo.
echo KILLING GTANetworkServer.exe
set serverkill="GTANetworkServer_PATH\"
cd /d %serverkill%
taskkill /im GTANetworkServer.exe /F
echo.
 
timeout 10
 
echo.
echo STARTING GTANetworkServer
:: start the server..
set serverpath="GTANetworkServer_PATH\"
cd /d %serverpath%
start "" "GTANetworkServer.exe"
echo.
echo SERVER STARTED 100%
 
cls
@exit