@echo off
cd %~dp0\edk2
echo copy %~dp0EMUPGKTOOLS_DEF.txt %~dp0EDK2\Conf\tools_def.txt
copy %~dp0\EMUPGKTOOLS_DEF.txt %~dp0\EDK2\Conf\tools_def.txt
call build.bat -a %MYEDK2ARCH% -p %WORKSPACE%\overrides\EmulatorPkg\EmulatorPkg.dsc -b DEBUG
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