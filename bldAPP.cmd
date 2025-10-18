@echo off
cd %~dp0\edk2
echo copy %~dp0APPPGKTOOLS_DEF.txt %~dp0EDK2\Conf\tools_def.txt
copy %~dp0\APPPGKTOOLS_DEF.txt %~dp0\EDK2\Conf\tools_def.txt
call build.bat -a %MYEDK2ARCH% -p MYAPPS\MYAPPS.dsc -b DEBUG
echo copy /y %~dp0Build\AppPkg\DEBUG_VS2015x86\%MYEDK2ARCH%\exa*.efi %~dp0Build\EmulatorIA32\DEBUG_VS2015x86\%MYEDK2ARCH%
copy /y %~dp0Build\AppPkg\DEBUG_VS2015x86\%MYEDK2ARCH%\exa*.efi %~dp0Build\EmulatorIA32\DEBUG_VS2015x86\%MYEDK2ARCH%
cd %~dp0
echo ############################################################################
echo #
echo # enter "BLDEMU"          to build the original tianocore EDK2EMULATOR
echo # enter "BLDAPP"          to build the original tianocore AppPkg and MYAPPS
echo # enter "RUNEMU /DEBUG"   to start debugging of EDK2EMULATOR build
echo #
echo # enter "rd /s /q build" to clean previous build
echo #
echo ############################################################################

:EOF