# Raspberry Pi 3 Open‑Source TV Box

This repository documents a **fully open‑source TV box / game‑streaming setup** for the **Raspberry Pi 3 B**, focused on **maximum performance**, **controller support**, and **no desktop environment**.

The system is built on **Raspberry Pi OS Lite (headless)** and uses **Kodi as the main UI**, with **Moonlight launched as an external application**, similar in spirit to LibreELEC but with full user control.

---

## 🎯 Goals

- No desktop environment (no X11 / Wayland)
- Lowest possible latency on Raspberry Pi 3
- Living‑room friendly (10‑foot UI)
- Full controller support (USB & Bluetooth)
- Open‑source stack
- Ad‑free YouTube experience
- Jellyfin used strictly as a **client**

---

## 🧱 Architecture Overview

- **Base OS:** Raspberry Pi OS Lite (32‑bit)
- **Main UI:** Kodi (GBM / DRM mode)
- **Game Streaming:** Moonlight Embedded
- **Media Streaming:** Jellyfin (Kodi add‑on)
- **Online Video:** YouTube (Kodi add‑on)
- **Input:** USB & Bluetooth game controllers

Kodi acts as the **primary launcher**, and Moonlight is started from within Kodi as an external application. Exiting Moonlight returns the user to Kodi.

---

## 🧩 System Phases

### Phase 0 — Hardware & Network Preparation

Ensure the Raspberry Pi 3 B is used with:
- Wired Ethernet (recommended)
- HDMI display
- Game controller (USB or Bluetooth)
- Adequate GPU memory allocation

This phase focuses on physical stability and network reliability.

---

### Phase 1 — Base Operating System

Install **Raspberry Pi OS Lite (32‑bit)**:
- No desktop packages
- Console‑only boot
- SSH optional but recommended

This provides a lightweight and stable Debian base with minimal overhead.

---

### Phase 2 — System Configuration

Basic system setup:
- Firmware and package updates
- GPU memory tuning
- Bluetooth and audio readiness
- Network availability at boot

The system remains headless throughout this phase.

---

### Phase 3 — Kodi Installation (Standalone Mode)

Kodi is installed and run in **standalone GBM/DRM mode**:
- No window manager
- No desktop compositor
- Fullscreen direct rendering

Kodi becomes the main user interface of the system.

---

### Phase 4 — Auto‑Boot into Kodi

System services are configured so that:
- The Raspberry Pi boots directly into Kodi
- No login prompt or shell is shown

This makes the device behave like a dedicated TV box.

---

### Phase 5 — Controller Support

Controllers are configured at the system level:
- USB controllers work out of the box
- Bluetooth controllers are paired once and reused

The same controllers are used seamlessly in:
- Kodi menus
- Moonlight streaming sessions
- Media playback

---

### Phase 6 — Jellyfin Client Integration

Kodi is configured as a **Jellyfin client only**:
- No transcoding on the Raspberry Pi
- Direct Play media formats

The Jellyfin server runs on a separate, more powerful machine.

---

### Phase 7 — YouTube Integration (Ad‑Free)

YouTube is accessed through Kodi:
- Official YouTube add‑on
- API‑based playback (no web player)
- No YouTube ads

Optional enhancements include sponsor and intro skipping.

---

### Phase 8 — Moonlight Embedded Installation

Moonlight is installed as a standalone streaming client:
- Runs directly on DRM
- No desktop dependencies
- Low‑latency input and video

The host PC performs all encoding work.

---

### Phase 9 — Launching Moonlight from Kodi (Pattern A)

Moonlight is launched from Kodi using a launcher entry:
- Kodi pauses
- Moonlight takes exclusive control
- Exiting Moonlight returns to Kodi

This creates a console‑like experience while keeping Kodi as the home UI.

---

### Phase 10 — Performance & Stability Tuning

Final adjustments:
- GPU and memory tuning
- Disable unnecessary services
- Input latency optimization

The result is the highest achievable performance for a Raspberry Pi 3 used as a TV box.

---

## ✅ Final Result

- Boots directly into Kodi
- No desktop overhead
- Controller‑driven navigation
- Ad‑free YouTube
- Jellyfin media playback
- Moonlight game streaming
- Fully open‑source stack

This setup represents the **maximum practical performance** achievable on a Raspberry Pi 3 B for media and game streaming.

---

## 📌 Notes

This repository focuses on **architecture and design**. Implementation details, scripts, and configuration files can be added incrementally.

---

## 📜 License

This project is intended for educational and personal use. All referenced software retains its respective licenses.
