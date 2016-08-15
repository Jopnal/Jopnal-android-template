call android update project --target "android-18" --subprojects --path .
call :CHECK_FAIL
call ant clean
call ant debug
call install_adb.bat
call run_adb.bat

:: /// check if the app has failed
:CHECK_FAIL
@echo off
call ndk-build
if NOT ["%errorlevel%"]==["0"] (
    pause
    exit /b %errorlevel%
)