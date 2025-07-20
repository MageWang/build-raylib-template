@echo off
git clone https://github.com/emscripten-core/emsdk.git
cd emsdk
call emsdk install latest
call emsdk activate latest
