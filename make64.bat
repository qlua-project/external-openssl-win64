@echo off
setlocal
call "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvars64.bat"

set PATH=%~dp0\externals\nasm;%PATH%
call "%~dp0\externals\perl\portableshell.bat" /SETENV
:: copied from portableshell.bat (not called there)
perl -MConfig -e "print(qq{Perl executable: $^X\nPerl version   : $^V / $Config{archname}\n\n})" 2>nul
if ERRORLEVEL==1 (
	echo FATAL ERROR: 'perl' does not work; check if your strawberry pack is complete!
	goto END
)

set INSTALL_DIR=%~dp0
:: https://github.com/openssl/openssl/blob/master/NOTES-WINDOWS.md
pushd "%~dp0\src"
	perl Configure VC-WIN64A
	nmake
	nmake install --prefix %INSTALL_DIR%
popd

:END
endlocal
