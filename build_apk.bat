@echo off
echo === Building Polar H10 ECG + Gemini AI Debug APK ===
if exist gradlew.bat (
    call gradlew.bat :app:assembleDebug
) else (
    gradle :app:assembleDebug
)

if %ERRORLEVEL% neq 0 (
    echo Build failed. Make sure JDK 17+ and ANDROID_HOME are configured, or use the included GitHub Actions workflow.
    exit /b %ERRORLEVEL%
)

set APK_PATH=app\build\outputs\apk\debug\app-debug.apk
echo.
echo APK successfully built at: %APK_PATH%
where adb >nul 2>nul
if %ERRORLEVEL% equ 0 (
    adb install -r "%APK_PATH%"
)
