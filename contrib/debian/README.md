
Debian
====================
This directory contains files used to package steelhorsecoind/steelhorsecoin-qt
for Debian-based Linux systems. If you compile steelhorsecoind/steelhorsecoin-qt yourself, there are some useful files here.

## steelhorsecoin: URI support ##


steelhorsecoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install steelhorsecoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your steelhorsecoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/steelhorsecoin128.png` to `/usr/share/pixmaps`

steelhorsecoin-qt.protocol (KDE)

