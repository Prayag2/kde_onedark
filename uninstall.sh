#!/bin/bash

ROOT_UID=0

# Destination directory
if [ "$UID" -eq "$ROOT_UID" ]; then
  AURORAE_DIR="/usr/share/aurorae/themes"
  SCHEMES_DIR="/usr/share/color-schemes"
  WALLPAPER_DIR="/usr/share/wallpapers"
else
  AURORAE_DIR="$HOME/.local/share/aurorae/themes"
  SCHEMES_DIR="$HOME/.local/share/color-schemes"
  WALLPAPER_DIR="$HOME/.local/share/wallpapers"
fi

SRC_DIR=$(cd $(dirname $0) && pwd)

THEME_NAME=One-Dark

install() {
  local name=${1}

  local AURORAE_THEME="${AURORAE_DIR}/${name}"
  local SCHEMES_THEME="${SCHEMES_DIR}/${name}"
  local WALLPAPER_THEME="${WALLPAPER_DIR}/${name}"

  [[ -d ${AURORAE_THEME} ]] && rm -rfv ${AURORAE_THEME}
  [[ -d ${SCHEMES_THEME} ]] && rm -rfv ${SCHEMES_THEME}
  [[ -d ${WALLPAPER_THEME} ]] && rm -rfv ${WALLPAPER_THEME}
}

echo "Uninstalling '${THEME_NAME} kde themes'..."

install "${name:-${THEME_NAME}}"

echo "Uninstall finished..."
