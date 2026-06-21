@echo off
REM   ========================================================================
REM   debug.bat -- 
REM   v: 
REM   ____
REM   NOTE|___________________________________________________________________
REM   
REM   ========================================================================

pushd bin
dir
start raddbg.exe --user:niagara.radusr --project:niagara.radprj --auto_run --quit_after_success niagara.exe ..\data\kitten.obj
popd
