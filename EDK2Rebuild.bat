echo off
rem
rem NOTE: The EDK2 Buildtools must be translated in 32Bit
rem
title EDK2REBUILD

pushd .
call Tools\EWDK_1703\LaunchBuildEnv.cmd x86
popd

title EDK2REBUILD

pushd edk2
set VS2015=1
dir edksetup.bat
set LIB=%~dp0Tools\EWDK_1703\Program Files\Microsoft Visual Studio 14.0\VC\lib\;%~dp0Tools\EWDK_1703\Program Files\Windows Kits\10\Lib\10.0.15063.0\um\x86\;%~dp0Tools\EWDK_1703\Program Files\Windows Kits\10\Lib\10.0.15063.0\ucrt\x86\
call edksetup.bat Rebuild
popd
echo 1 > %TEMP%\EDK2REBUILD
