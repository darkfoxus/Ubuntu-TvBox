#!/usr/bin/env bash

# ==========================================================
# YouTube TV ad-free setup using Firefox (Linux TV Box)
#
# Strategy:
# - Use Firefox with a dedicated TV profile
# - Install uBlock Origin to block ads
# - Spoof a Smart TV user-agent to force YouTube TV UI
#
# Notes:
# - Run Firefox WITHOUT --kiosk initially to configure the profile   
# firefox --no-remote   --profile ~/snap/firefox/common/.mozilla/firefox/7zocu115.TVProfile   https://www.youtube.com/tv
# - Install extensions:
#     • uBlock Origin
#     • User-Agent Switcher (custom UA required)
#
# Tested working User-Agent:
#   Roku / DVP-9.10 (519.10E04111A)
#
# Once configured, launch Firefox in --kiosk mode
#  - firefox   --kiosk   --no-remote   --profile ~/snap/firefox/common/.mozilla/firefox/7zocu115.TVProfile   https://www.youtube.com/tv
# ==========================================================
firefox   --kiosk   --no-remote   --profile ~/snap/firefox/common/.mozilla/firefox/7zocu115.TVProfile   https://www.youtube.com/tv
