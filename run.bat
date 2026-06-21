@echo off
REM   ========================================================================
REM   run.bat -- 
REM   v: 
REM   ____
REM   NOTE|___________________________________________________________________
REM   
REM   ========================================================================

pushd bin
start niagara.exe ..\data\kitten.obj
::start niagara.exe ..\data\bistro\bistro.gltf
popd
