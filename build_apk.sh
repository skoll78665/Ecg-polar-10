#!/usr/bin/env bash
set -e

echo "=== Building Polar H10 ECG + Gemini AI Debug APK ==="
if [ -f "./gradlew" ]; then
    chmod +x ./gradlew
    ./gradlew :app:assembleDebug
elif command -v gradle >/dev/null 2>&1; then
    gradle :app:assembleDebug
else
    echo "Error: Neither ./gradlew nor 'gradle' was found in PATH."
    echo "Tip: Push this folder to GitHub to build the APK automatically in the cloud via .github/workflows/build-apk.yml, or open in Android Studio."
    exit 1
fi

APK_PATH="app/build/outputs/apk/debug/app-debug.apk"
echo ""
echo "APK successfully built at: $APK_PATH"

if command -v adb >/dev/null 2>&1; then
    if adb get-state 1>/dev/null 2>&1; then
        echo "Connected Android device detected! Installing APK via adb..."
        adb install -r "$APK_PATH"
        echo "Installed! Open 'Polar H10 ECG + Gemini AI' on your phone."
    fi
fi
