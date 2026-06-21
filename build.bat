@echo off
REM   ========================================================================
REM   build.bat -- 
REM   v: 
REM   ____
REM   NOTE|___________________________________________________________________
REM   
REM   ========================================================================

:: Build Types: Debug, Release, MinSizeRel, RelWithDebInfo
set BUILD_TYPE=Debug

pushd build
devenv niagara.sln /Build %BUILD_TYPE% /Project ALL_BUILD /ProjectConfig %BUILD_TYPE%

if NOT EXIST %BUILD_TYPE% mkdir %BUILD_TYPE%
copy /Y %BUILD_TYPE%\niagara.exe ..\bin\ >nul
copy /Y %BUILD_TYPE%\niagara.pdb ..\bin\ >nul
xcopy /Y /S /I spirv ..\bin\spirv >nul
popd
