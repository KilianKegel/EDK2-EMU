@echo off
rem
rem Copyright (c) 2019, Kilian Kegel. All rights reserved.<BR>
rem SPDX-License-Identifier: BSD-2-Clause-Patent
rem
pushd %WORKSPACE%\Build\Emulator%MYEDK2ARCH%\DEBUG_VS2015x86\%MYEDK2ARCH%
start %WORKSPACE%\Build\Emulator%MYEDK2ARCH%\DEBUG_VS2015x86\%MYEDK2ARCH%\WinHost.exe %1
popd