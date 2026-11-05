# Polar H10 ECG + Direct In-App Gemini AI Analyzer (Android / Kotlin)

An Android app built with Kotlin, Jetpack Compose, the official **Polar BLE SDK (`8.5.0`)**, and the **Gemini API (`generateContent`)** that streams real-time **130 Hz electrocardiography (ECG)** data and **RR intervals** from a **Polar H10** chest strap, exports three synchronized files (`.csv`, `.json`, and a clinical-scale `25 mm/s` `.png` strip), and **analyzes the recording directly inside the app with Gemini**.

## 3 Easy Ways to Build the `.apk` File

### Option 1: Zero-Install Cloud APK Build via GitHub Actions (No Android Studio Needed)
This project includes a pre-configured GitHub Actions workflow at `.github/workflows/build-apk.yml`:
1. Create a new repository on GitHub and upload the extracted files from this ZIP archive.
2. Open the **Actions** tab in your GitHub repository and select **Build Android APK** -> **Run workflow** (it also runs automatically on push to `main`).
3. Wait ~2 minutes for the build to complete, then click **PolarH10-ECG-Gemini-debug-apk** under **Artifacts** to download `app-debug.apk` directly to your phone or computer and tap to install.

### Option 2: One-Command Local Build & Auto-Install (`build_apk.sh` / `build_apk.bat`)
If you have Gradle and the Android SDK installed locally:
- **macOS / Linux**: Run `./build_apk.sh` (builds `app/build/outputs/apk/debug/app-debug.apk` and automatically installs it via `adb install -r` if your phone is plugged in via USB).
- **Windows**: Double-click or run `build_apk.bat`.

### Option 3: Android Studio GUI
1. Open the extracted folder in **Android Studio** (JDK 17+).
2. Select **Build -> Build Bundle(s) / APK(s) -> Build APK(s)**.
3. Click **Locate** in the notification pop-up to grab `app/build/outputs/apk/debug/app-debug.apk`.
