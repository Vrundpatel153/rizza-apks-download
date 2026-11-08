# Rizza App — Android APK Downloads

Official release repository for the **Rizza Android App** (`.apk` builds).

---

## 📥 Quick Download

Click the link below to download the latest Android build:

👉 **[Download Latest APK (`rizza-app-latest.apk`)](https://github.com/Vrundpatel153/rizza-apks-download/raw/main/rizza-app-latest.apk)** *(~7.1 MB)*

Or browse via [GitHub Releases](https://github.com/Vrundpatel153/rizza-apks-download/releases).

---

## 📋 Available Releases (Max 10 Retained)

| Version | File | Date | Size | Download Link | Highlights |
|:---|:---|:---|:---|:---|:---|
| **v1.6.1 (Latest)** | `rizza-app-v1.6.1.apk` | 2026-11-08 | 7.2 MB | [Download](https://github.com/Vrundpatel153/rizza-apks-download/raw/main/apks/rizza-app-v1.6.1.apk) | Zero-overlap CTA on wizards, Fix Marketing Manager boot trap, Candidate Profile Hub (Tab 4), 4-tab capsule navbar |
| **v1.6.0** | `rizza-app-v1.6.0.apk` | 2026-11-08 | 7.2 MB | [Download](https://github.com/Vrundpatel153/rizza-apks-download/raw/main/apks/rizza-app-v1.6.0.apk) | Chapter 2-5 exact Figma/PDF design & true Obsidian OLED Black theme |
| **v1.5.0** | `rizza-app-v1.5.0.apk` | 2026-11-08 | 7.2 MB | [Download](https://github.com/Vrundpatel153/rizza-apks-download/raw/main/apks/rizza-app-v1.5.0.apk) | High-contrast white UI, floating capsule navbar, guided tour, safe-area insets |
| **v1.2.0** | `rizza-app-v1.2.0.apk` | 2026-11-08 | 7.1 MB | [Download](https://github.com/Vrundpatel153/rizza-apks-download/raw/main/apks/rizza-app-v1.2.0.apk) | Complete Candidate Journey, Pixel-perfect Experience Chapter, Flexbox Layout |
| **v1.0.0** | `rizza-app-v1.0.0.apk` | 2026-11-06 | 10.0 MB | [Download](https://github.com/Vrundpatel153/rizza-apks-download/raw/main/apks/rizza-app-v1.0.0.apk) | Initial base build |

> **Retention Policy**: Only the latest 10 builds are preserved. Older builds are automatically pruned when new releases are pushed.

---

## 🌟 What's New in v1.6.1

- **Fixed Startup Trap**: App boots directly into Candidate Dashboard (Screen 24) or Welcome Splash (Screen 5) — never trapped on Screen 101 ("Marketing Manager" external job ad) on fresh launches or reboots.
- **Zero Bottom Navbar Overlaps**: Scoped the modern floating capsule navbar strictly to the 4 main application hubs (`Home`, `Applications`, `Explore`, `Profile`). All 24 multi-step wizard screens (Screen 21 Profile Photo, Screen 20 Beyond CV Progress, Screen 17 Company Tenure, etc.) now have completely unobstructed, full-width "Continue" / "Submit" action buttons.
- **Dedicated Candidate Profile & Settings Hub (Screen 29)**:
  - 4th tab on the bottom capsule navbar.
  - Candidate identity (`Priya Sharma`), verified badges, email, phone, CV download/update.
  - Direct quick-links to Beyond the CV cards (Professional & Personal).
  - One-tap switchers for Theme Mode (High Contrast Light / Obsidian OLED Black) and Employer/Admin Portal.
- **Modern 4-Tab Android Capsule Navigation Bar**:
  - Home (`Screen 24`)
  - Applications (`Screen 25`)
  - Explore (`Screen 28`)
  - Profile (`Screen 29`)
- **Signed with APK Signature Schemes v1, v2 & v3** with universal Android 7.0+ to Android 15 compatibility.

---

## 📲 How to Install & Test on Android

1. **Download the APK**:
   - Open this repo on your phone's browser or transfer `rizza-app-latest.apk` to your phone via USB / Google Drive / WhatsApp.
2. **Enable Unknown Apps (First time only)**:
   - When prompted by Android, tap **Settings** → toggle **Allow from this source** (Chrome / Files).
3. **Install**:
   - Tap **Install** when the package installer opens.
4. **Launch**:
   - Tap **Open** to launch the Rizza app and test all candidate screens with full animations!

---

## ⚙️ Build Information
- **Framework**: React 18 + Vite 5 + Capacitor 8
- **Target OS**: Android 7.0+ (API Level 24 to 36)
- **Architecture**: Universal APK (v1 + v2 + v3 signed)
- **Package ID**: `com.rizza.app`
- **Main Codebase**: [Vrundpatel153/rizza-app-react-native](https://github.com/Vrundpatel153/rizza-app-react-native)
