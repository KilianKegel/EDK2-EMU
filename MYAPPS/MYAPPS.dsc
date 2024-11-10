[Defines]
  PLATFORM_NAME                  = AppPkg
  PLATFORM_GUID                  = CDE000FE-6B86-4268-B4D8-0C8B9389A679
  PLATFORM_VERSION               = 0.01
  DSC_SPECIFICATION              = 0x00010006
  OUTPUT_DIRECTORY               = Build/AppPkg
  SUPPORTED_ARCHITECTURES        = IA32|X64|ARM|AARCH64
  BUILD_TARGETS                  = DEBUG|RELEASE|NOOPT
  SKUID_IDENTIFIER               = DEFAULT

!include edk2-libc/AppPkg/AppPkg.dsc

[LibraryClasses]
    TimerLib|PcAtChipsetPkg\Library\AcpiTimerLib\DxeAcpiTimerLib.inf
    LibExample102|MYAPPS\example102\build.inf
    LibExample105|MYAPPS\example105\build.inf

[Components]
#
# TODO: add MY APPLICATIONS here
#
    MYAPPS\example101\build.inf
    MYAPPS\example102\build.inf
    MYAPPS\example103\build.inf
    MYAPPS\example105\build.inf
    MYAPPS\example107\build.inf
    MYAPPS\example108\build.inf
