# Custom Live Debian System
Set of scripts to create Custom Live Debian System:
* Automatically calculate space used of each script.
* It can remaster itself while running.

# Screenshots
![](https://github.com/limelime/cust-live-deb/blob/master/docs/screenshots/cld_screenshot_01.jpg)

# Download( TODO )
It comes in 2 flavors:
* min: Strict minimum system with JWM light-weight window manager. From there, you can add your desired applications.
* std: Standard system includes minimum system + common applications.

# Create hybrid ISO

1. Clone the git repository(e.g. `git clone https://github.com/limelime/cust-live-deb.git`)
1. Import the wiki to `./scripts/settings/doc/`.
1. `./cld.sh <SYSTEM> <DEB_REPO_URL>`. 
    * **SYSTEM** can be:
        * min: Strict minimum system with JWM light-weight window manager. From there, you can add your desired applications.
        * std: Standard system includes minimum system + common applications.
        * all: Will execute all scripts in `./scripts/repository/`.
    * **DEB_REPO_URL** is the URL to the Debian repository(e.g. http://ftp.debian.org/debian/).
1. `cust-live-deb-64-<SYSTEM>_YYYY-MM-DD_HH.MM.SS.iso` will be created.


# Analyze package sizes
```
sort install-size-history.txt | uniq | grep <script-name>
```

# Packages
* LinuxMint: http://paste.debian.net/182062/

# TODO
## Regenerate initrd
* https://kernel-handbook.alioth.debian.org/ch-initramfs.html#s-initramfs-regen

# References
* http://live.debian.net/manual/git/html/live-manual.en.html (Manual)
* http://manpages.ubuntu.com/manpages/natty/de/man1/lb_config.1.html
* http://askubuntu.com/questions/551195/scripting-chroot-how-to
* https://help.ubuntu.com/community/LiveCDCustomizationFromScratch
* https://wiki.debian.org/Openbox/
* http://willhaley.com/willhaley/blog/create-a-custom-debian-live-environment/
* https://l3net.wordpress.com/2013/09/21/how-to-build-a-debian-livecd/
* http://www.opengeeks.me/2015/04/building-an-hybrid-debian-live-iso-with-xorriso/
* https://wiki.ubuntu.com/BootToRAM

# Release checklist
* Can you watch youtube video over wireless connection?

# Dump


# Customizations Performed
  * Running install.sh ...
    * Running on SHELL=/bin/bash VER=4.3.30(1)-release
    * Disk size = 628092K. Space Used = 628092K.
  * Running inst-min-con-00-linux-image.sh ...
    * After this operation, 3111 kB of additional disk space will be used.
    * After this operation, 224 MB of additional disk space will be used.
    * Mount /proc, /sys and /dev/pts.
    * Generate dbus-uuidgen to /var/lib/dbus/machine-id.
    * Install Linux image.
    * Set APT to skip installing recommended packages.
    * Disk size = 948096K. Space Used = 320004K.
  * Running inst-min-con-01-debconf-utils.sh ...
    * After this operation, 157 kB of additional disk space will be used.
    * Install debconf-utils to use debconf-set-selections.
    * Disk size = 948328K. Space Used = 232K.
  * Running inst-min-con-02-locale.sh ...
    * After this operation, 16.3 MB of additional disk space will be used.
    * Install locale and set it to use en_US.UTF-8.
    * Disk size = 971052K. Space Used = 22724K.
  * Running inst-min-con-02-localepurge.sh ...
    * After this operation, 334 kB of additional disk space will be used.
    * Install localepurge to purge documentation of all languages, except en, en_US, en_US.UTF-8.
    * Reconfigure localepurge: dpkg-reconfigure localepurge
    * Disk size = 971792K. Space Used = 740K.
  * Running inst-min-con-03-startup-script.sh ...
    * Copy startup.sh to /etc/init.d/.
    * Make it executable.
    * Register it in the boot sequence.
    * Disk size = 971796K. Space Used = 4K.
  * Running inst-min-con-04-block-services-start-postinstall.sh ...
    * Block services from starting after they are being installed.
    * Disk size = 971800K. Space Used = 4K.
  * Running inst-min-con-auto-log-root.sh ...
    * Disk size = 971808K. Space Used = 8K.
  * Running inst-min-con-bashrc.sh ...
    * Set common settings for /root/.bashrc.
    * Set dircolors to use dircolors-gnu-ls-colors.txt to make ls more beautiful.
    * Disk size = 971816K. Space Used = 8K.
  * Running inst-min-con-cld-dev-tools-debootstrap.sh ...
    * After this operation, 234 kB of additional disk space will be used.
    * Install debootstrap allows the creation of a Debian base system int a directory.
    * Disk size = 972136K. Space Used = 320K.
  * Running inst-min-con-cld-tools.sh ...
    * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/fimg.sh to /usr/local/bin/.
    * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/feh-ss.sh to /usr/local/bin/.
    * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-remaster.sh to /usr/local/bin/.
    * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/lspace.sh to /usr/local/bin/.
    * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-lsmodules.sh to /usr/local/bin/.
    * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-persistence.sh to /usr/local/bin/.
    * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-zfs-hd.sh to /usr/local/bin/.
    * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-bash-color-meaning.sh to /usr/local/bin/.
    * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-mkiso.sh to /usr/local/bin/.
    * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-dd-usb.sh to /usr/local/bin/.
    * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-dependency-graph.sh to /usr/local/bin/.
    * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-win-split.sh to /usr/local/bin/.
    * Disk size = 972188K. Space Used = 52K.
  * Running inst-min-con-compressors.sh ...
    * After this operation, 122 kB of additional disk space will be used.
    * After this operation, 812 kB of additional disk space will be used.
    * After this operation, 346 kB of additional disk space will be used.
    * After this operation, 607 kB of additional disk space will be used.
    * After this operation, 927 kB of additional disk space will be used.
    * Install de/compressor: bzip2.
    * Install de/compressor: rar.
    * Install de/compressor: unzip.
    * Install de/compressor: zip.
    * Install de/compressor: p7zip.
    * Disk size = 976208K. Space Used = 4020K.
  * Running inst-min-con-deb-multimedia.sh ...
    * Install deb-multimedia-keyring_2015.6.1_all.deb.
    * Add deb-multimedia sources list.
    * Delete deb-multimedia-keyring_2015.6.1_all.deb[12K].
    * apt-get update
    * Disk size = 977560K. Space Used = 1352K.
  * Running inst-min-con-filesystem-ntfs-3g.sh ...
    * After this operation, 2,087 kB of additional disk space will be used.
    * Install support for NTFS: ntfs-3g.
    * Disk size = 980552K. Space Used = 2992K.
  * Running inst-min-con-firmware-cpu.sh ...
    * After this operation, 47.1 kB of additional disk space will be used.
    * After this operation, 655 kB of additional disk space will be used.
    * Install CPU firmware: amd64-microcode.
    * Install CPU firmware: intel-microcode.
    * Disk size = 981876K. Space Used = 1324K.
  * Running inst-min-con-firmware-net-b43-installer.sh ...
    * After this operation, 158 kB of additional disk space will be used.
    * Install b43 for Dell Wireless 1397 WLAN Mini-Card Driver.
    * Disk size = 983188K. Space Used = 1312K.
  * Running inst-min-con-firmware.sh ...
    * After this operation, 41.7 MB of additional disk space will be used.
    * Install firmwares: atmel-firmware, bluez-firmware, firmware-atheros, firmware-bnx2, firmware-bnx2x, firmware-brcm80211, firmware-intelwimax, firmware-ipw2x00, firmware-ivtv, firmware-iwlwifi, firmware-libertas, firmware-linux, firmware-linux-free, firmware-linux-nonfree, firmware-qlogic, firmware-ralink, firmware-realtek, zd1211-firmware.
    * Disk size = 1036884K. Space Used = 53696K.
  * Running inst-min-con-live-build-tools.sh ...
    * After this operation, 110 kB of additional disk space will be used.
    * After this operation, 1,789 kB of additional disk space will be used.
    * After this operation, 392 kB of additional disk space will be used.
    * Install xorriso to create isohybrid.
    * Install isolinux to get isohdpfx.bin and isolinux.bin in order to create isohybrid.
    * Note: boot.cat is automatically created.
    * Install rsync to copy directories.
    * Install squashfs-tools to create new squashfs.
    * Disk size = 1040448K. Space Used = 3564K.
  * Running inst-min-con-mtp-tools.sh ...
    * After this operation, 2,114 kB of additional disk space will be used.
    * Install mtp-tools to mount smartphones.
    * Disk size = 1043000K. Space Used = 2552K.
  * Running inst-min-con-ntp.sh ...
    * After this operation, 1,871 kB of additional disk space will be used.
    * Install Network Time Protocol: ntp.
    * Disk size = 1045508K. Space Used = 2508K.
  * Running inst-min-con-numlock.sh ...
    * After this operation, 4,381 kB of additional disk space will be used.
    * Install numlockx to turn on NumLock on boot.
    * Disk size = 1052016K. Space Used = 6508K.
  * Running inst-min-con-pciutils.sh ...
    * After this operation, 1,181 kB of additional disk space will be used.
    * Install pciutils to troubleshoot pci devices(i.e. lspci).
    * Disk size = 1053580K. Space Used = 1564K.
  * Running inst-min-con-snd-alsa.sh ...
    * After this operation, 5,270 kB of additional disk space will be used.
    * Install ALSA sound.
    * Test sound: aplay /usr/share/sounds/alsa/*.
    * Add key bindings.
    * Disk size = 1061432K. Space Used = 7852K.
  * Running inst-min-con-udevil.sh ...
    * After this operation, 500 kB of additional disk space will be used.
    * Install udevil to auto mount USB devices.
    * Set devmon to auto start on startup.
    * You need ntfs-3g driver to be able to write on ntfs partition.
    * Disk size = 1061764K. Space Used = 332K.
  * Running inst-min-con-xtra-dev-tool-java-jdk.sh ...
    * After this operation, 141 MB of additional disk space will be used.
    * Install JAVA JDK: default-jdk.
    * Disk size = 1278988K. Space Used = 217224K.
  * Running inst-min-con-xtra-dev-tool-tree.sh ...
    * After this operation, 102 kB of additional disk space will be used.
    * Install tree to display files and directories structure.
    * Disk size = 1279164K. Space Used = 176K.
  * Running inst-min-con-xtra-gnuplot.sh ...
    * After this operation, 34.1 MB of additional disk space will be used.
    * Install gnuplot.
    * Disk size = 1323200K. Space Used = 44036K.
  * Running inst-min-con-xtra-imagemagick.sh ...
    * After this operation, 13.0 MB of additional disk space will be used.
    * Install imagemagick to process image from command line.
    * Disk size = 1340568K. Space Used = 17368K.
  * Running inst-min-con-xtra-java-jre.sh ...
    * Install JAVA JRE: default-jre.
    * Disk size = 1340572K. Space Used = 4K.
  * Running inst-min-con-xtra-locate.sh ...
    * After this operation, 324 kB of additional disk space will be used.
    * Install locate to generate an index of files and directories.
    * You can updatedb and then locate files faster.
    * Disk size = 1341128K. Space Used = 556K.
  * Running inst-min-con-xtra-macchanger.sh ...
    * After this operation, 622 kB of additional disk space will be used.
    * Install macchanger.
    * Set macchanger to change MAC address whenever network device is up or down.
    * To configure macchanger: dpkg-reconfigure macchanger.
    * Check whether it is working: macchanger -s eth0.
    * systemctl status macchanger@eth0.service
    * Disk size = 1342012K. Space Used = 884K.
  * Running inst-min-con-xtra-mariadb-server.sh ...
    * After this operation, 131 MB of additional disk space will be used.
    * Disk size = 1594612K. Space Used = 252600K.
  * Running inst-min-con-xtra-php5.sh ...
    * After this operation, 32.0 MB of additional disk space will be used.
    * Install php5.
    * Disk size = 1636412K. Space Used = 41800K.
  * Running inst-min-con-xtra-timezone.sh ...
    * Set time zone to EST (America/Montreal) in /etc/timezone.
    * Disk size = 1636412K. Space Used = 0K.
  * Running inst-min-win-00-xorg.sh ...
    * After this operation, 67.7 MB of additional disk space will be used.
    * Set keyboard to use US international.
    * Install minimum Xorg X server.
    * Install xinit so you can run startx.
    * Add auto start window manager(i.e startx).
    * Disk size = 1722944K. Space Used = 86532K.
  * Running inst-min-win-01-wm-jwm.sh ...
    * After this operation, 2,639 kB of additional disk space will be used.
    * Install Window Manager: JWM.
    * Set jwmrc.
    * Disk size = 1726724K. Space Used = 3780K.
  * Running inst-min-win-cld-dev-tools-pandoc.sh ...
    * After this operation, 38.6 MB of additional disk space will be used.
    * Install pandoc to generate user manual.
    * Add documentation: user manual.
    * Add documentation: developer manual.
    * Disk size = 1769264K. Space Used = 42540K.
  * Running inst-min-win-cld-win-split.sh ...
    * After this operation, 81.9 kB of additional disk space will be used.
    * After this operation, 654 kB of additional disk space will be used.
    * Install required applications for cld-win-split.sh: wmctrl and x11-utils for xprop.
    * Add key bindings: Ctrl+Alt+Left, Right, Up, Down, 1, 2, 3, 4, 5, 6, 7, 8, 9.
    * Disk size = 1770332K. Space Used = 1068K.
  * Running inst-min-win-jwm-keys-alsa.sh ...
    * Add ALSA key binding.
    * Add script to auto-detect ALSA controller on JWM startup.
    * Disk size = 1770336K. Space Used = 4K.
  * Running inst-min-win-menu.sh ...
    * After this operation, 1,829 kB of additional disk space will be used.
    * Install menu, an easy way to get installed programs in the menu automatically.
    * Disk size = 1771616K. Space Used = 1280K.
  * Running inst-min-win-systray-volumeicon-alsa.sh ...
    * After this operation, 243 kB of additional disk space will be used.
    * Install volume controller in system tray.
    * Set left-click to display volume slider: lmb_slider=true.
    * Set volumeicon to run on JWN startup.
    * Disk size = 1772088K. Space Used = 472K.
  * Running inst-min-xtra-fonts-asian.sh ...
    * After this operation, 48.2 MB of additional disk space will be used.
    * Install fonts-hanazono to display Asian characters correctly.
    * Test it by opening website http://ctext.org/zh.
    * Disk size = 1838072K. Space Used = 65984K.
  * Running inst-std-accessories-feh.sh ...
    * After this operation, 4,308 kB of additional disk space will be used.
    * Install command line image viewer: feh.
    * Disk size = 1841884K. Space Used = 3812K.
  * Running inst-std-accessories-galculator.sh ...
    * After this operation, 56.3 MB of additional disk space will be used.
    * Install Calculator: galculator.
    * Insert galculator in Accessories menu.
    * Disk size = 1896816K. Space Used = 54932K.
  * Running inst-std-accessories-gpicview.sh ...
    * After this operation, 876 kB of additional disk space will be used.
    * Install Image Viewer: gpicview.
    * Insert gpicview in Accessories menu.
    * Disk size = 1897172K. Space Used = 356K.
  * Running inst-std-accessories-mupdf.sh ...
    * After this operation, 12.0 MB of additional disk space will be used.
    * Install PDF reader: Mupdf.
    * Disk size = 1912512K. Space Used = 15340K.
  * Running inst-std-accessories-prtscr-gnome-screenshot.sh ...
    * After this operation, 1,158 kB of additional disk space will be used.
    * Install gnome-screenshot to be used for PrintScreen key.
    * Insert PrintScreen key binding.
    * By default, screenshots are saved under ~/Pictures/.
    * Disk size = 1913388K. Space Used = 876K.
  * Running inst-std-accessories-scite.sh ...
    * After this operation, 4,829 kB of additional disk space will be used.
    * After this operation, 221 kB of additional disk space will be used.
    * Install Text Editor: SciTE.
    * Install at-spi2-core to shut up Accessibility warning message.
    * Insert SciTE in Accessories menu.
    * Disk size = 1919932K. Space Used = 6544K.
  * Running inst-std-accessories-terminal-xfce.sh ...
    * After this operation, 11.1 MB of additional disk space will be used.
    * Install terminal: xfce4-terminal.
    * Disk size = 1929260K. Space Used = 9328K.
  * Running inst-std-accessories-thunar.sh ...
    * After this operation, 10.0 MB of additional disk space will be used.
    * Install File Manger: thunar, thunar-media-tags-plugin, thunar-archive-plugin, thunar-volman.
    * Insert Thunar in Accessories menu.
    * Disk size = 1935616K. Space Used = 6356K.
  * Running inst-std-accessories-xarchiver.sh ...
    * After this operation, 1,211 kB of additional disk space will be used.
    * Install Archive Manager: xarchiver.
    * Disk size = 1936844K. Space Used = 1228K.
  * Running inst-std-graphic-pinta.sh ...
    * After this operation, 45.0 MB of additional disk space will be used.
    * Install Image Editor: Pinta.
    * Disk size = 2008380K. Space Used = 71536K.
  * Running inst-std-internet-iceweseal.sh ...
    * After this operation, 91.4 MB of additional disk space will be used.
    * Install web browser: iceweasel.
    * Disk size = 2136528K. Space Used = 128148K.
  * Running inst-std-multimedia-mpv.sh ...
    * After this operation, 83.9 MB of additional disk space will be used.
    * Install Media Player: MPV.
    * Add multiple aliases for MPV.
    * Add useful mpv keybindings settings.
    * Disk size = 2254144K. Space Used = 117616K.
  * Running inst-std-office-libreoffice.sh ...
    * After this operation, 287 MB of additional disk space will be used.
    * After this operation, 43.8 MB of additional disk space will be used.
    * After this operation, 17.0 MB of additional disk space will be used.
    * After this operation, 9,910 kB of additional disk space will be used.
    * After this operation, 1,610 kB of additional disk space will be used.
    * Install LibreOffice 5.0.2.2 00m0(Build:2).
    * Install Office Suite: Word processor.
    * Install Office Suite: Spreadsheet.
    * Install Office Suite: Presentation.
    * Install Office Suite: Drawing.
    * Install Office Suite: Database.
    * Install Office Suite: Equation.
    * https://wiki.documentfoundation.org/ReleasePlan
    * Disk size = 2705720K. Space Used = 451576K.
  * Running inst-std-office-xtra-projectlibre.sh ...
    * Install ProjectLibre.
    * Disk size = 2724168K. Space Used = 18448K.
  * Running inst-std-system-alsamixer.sh ...
    * Insert Alsamixer menu in Administration.
    * Disk size = 2724168K. Space Used = 0K.
  * Running inst-std-system-conky.sh ...
    * After this operation, 967 kB of additional disk space will be used.
    * Install System Monitor: conky.
    * Add conky config file: conkyrc.
    * Set conky to run on JWM startup.
    * Add on the fly settings to Conky.
    * Disk size = 2725480K. Space Used = 1312K.
  * Running inst-std-system-disk-manager.sh ...
    * After this operation, 14.3 MB of additional disk space will be used.
    * Install Auto Mount Partition Manager: Disk Manager.
    * Insert disk-manager menu in Administration.
    * Disk size = 2750032K. Space Used = 24552K.
  * Running inst-std-system-gnome-disk-utility.sh ...
    * After this operation, 11.1 MB of additional disk space will be used.
    * Install Partition Manager: gnome-disk-utility.
    * Disk size = 2756300K. Space Used = 6268K.
  * Running inst-std-system-gparted.sh ...
    * After this operation, 17.3 MB of additional disk space will be used.
    * Install Partition Manager: gparted.
    * Insert gparted menu in Administration.
    * Disk size = 2772240K. Space Used = 15940K.
  * Running inst-std-system-keyboard.sh ...
    * Insert keyboard menu in Administration.
    * Disk size = 2772240K. Space Used = 0K.
  * Running inst-std-system-monitor-switcher-lxrandr.sh ...
    * After this operation, 19.9 MB of additional disk space will be used.
    * After this operation, 779 kB of additional disk space will be used.
    * Install Monitor Switcher: lxrandr.
    * Add lxrandr key binding.
    * Disk size = 2798224K. Space Used = 25984K.
  * Running inst-std-system-network-wicd.sh ...
    * After this operation, 7,574 kB of additional disk space will be used.
    * Install Network Manager: wicd.
    * For wireless, you have to type in the wireless interface(e.g. wlan0) in the Preferences.
    * Set wicd to run on JWM startup.
    * Log at /var/log/wicd/wicd.log.
    * Disk size = 2809240K. Space Used = 11016K.
  * Running inst-std-system-time-zone.sh ...
    * Insert Time Zone menu in Administration.
    * Disk size = 2809240K. Space Used = 0K.
  * Running inst-std-system-xtra-hardinfo.sh ...
    * After this operation, 467 kB of additional disk space will be used.
    * Install hardware info apps: hardinfo.
    * Insert System Information menu in Administration.
    * Disk size = 2810172K. Space Used = 932K.
  * Running inst-std-system-xtra-webcam-camorama.sh ...
    * After this operation, 41.1 MB of additional disk space will be used.
    * Install webcam: camorama.
    * Disk size = 2841592K. Space Used = 31420K.
  * Running inst-std-xtra-blender.sh ...
    * After this operation, 13.8 MB of additional disk space will be used.
    * After this operation, 185 MB of additional disk space will be used.
    * Install required packages for blender.
    * Install blender.
    * Disk size = 3070012K. Space Used = 228420K.
  * Running inst-std-xtra-dia.sh ...
    * After this operation, 21.2 MB of additional disk space will be used.
    * Install dia to draw diagrams.
    * Disk size = 3095576K. Space Used = 25564K.
  * Running inst-std-xtra-opw-drush8.sh ...
    * Install  Drush Version   :  8.0.0-rc1  to manage Drupal.
    * See https://www.linode.com/docs/websites/cms/drush-drupal.
    * Further setting is needed. See https://wiki.debian.org/drush.
    * Disk size = 3115672K. Space Used = 20096K.
  * Running inst-std-xtra-opw-php5-gd.sh ...
    * After this operation, 118 kB of additional disk space will be used.
    * Install php5-gd to run Drupal.
    * Disk size = 3115884K. Space Used = 212K.
  * Running inst-std-xtra-opw-php5-mysql.sh ...
    * After this operation, 3,752 kB of additional disk space will be used.
    * Install php5-mysql to enable the PDO_MYSQL database driver for PHP and to run Drupal.
    * Enable mod_rewrite module.
    * Disk size = 3120420K. Space Used = 4536K.
  * Running inst-std-xtra-sweethome3d.sh ...
    * Disk size = 3156524K. Space Used = 36104K.
  * Running inst-xtra-cld-dev-tools-apt-move.sh ...
    * After this operation, 430 kB of additional disk space will be used.
    * After this operation, 196 kB of additional disk space will be used.
    * Install apt-move to create debian local repository.
    * Patch apt-move to support SHA256..
    * Install apache 2 to turn apt-move into a webserver.
    * Disk size = 3157552K. Space Used = 1028K.
  * Running inst-xtra-cld-dev-tools-debtree.sh ...
    * After this operation, 13.3 MB of additional disk space will be used.
    * Install debtree and graphviz to view dependencies of packages. Better package selections.
    * Disk size = 3172856K. Space Used = 15304K.
  * Running inst-xtra-cld-dev-tools-libxml2-utils.sh ...
    * After this operation, 152 kB of additional disk space will be used.
    * Install libxml2-utils to validate xml file.
    * Disk size = 3173140K. Space Used = 284K.
  * Running inst-xtra-dev-tools-ant.sh ...
    * After this operation, 2,229 kB of additional disk space will be used.
    * Install ant.
    * Disk size = 3177172K. Space Used = 4032K.
  * Running inst-xtra-fuse.sh ...
    * Install fuse(fusermount) to run TMSU.
    * Disk size = 3177172K. Space Used = 0K.
  * Running inst-xtra-open-terminals-on-startup.sh ...
    * Install x11-xserver-utils for xrandr.
    * Install wmctrl.
    * Install x11-utils for xprop.
    * Copy open-terminal.sh in /root/cld.
    * Add open-terminal.sh in /root/cld/jwmrc-startup.sh.
    * Disk size = 3177176K. Space Used = 4K.
  * Running inst-xtra-sqlite3.sh ...
    * After this operation, 143 kB of additional disk space will be used.
    * Install Database: sqlite3.
    * Disk size = 3177444K. Space Used = 268K.
  * Running inst-xtra-wifite.sh ...
    * After this operation, 80.3 MB of additional disk space will be used.
    * Install wifite.
    * Disk size = 3270852K. Space Used = 93408K.
  * Running inst-xtra-xmpv.sh ...
    * Install xmpv.
    * Disk size = 3270896K. Space Used = 44K.
  * Running inst-xtra-zfs.sh ...
    * After this operation, 15.8 MB of additional disk space will be used.
    * After this operation, 131 MB of additional disk space will be used.
    * Install lsb-release.
    * Add zfsonlinux repository to /etc/apt/sources.list.d/zfsonlinux.list.
    * Add GPG key to /etc/apt/trusted.gpg.d/zfsonlinux.gpg.
    * Install debian-zfs: version: 0.6.5.2-2.
    * Delete zfsonlinux_6_all.deb[1992K].
    * Change default behavior: Don't allow the last 1.6% of space in the pool instead of 3.2%.
    * Disk size = 3483992K. Space Used = 213096K.
  * Running inst-zclean-00-zerosizing-docs.sh ...
    * Zero size all documents in /usr/share/.
    * Disk size = 3384880K. Space Used = -99112K.
  * Running inst-zclean-01-remove-block-services.sh ...
    * Remove block services from starting after they are being installed.
    * Disk size = 3384876K. Space Used = -4K.
  * Running inst-zclean-99-end-cleanup.sh ...
    * Clean apt-get cache.
    * rm -rf /tmp/*.
    * Umount /sys, /dev/pts and /proc.
    * Add Debian main repositories in sources.list.
    * Delete local Debian repository from sources.list.
    * Disk size = 2766124K. Space Used = -618752K.
