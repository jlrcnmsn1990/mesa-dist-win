; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Mesa3D software rendering drivers for Windows"
#define MyAppVersion "18.1.2.600-1"
#define MyAppPublisher "Pal100x"
#define MyAppURL "https://github.com/pal1000/mesa-dist-win"
#define MyAppExeName "mesa-{#MyAppVersion}-setup.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{8EFCCC7F-5BAF-4651-A040-EFB13C59EF60}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
ArchitecturesInstallIn64BitMode=x64
DefaultDirName={pf}\{#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=LICENSE
OutputDir=bin\
OutputBaseFilename=mesa-{#MyAppVersion}-setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "bin\x86\opengl32.dll"; DestDir: "{app}\x86"; Flags: ignoreversion
Source: "bin\x86\libglapi.dll"; DestDir: "{app}\x86"; Flags: ignoreversion
Source: "bin\x86\libGLESv1_CM.dll"; DestDir: "{app}\x86"; Flags: ignoreversion
Source: "bin\x86\libGLESv2.dll"; DestDir: "{app}\x86"; Flags: ignoreversion
Source: "bin\x86\osmesa-gallium\osmesa.dll"; DestDir: "{app}\x86\osmesa-gallium"; Flags: ignoreversion
Source: "bin\x86\osmesa-swrast\osmesa.dll"; DestDir: "{app}\x86\osmesa-swrast"; Flags: ignoreversion
Source: "bin\x86\graw.dll"; DestDir: "{app}\x86"; Flags: ignoreversion
Source: "bin\x64\opengl32.dll"; DestDir: "{app}\x64"; Flags: ignoreversion; Check: Is64BitInstallMode
Source: "bin\x64\libglapi.dll"; DestDir: "{app}\x64"; Flags: ignoreversion; Check: Is64BitInstallMode
Source: "bin\x64\libGLESv1_CM.dll"; DestDir: "{app}\x64"; Flags: ignoreversion; Check: Is64BitInstallMode
Source: "bin\x64\libGLESv2.dll"; DestDir: "{app}\x64"; Flags: ignoreversion; Check: Is64BitInstallMode
Source: "bin\x64\swrAVX.dll"; DestDir: "{app}\x64"; Flags: ignoreversion; Check: Is64BitInstallMode
Source: "bin\x64\swrAVX2.dll"; DestDir: "{app}\x64"; Flags: ignoreversion; Check: Is64BitInstallMode
Source: "bin\x64\osmesa-gallium\osmesa.dll"; DestDir: "{app}\x64\osmesa-gallium"; Flags: ignoreversion; Check: Is64BitInstallMode
Source: "bin\x64\osmesa-swrast\osmesa.dll"; DestDir: "{app}\x64\osmesa-swrast"; Flags: ignoreversion; Check: Is64BitInstallMode
Source: "bin\x64\graw.dll"; DestDir: "{app}\x64"; Flags: ignoreversion; Check: Is64BitInstallMode
Source: "bin\perappdeploy.cmd"; DestDir: "{app}"
Source: "bin\systemwidedeploy.cmd"; DestDir: "{app}"
Source: "bin\readme.txt"; DestDir: "{app}"

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[UninstallDelete]
Type: files; Name: "{app}\x86\opengl32.dll"
Type: files; Name: "{app}\x86\libglapi.dll"
Type: files; Name: "{app}\x86\libGLESv1_CM.dll"
Type: files; Name: "{app}\x86\libGLESv2.dll"
Type: files; Name: "{app}\x86\graw.dll";
Type: files; Name: "{app}\x86\osmesa-gallium\osmesa.dll"
Type: files; Name: "{app}\x86\osmesa-swrast\osmesa.dll"
Type: files; Name: "{app}\x64\opengl32.dll"; Check: Is64BitInstallMode
Type: files; Name: "{app}\x64\libglapi.dll"; Check: Is64BitInstallMode
Type: files; Name: "{app}\x64\libGLESv1_CM.dll"; Check: Is64BitInstallMode
Type: files; Name: "{app}\x64\libGLESv2.dll"; Check: Is64BitInstallMode
Type: files; Name: "{app}\x64\swrAVX.dll"; Check: Is64BitInstallMode
Type: files; Name: "{app}\x64\swrAVX2.dll"; Check: Is64BitInstallMode
Type: files; Name: "{app}\x64\osmesa-gallium\osmesa.dll"; Check: Is64BitInstallMode
Type: files; Name: "{app}\x64\osmesa-swrast\osmesa.dll"; Check: Is64BitInstallMode
Type: files; Name: "{app}\x64\graw.dll"; Check: Is64BitInstallMode
Type: files; Name: "{app}\perappdeploy.cmd"
Type: files; Name: "{app}\systemwidedeploy.cmd"
Type: files; Name: "{app}\readme.txt"

[Icons]
Name: "{commondesktop}\Mesa3D per-application deployment utility"; Filename: "{app}\quickdeploy.cmd"
Name: "{commondesktop}\Mesa3D system-wide deployment utility"; Filename: "{app}\systemwidedeploy.cmd"

[Run]
Filename: "{app}\readme.txt"; Description: "View the README file"; Flags: postinstall shellexec skipifsilent