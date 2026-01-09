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

# ----------------------------------------------------------
# Create YouTube TV desktop launcher
# ----------------------------------------------------------

DESKTOP_FILE="$HOME/.local/share/applications/youtube-tv.desktop"
ICON_DIR="$HOME/.local/share/icons"
ICON_FILE="$ICON_DIR/youtube-tv.png"

mkdir -p "$HOME/.local/share/applications"
mkdir -p "$ICON_DIR"

# Download icon if missing
if [ ! -f "$ICON_FILE" ]; then
  wget -q -O "$ICON_FILE" \
  https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/YouTube_TV_logo_2017.svg/512px-YouTube_TV_logo_2017.svg.png
fi

# Create .desktop file
cat > "$DESKTOP_FILE" <<EOF
[Desktop Entry]
Name=YouTube TV
Comment=YouTube TV (Ad-free, TV UI)
Exec=/usr/bin/firefox --kiosk --no-remote --profile $HOME/snap/firefox/common/.mozilla/firefox/7zocu115.TVProfile https://www.youtube.com/tv
Icon=youtube-tv
Terminal=false
Type=Application
Categories=AudioVideo;Video;TV;
StartupWMClass=firefox
EOF

chmod +x "$DESKTOP_FILE"


#firefox   --kiosk   --no-remote   --profile ~/snap/firefox/common/.mozilla/firefox/7zocu115.TVProfile   https://www.youtube.com/tv
