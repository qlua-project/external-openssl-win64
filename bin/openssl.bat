@echo off

set "BASE_DIR=%~dp0"
set "OPENSSL_CONF=%BASE_DIR%..\ssl\openssl.cnf"
set "OPENSSL_MODULES=%BASE_DIR%..\lib\ossl-modules"
set "OPENSSL_ENGINES=%BASE_DIR%..\lib\engines-3"

"%BASE_DIR%openssl.exe" %*