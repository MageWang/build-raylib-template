Outfile "raylib_win_web_installer.exe"
InstallDir C:\raylib-web
Page directory
Page instfiles

Section "Install EMSDK"
  SetOutPath "$INSTDIR"
  File "install_emsdk.bat"
  ExecWait '"$INSTDIR\install_emsdk.bat"'
SectionEnd

Section "Install"
  SetOutPath $INSTDIR\ninja-bin
  File /r ".\ninja-bin\*.*"
  SetOutPath $INSTDIR\CMake
  File /r ".\CMake\*.*"
  SetOutPath $INSTDIR\raylib-game-template
  File /r ".\raylib-game-template\*.*"
  SetOutPath $INSTDIR
  File /r ".\build_cmake_web_setting.bat"
  File /r ".\build_cmake_web.bat"
SectionEnd

Section "PostInstall"
  WriteUninstaller "$INSTDIR\uninstall.exe"
SectionEnd

Section "Uninstall"
  ; Remove directories
  RMDir /r "$INSTDIR"
SectionEnd
