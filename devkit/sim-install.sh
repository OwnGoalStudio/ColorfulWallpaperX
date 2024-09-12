#!/bin/sh

set -e
set -o pipefail

cd $(dirname $0)/..

SIM_ROOT=$(devkit/sim-root.sh)
PRESETS_ROOT=$SIM_ROOT/Library/ColorfulWallpaperX/Presets
echo "Install to $PRESETS_ROOT"

mkdir -p $PRESETS_ROOT
cp -r layout/var/mobile/Library/ColorfulWallpaperX/Presets/*.plist $PRESETS_ROOT
