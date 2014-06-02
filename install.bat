@echo off
echo [INFO] Install Libra's archetype to local repository.

cd %~dp0
call mvn clean install
pause