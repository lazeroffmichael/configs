XORG_CONF=/usr/share/X11/xorg.conf.d/40-libinput.conf
sudo apt-get update && sudo apt-get full-upgrade -y
sudo sed -i '/MatchDevicePath "\/dev\/input\/event\*"/a \        Option "NaturalScrolling" "on"' $XORG_CONF
sudo apt install spice-vdagent
echo "RESTART VM TO GET ALL EFFECTS"
