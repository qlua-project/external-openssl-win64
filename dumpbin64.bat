@echo off
setlocal

call "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvars64.bat" > NUL
set DUMPBIN_DIR=nmake-dump-release-x64

pushd %~dp0

mkdir %DUMPBIN_DIR%

    dumpbin /headers bin\libcrypto-3-x64.dll > %DUMPBIN_DIR%\libcrypto-3-x64.dll.headers.txt
    dumpbin /exports bin\libcrypto-3-x64.dll > %DUMPBIN_DIR%\libcrypto-3-x64.dll.exports.txt
    dumpbin /dependents bin\libcrypto-3-x64.dll > %DUMPBIN_DIR%\libcrypto-3-x64.dll.dependents.txt
    dumpbin /imports bin\libcrypto-3-x64.dll > %DUMPBIN_DIR%\libcrypto-3-x64.dll.imports.txt

    dumpbin /headers bin\libssl-3-x64.dll > %DUMPBIN_DIR%\libssl-3-x64.dll.headers.txt
    dumpbin /exports bin\libssl-3-x64.dll > %DUMPBIN_DIR%\libssl-3-x64.dll.exports.txt
    dumpbin /dependents bin\libssl-3-x64.dll > %DUMPBIN_DIR%\libssl-3-x64.dll.dependents.txt
    dumpbin /imports bin\libssl-3-x64.dll > %DUMPBIN_DIR%\libssl-3-x64.dll.imports.txt

    dumpbin /headers lib\engines-3\capi.dll > %DUMPBIN_DIR%\capi.dll.headers.txt
    dumpbin /exports lib\engines-3\capi.dll > %DUMPBIN_DIR%\capi.dll.exports.txt
    dumpbin /dependents lib\engines-3\capi.dll > %DUMPBIN_DIR%\capi.dll.dependents.txt
    dumpbin /imports lib\engines-3\capi.dll > %DUMPBIN_DIR%\capi.dll.imports.txt

    dumpbin /headers lib\engines-3\loader_attic.dll > %DUMPBIN_DIR%\loader_attic.dll.headers.txt
    dumpbin /exports lib\engines-3\loader_attic.dll > %DUMPBIN_DIR%\loader_attic.dll.exports.txt
    dumpbin /dependents lib\engines-3\loader_attic.dll > %DUMPBIN_DIR%\loader_attic.dll.dependents.txt
    dumpbin /imports lib\engines-3\loader_attic.dll > %DUMPBIN_DIR%\loader_attic.dll.imports.txt

    dumpbin /headers lib\engines-3\padlock.dll > %DUMPBIN_DIR%\padlock.dll.headers.txt
    dumpbin /exports lib\engines-3\padlock.dll > %DUMPBIN_DIR%\padlock.dll.exports.txt
    dumpbin /dependents lib\engines-3\padlock.dll > %DUMPBIN_DIR%\padlock.dll.dependents.txt
    dumpbin /imports lib\engines-3\padlock.dll > %DUMPBIN_DIR%\padlock.dll.imports.txt

    dumpbin /headers lib\ossl-modules\legacy.dll > %DUMPBIN_DIR%\legacy.dll.headers.txt
    dumpbin /exports lib\ossl-modules\legacy.dll > %DUMPBIN_DIR%\legacy.dll.exports.txt
    dumpbin /dependents lib\ossl-modules\legacy.dll > %DUMPBIN_DIR%\legacy.dll.dependents.txt
    dumpbin /imports lib\ossl-modules\legacy.dll > %DUMPBIN_DIR%\legacy.dll.imports.txt

popd

endlocal
