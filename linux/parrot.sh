sudo apt update && sudo apt upgrade -y

# Enable natural scrolling
XORG_CONF=/usr/share/X11/xorg.conf.d/40-libinput.conf
sudo sed -i '/MatchDevicePath "\/dev\/input\/event\*"/a \        Option "NaturalScrolling" "on"' $XORG_CONF

# UTM Guest Tools
sudo apt install spice-vdagent

# Install UbuntuMono nerd font
wget https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/UbuntuMono/Regular/UbuntuMonoNerdFontMono-Regular.ttf -P ~/Downloads
mkdir -p ~/.local/share/fonts
mv ~/Downloads/UbuntuMonoNerdFontMono-Regular.ttf ~/.local/share/fonts

sudo systemctl --message="Restaring VM to apply updates" reboot
