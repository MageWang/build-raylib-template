@echo off
rem --- Web Build Script (Emscripten) ---

set "SCRIPT_DIR=%~dp0"

cd /d "%SCRIPT_DIR%emsdk"
call emsdk_env.bat

cd /d "%SCRIPT_DIR%"

if exist build_web rmdir /s /q build_web

echo.
echo Configuring project for Web with Emscripten...
"%SCRIPT_DIR%emsdk\upstream\emscripten\emcmake" "%SCRIPT_DIR%CMake\bin\cmake.exe" -S . -B build_web -G "Ninja" "-DCMAKE_MAKE_PROGRAM=%SCRIPT_DIR%ninja-bin\ninja.exe" -DPLATFORM=Web
