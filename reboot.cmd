@echo off
echo.
echo KILLING GTANetworkServer.exe
set serverkill="C:\_Data_Serveurs_\RootServeurGTA\ServeurGTA #1\"
cd /d %serverkill%
taskkill /im GTANetworkServer.exe /F
echo.
 
timeout 10
 
echo.
echo STARTING GTANetworkServer
:: start the server..
set serverpath="C:\_Data_Serveurs_\RootServeurGTA\ServeurGTA #1\"
cd /d %serverpath%
start "" "GTANetworkServer.exe"
echo.
echo SERVER STARTED 100%
 
cls
@exit