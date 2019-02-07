# Instal Xfce GUI

See [Xfce on Atomic Workstation](https://pritter.fedorapeople.org/blog/180618-xfceonatomic/)

```
$ rpm-ostree install NetworkManager-fortisslvpn-gnome NetworkManager-iodine-gnome \
  NetworkManager-l2tp-gnome NetworkManager-libreswan-gnome NetworkManager-openconnect-gnome \
  NetworkManager-openvpn-gnome NetworkManager-pptp-gnome NetworkManager-ssh-gnome \
  NetworkManager-sstp-gnome NetworkManager-strongswan-gnome NetworkManager-vpnc-gnome \
  Thunar abrt-desktop adwaita-gtk2-theme adwaita-icon-theme albatross-gtk2-theme \
  albatross-gtk3-theme albatross-xfwm4-theme alsa-utils arc-theme blueberry \
  bluebird-gtk2-theme bluebird-gtk3-theme bluebird-xfwm4-theme desktop-backgrounds-compat \
  fedora-icon-theme firewall-config fros-recordmydesktop greybird-gtk2-theme \
  greybird-gtk3-theme greybird-xfce4-notifyd-theme greybird-xfwm4-theme gtk-xfce-engine gvfs \
  gvfs-archive initial-setup-gui lightdm-gtk network-manager-applet nm-connection-editor \
  openssh-askpass thunar-archive-plugin thunar-media-tags-plugin thunar-volman tumbler \
  xdg-user-dirs-gtk xfce4-about xfce4-appfinder xfce4-datetime-plugin xfce4-panel \
  xfce4-places-plugin xfce4-power-manager xfce4-pulseaudio-plugin xfce4-screenshooter-plugin \
  xfce4-session xfce4-session-engines xfce4-settings xfce4-terminal xfconf xfwm4 \
  xfwm4-theme-nodoka xfwm4-themes xscreensaver-base xfce4-battery-plugin xfce4-cpugraph-plugin \
  xfce4-diskperf-plugin xfce4-eyes-plugin xfce4-fsguard-plugin xfce4-genmon-plugin \
  xfce4-mailwatch-plugin xfce4-mount-plugin xfce4-netload-plugin xfce4-sensors-plugin \
  xfce4-systemload-plugin xfce4-taskmanager xfce4-time-out-plugin xfce4-verve-plugin \
  xfce4-weather-plugin xfce4-whiskermenu-plugin xfce4-xkb-plugin xfdashboard \
  xfdashboard-themes xfpanel-switch
```


## KDE Plasma

```
$ ostree remote add atomic-plasma https://schluentz.de/atomic-plasma --gpg-import /path/to/keyfile
```
