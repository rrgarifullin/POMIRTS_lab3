SHELL := cmd.exe
CYGWIN=nontsec
export PATH := C:\Python\Scripts\;C:\Python\;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Program Files (x86)\NVIDIA Corporation\PhysX\Common;C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\DAL;C:\Program Files\Intel\Intel(R) Management Engine Components\DAL;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\Program Files\Inkscape\bin;C:\Users\Общий\AppData\Local\Microsoft\WindowsApps;C:\Users\Общий\AppData\Local\Programs\Git\cmd;C:\ProgramData\Общий\GitHubDesktop\bin;C:\Users\Общий\AppData\Local\GitHubDesktop\bin;C:\Users\Общий\AppData\Local\Microsoft\WindowsApps;C:\Users\Общий\AppData\Local\Programs\Git\cmd;C:\ProgramData\Общий\GitHubDesktop\bin;C:\Users\Общий\AppData\Local\GitHubDesktop\bin
export AS_BUILD_MODE := BuildAndTransfer
export AS_VERSION := 4.5.2.102
export AS_COMPANY_NAME :=  
export AS_USER_NAME := Общий
export AS_PATH := A:/as/AS45
export AS_BIN_PATH := A:/as/AS45/bin-en
export AS_PROJECT_PATH := A:/as
export AS_PROJECT_NAME := SDCAxis
export AS_SYSTEM_PATH := A:/as/AS/System
export AS_VC_PATH := A:/as/AS45/AS/VC
export AS_TEMP_PATH := A:/as/Temp
export AS_CONFIGURATION := Real
export AS_BINARIES_PATH := A:/as/Binaries
export AS_GNU_INST_PATH := A:/as/AS45/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH := $(AS_GNU_INST_PATH)/bin
export AS_GNU_INST_PATH_SUB_MAKE := A:/as/AS45/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH_SUB_MAKE := $(AS_GNU_INST_PATH_SUB_MAKE)/bin
export AS_INSTALL_PATH := A:/as/AS45
export WIN32_AS_PATH := "A:\as\AS45"
export WIN32_AS_BIN_PATH := "A:\as\AS45\bin-en"
export WIN32_AS_PROJECT_PATH := "A:\as"
export WIN32_AS_SYSTEM_PATH := "A:\as\AS\System"
export WIN32_AS_VC_PATH := "A:\as\AS45\AS\VC"
export WIN32_AS_TEMP_PATH := "A:\as\Temp"
export WIN32_AS_BINARIES_PATH := "A:\as\Binaries"
export WIN32_AS_GNU_INST_PATH := "A:\as\AS45\AS\GnuInst\V4.1.2"
export WIN32_AS_GNU_BIN_PATH := "$(WIN32_AS_GNU_INST_PATH)\\bin" 
export WIN32_AS_INSTALL_PATH := "A:\as\AS45"

.suffixes:

ProjectMakeFile:

	@'$(AS_BIN_PATH)/BR.AS.AnalyseProject.exe' '$(AS_PROJECT_PATH)/SDCAxis.apj' -t '$(AS_TEMP_PATH)' -c '$(AS_CONFIGURATION)' -o '$(AS_BINARIES_PATH)'   -sfas -buildMode 'BuildAndTransfer'   

