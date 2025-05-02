# Redesigned Hyprland
#### DIRECTORY BASED ON: pyc/redesigned-hyprland/
yay -S hyprland hyprlock hypridle hyprpaper rofi waybar swaync hyprshot waybar ttf-font-awesome flatpak visual-studio-code-bin brightnessctl bluetui git alacritty neovim fastfetch fish python-pip notion-desktop imv

## SETTING UP GIT AND CLONING MY HYPRLAND REPO
1) git config --global user.name "newbiedeveloper968" && git config --global user.email "newbiedeveloper968@gmail.com" && ssh-keygen -t ed25519 -C "newbiedeveloper968@gmail.com" 
2) nvim ~/.ssh/id_ed25519.pub - copy that and create a new gpg token.
3) git clone git@github.com:newbiedeveloper968/redesigned-hyprland.git

## TURNING ON BLUETOOTH
- systemctl enable bluetooth.service && systemctl start bluetooth.service

## POST
1) rm -r .config/hypr && cp -r pyc/redesigned-hyprland/hypr .config/
2) rm -r .config/kitty && cp -r pyc/redesigned-hyprland/kitty .config/
3) cp -r pyc/redesigned-hyprland/fastfetch .config/
4) cp -r pyc/redesigned-hyprland/rofi .config/
5) cp -r pyc/redesigned-hyprland/swaync .config/
6) cp -r pyc/redesigned-hyprland/waybar .config/
7) cp pyc/redesigned-hyprland/gtk-3.0/settings.ini .config/gtk-3.0/
<br>
+++ rm -r .config/hypr && cp -r pyc/redesigned-hyprland/hypr .config/ && rm -r .config/kitty && cp -r pyc/redesigned-hyprland/kitty .config/ && cp -r pyc/redesigned-hyprland/fastfetch .config/ && cp -r pyc/redesigned-hyprland/rofi .config/ && cp -r pyc/redesigned-hyprland/swaync .config/ && cp -r pyc/redesigned-hyprland/waybar .config/ && cp pyc/redesigned-hyprland/gtk-3.0/settings.ini .config/gtk-3.0/

## ENABLING CURSORS
1) sudo cp -r pyc/redesigned-hyprland/cursors/apple-cursor /usr/share/icons && sudo cp -r pyc/redesigned-hyprland/cursors/google-dot /usr/share/icons
2) edit the hyprland "env" and add the cursor folder name
3) edit .config/gtk-3.0/settings.ini and add the cursor folder name
4) Log out and in in Hyprland.

## VESKTOP
1) Enter vesktop and unselect "minimize to tray"
2) cp pyc/redesigned-hyprland/vesktop-theme/gruvbox-dark.theme.css .config/vesktop/themes/ && cp pyc/redesigned-hyprland/vesktop-theme/mocha.css .config/vesktop/themes/
3) Set the theme inside vesktop

## NEOVIM
1) curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && cp pyc/redesigned-hyprland/nvim/init.vim .config/nvim/
2) :PlugInstall inside nvim

## PYTHON VIRTUAL ENVIRONMENT
1) python -m venv .venv && source .venv/bin/activate.fish
