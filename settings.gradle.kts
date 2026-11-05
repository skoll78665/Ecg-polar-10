pluginManagement {
    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
    }
}

dependencyResolutionManagement {
    repositoriesMode.set(RepositoriesMode.FAIL_ON_PROJECT_REPOS)
    repositories {
        google()
        mavenCentral()
        // Required for Polar BLE SDK
        maven { url = uri("https://jitpack.io") }
    }
}

rootProject.name = "PolarH10EcgAiExporter"
include(":app")
