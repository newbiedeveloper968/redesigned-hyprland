#!/bin/bash

set -e  # Exit on error

REPO_URL="https://github.com/newbiedeveloper968/redesigned-hyprland"
CLONE_DIR="$HOME/.dotfiles_temp"
CONFIGS=(hypr waybar mako alacritty fish gtk-3.0 kitty nvim rofi)
WALLPAPER_SRC="wallpaper"
WALLPAPER_DEST="$HOME/Pictures/wallpapers"
HYPER_CONF="$HOME/.config/hypr/hyprland.conf"

DEPENDENCIES=(git mako waybar hyprland hyprpaper code nvim pip3)

echo "🔍 Checking dependencies..."
for dep in "${DEPENDENCIES[@]}"; do
    if ! command -v "$dep" &>/dev/null; then
        echo "❌ Missing dependency: $dep"
        MISSING=true
    fi
done


if [ "$MISSING" = true ]; then
    echo "⚠️  Please install the missing dependencies and rerun this script."
    exit 1
fi

# 2. Clone Repo
echo "📦 Cloning dotfiles from $REPO_URL..."
git clone "$REPO_URL" "$CLONE_DIR"

# 3. Copy Config Folders
for config in "${CONFIGS[@]}"; do
    SRC="$CLONE_DIR/$config"
    DEST="$HOME/.config/$config"

    if [ ! -d "$SRC" ]; then
        echo "⚠️  Skipping $config — folder not found in repo."
        continue
    fi

    if [ -d "$DEST" ]; then
        echo "⚠️  $DEST already exists."
        echo "Options: [o]verwrite, [b]ackup, [s]kip?"
        read -rp "(o/b/s): " choice

        case "$choice" in
            o|O)
                rm -rf "$DEST"
                echo "❗ Overwritten $DEST"
                ;;
            b|B)
                mv "$DEST" "$DEST.bak"
                echo "🗃️  Backup created at $DEST.bak"
                ;;
            s|S)
                echo "⏭️  Skipped $DEST"
                continue
                ;;
            *)
                echo "❓ Invalid option. Skipping $DEST."
                continue
                ;;
        esac
    fi

    cp -r "$SRC" "$DEST"
    echo "✅ Installed $config"
done

# 4. Install Wallpapers
if [ -d "$CLONE_DIR/$WALLPAPER_SRC" ]; then
    echo "🖼️  Installing wallpapers..."
    mkdir -p "$WALLPAPER_DEST"
    cp -r "$CLONE_DIR/$WALLPAPER_SRC/"* "$WALLPAPER_DEST/"
    echo "✅ Wallpapers copied to $WALLPAPER_DEST"
fi

# 5. Add mako to autostart
echo "⚙️  Ensuring mako auto-starts in Hyprland..."
mkdir -p "$(dirname "$HYPER_CONF")"
touch "$HYPER_CONF"

if ! grep -q 'exec-once\s*=\s*mako' "$HYPER_CONF"; then
    echo 'exec-once = mako' >> "$HYPER_CONF"
    echo "✅ Added 'exec-once = mako' to $HYPER_CONF"
else
    echo "✔️  Mako is already set to auto-start."
fi

# 6. Clean up
rm -rf "$CLONE_DIR"
echo "🎉 Done! Hyprland is now riced and mako is ready."
