#!/usr/bin/env bash
set -e

echo "▶ Installing YouTube TV Firefox launcher"

# -------- Paths --------
REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
DESKTOP_DIR="$HOME/.local/share/applications"
ICON_PATH="$REPO_DIR/icon/youtube-tv-logo.svg"

PROFILE_NAME="TVBox-Zarvael"
SNAP_PROFILE_BASE="$HOME/snap/firefox/common/.mozilla/firefox"
APT_PROFILE_BASE="$HOME/.mozilla/firefox"

# -------- Detect Firefox --------
if command -v snap >/dev/null && snap list firefox &>/dev/null; then
  echo "✔ Detected Firefox (snap)"
  FIREFOX_CMD="snap run firefox"
  PROFILE_BASE="$SNAP_PROFILE_BASE"
elif command -v firefox >/dev/null; then
  echo "✔ Detected Firefox (apt)"
  FIREFOX_CMD="/usr/bin/firefox"
  PROFILE_BASE="$APT_PROFILE_BASE"
else
  echo "✖ Firefox not found. Install Firefox first."
  exit 1
fi

PROFILE_DIR="$PROFILE_BASE/$PROFILE_NAME"

# -------- Create profile if missing --------
if [ ! -d "$PROFILE_DIR" ]; then
  echo "▶ Creating Firefox profile: $PROFILE_NAME"
  mkdir -p "$PROFILE_BASE"
  $FIREFOX_CMD --no-remote --CreateProfile "$PROFILE_NAME $PROFILE_DIR"
else
  echo "✔ Firefox profile already exists"
fi

# -------- Install desktop entries --------
mkdir -p "$DESKTOP_DIR"

sed \
  -e "s|__FIREFOX__|$FIREFOX_CMD|g" \
  -e "s|__PROFILE__|$PROFILE_DIR|g" \
  -e "s|__ICON__|$ICON_PATH|g" \
  launchers/youtube-tv.desktop \
  > "$DESKTOP_DIR/youtube-tv.desktop"

sed \
  -e "s|__FIREFOX__|$FIREFOX_CMD|g" \
  -e "s|__PROFILE__|$PROFILE_DIR|g" \
  -e "s|__ICON__|$ICON_PATH|g" \
  launchers/youtube-tv-config.desktop \
  > "$DESKTOP_DIR/youtube-tv-config.desktop"

echo "✔ Desktop launchers installed"
echo "▶ Use 'YouTube TV (Configure)' first to install extensions"
