# YouTube TV (No-Ads) – Firefox Kiosk Launcher for Linux

This project provides a simple installer that creates **desktop launchers** to run
YouTube TV (`https://www.youtube.com/tv`) in **Firefox kiosk mode**, with **ad blocking**
and **TV-style navigation**.

It works on:
- Ubuntu / Debian (APT Firefox)
- Any distro using **Snap Firefox**

---

## ✨ Features

- 📺 Fullscreen YouTube TV interface
- 🚫 Ad-free playback (uBlock Origin)
- 🕹️ TV-friendly UI using a Roku user agent
- 🔁 Safe to re-run installer (idempotent)
- 🖥️ Two launchers:
  - **YouTube TV** – normal kiosk mode
  - **YouTube TV (Configure)** – full browser UI to install extensions

---

## 📦 What the installer does

When you run `install.sh`, it will:

1. Detect whether Firefox is installed via **Snap** or **APT**
2. Create a **dedicated Firefox profile** for YouTube TV
3. Install **two desktop launchers**
4. Leave extension installation to the user (required by Firefox)

---

## 🚀 Installation

```bash
git clone https://github.com/YOUR_USERNAME/youtube-tv-firefox
cd youtube-tv-firefox
chmod +x install.sh
./install.sh
```

After installation, you will see two new apps in your system menu:

- **YouTube TV**
- **YouTube TV (Configure)**

---

## ⚠️ IMPORTANT: First-time setup (required)

Firefox **does not allow extensions to be installed automatically** for security reasons.

You must do this **once** using the **Configure launcher**.

---

## 🛠 Step 1: Open configuration mode

Launch:

> **YouTube TV (Configure)**

This opens Firefox **with window controls**, mouse support, and full menus.

---

## 🧱 Step 2: Install uBlock Origin (Ad Blocker)

1. Go to:
   ```
   https://addons.mozilla.org/firefox/addon/ublock-origin/
   ```
2. Click **Add to Firefox**
3. Accept permissions

---

## 🌐 Step 3: Install User-Agent Switcher

Recommended extension:
```
https://addons.mozilla.org/firefox/addon/user-agent-string-switcher/
```

---

## 📺 Step 4: Add the Roku User Agent

Add this **custom user agent**:

```
Roku/DVP-9.10 (519.10E04111A)
```

Apply it globally or for:
```
youtube.com
youtube.com/tv
```

---

## ▶️ Normal usage

From now on, launch:

> **YouTube TV**

---

## 🔄 Re-running the installer

Safe to re-run:
- Desktop files updated
- Profile preserved
- Extensions untouched

---

## 📜 License

MIT