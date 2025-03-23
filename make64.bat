:: https://github.com/openssl/openssl/blob/master/NOTES-WINDOWS.md
@echo off
if /I NOT "%1" == "/ENV" setlocal
call "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvars64.bat"

set PATH=%~dp0\externals\nasm;%PATH%
call "%~dp0\externals\perl\portableshell.bat" /SETENV
:: copied from portableshell.bat (not called there)
perl -MConfig -e "print(qq{Perl executable: $^X\nPerl version   : $^V / $Config{archname}\n\n})" 2>nul
if ERRORLEVEL==1 (
	echo FATAL ERROR: 'perl' does not work; check if your strawberry pack is complete!
	goto ENDLOCAL
)
if /I "%1" == "/ENV" goto EOF

set INSTALL_DIR=%~dp0

pushd "%~dp0src"

set "_CONFIGBUILD="
if /I "%1" == "/BUILD" goto BUILD
if /I "%1" == "/INSTALL" goto INSTALL
if /I "%1" == "" set _CONFIGBUILD=yes

:CONFIG
echo ----------------------------------------------------------
perl Configure --prefix=%INSTALL_DIR% --openssldir=%INSTALL_DIR%ssl VC-WIN64A

if ERRORLEVEL==1 goto END
if NOT "%_CONFIGBUILD%" == "" goto BUILD
goto END

:BUILD
echo ----------------------------------------------------------
echo %CD%
:: NMAKE : fatal error U1065: invalid option '-'
:: The error "NMAKE : fatal error U1065: invalid option '-'" typically occurs when building applications using Microsoft Visual C++ tools, and it is often related to an improperly set MAKEFLAGS environment variable
set MAKEFLAGS=
nmake

if ERRORLEVEL==1 goto END
if NOT "%_CONFIGBUILD%" == "" goto INSTALL
goto END

:INSTALL
echo ----------------------------------------------------------
echo %CD%
set MAKEFLAGS=
nmake install

:END
popd

:ENDLOCAL
endlocal

:EOF
