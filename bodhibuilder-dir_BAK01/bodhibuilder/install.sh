#!/bin/bash
#

# Install bodhibuilder into a system
# This script needs to be run as root!
#
# Create the correct permissions and ownership
# Distribute the files to the correct locations
#

###
# Do some checks to see if we're running this script correctly
if [ "$(whoami)" != "root" ]; then
    echo "Need to be root or run with sudo. Exiting."
    exit 1
fi

if [ ! "`echo $PWD | rev | cut -d/ -f1 | rev`" = "bodhibuilder" ] ; then
  echo " Not in the correct directory. Exiting."
  exit 0
fi

if [ -f ./etc/bodhibuilder.conf -a -f ./usr/bin/bodhibuilder ] ; then
  continue=1
else
  continue=0
fi

if [ "$continue" = 0 ] ; then
  echo " Cannot find bodhibuilder files. Exiting."
  exit 0
fi

# Check for needed commands
echo " Checking for needed commands:"
commands="memtest86+ coreutils dialog mkisofs genisoimage archdetect awk sed apt-get rsync cpio gunzip gzip lzma mksquashfs unsquashfs isohybrid"
for c in $commands ; do
  cmdcheck1="`which ${c}`"
  echo -n "   ${c}"
  if [ ! "$cmdcheck1" ] ; then
    cmdcheck2="`dpkg-query -W -f='${Status}\n' ${c}`"
    if [ ! "$cmdcheck2" = "install ok installed" ] ; then
      echo " -- Missing package."
      echo " -- Install package containing $c"
      echo " -- Exiting."
      exit 0
    fi
  fi
done
echo ""
## Not used:
#~ # memtest86+
#~ cmdcheck="memtest86+"
#~ if [ ! "`dpkg -S $(which ${cmdcheck})`" = "install ok installed" ] ; then
  #~ echo " Package $cmdcheck not installed. Exiting."
  #~ exit 0
#~ fi
#~ # coreutils
#~ if [ ! "`dpkg-query -W -f='${Status}\n' coreutils`" = "install ok installed" ] ; then
  #~ echo " Package coreutils not installed. Exiting."
  #~ exit 0
#~ fi
#~ # dialog
#~ if [ ! "`dpkg-query -W -f='${Status}\n' dialog`" = "install ok installed" ] ; then
  #~ echo " Package dialog not installed. Exiting."
  #~ exit 0
#~ fi
#~ # mkisofs
#~ if [ ! "`dpkg-query -W -f='${Status}\n' mkisofs`" = "install ok installed" ] ; then
  #~ echo " Package mkisofs not installed. Exiting."
  #~ exit 0
#~ fi


###
# Create correct permissions
chmod -R 755 ./*
chmod 644 ./etc/bodhibuilder/grub.png # needs to change to root ownership
chmod 644 ./etc/bodhibuilder/isolinux/splash.png
chmod 664 ./etc/bodhibuilder/plymouth/bodhibuilder-theme/*
chmod 755 ./etc/bodhibuilder/plymouth/bodhibuilder-theme/bodhibuilder.png etc/bodhibuilder/plymouth/bodhibuilder-theme/progress_bar.png
chmod 700 ./usr/share/bodhibuilder-gtk ./usr/share/doc/bodhibuilder-gtk

# Change ownership on some files
chown root:root ./etc/bodhibuilder/grub.png ./etc/bodhibuilder ./etc/init.d/bodhibuilder-firstboot


###
# Distribute files to correct location
#
# /etc/ files:
if [ -f /etc/bodhibuilder.conf ] ; then
  echo ""
  echo " Bodhibuilder Configuration file found."
  echo " Overwrite your current '/etc/bodhibuilder.conf' with the default file?"
  cp -pi ./etc/bodhibuilder.conf /etc/
  echo ""
else
  cp -pi ./etc/bodhibuilder.conf /etc/
fi

cp -rp ./etc/bodhibuilder /etc/
cp -p ./etc/init.d/bodhibuilder-firstboot /etc/init.d/bodhibuilder-firstboot

# /usr/ files:
cp -p ./usr/bin/* /usr/bin/
cp -rp ./usr/share/bodhibuilder-gtk/ /usr/share/

# docs
cp -rp ./usr/share/doc/* /usr/share/doc/

# icons
if [ -d /usr/share/icons/hicolor ] ; then
  cp -p ./usr/share/icons/hicolor/128x128/apps/* /usr/share/icons/hicolor/128x128/apps/
  cp -p ./usr/share/icons/hicolor/16x16/apps/* /usr/share/icons/hicolor/16x16/apps/
  cp -p ./usr/share/icons/hicolor/22x22/apps/* /usr/share/icons/hicolor/22x22/apps/
  cp -p ./usr/share/icons/hicolor/24x24/apps/* /usr/share/icons/hicolor/24x24/apps/
  cp -p ./usr/share/icons/hicolor/32x32/apps/* /usr/share/icons/hicolor/32x32/apps/
  cp -p ./usr/share/icons/hicolor/48x48/apps/* /usr/share/icons/hicolor/48x48/apps/
  cp -p ./usr/share/icons/hicolor/64x64/apps/* /usr/share/icons/hicolor/64x64/apps/
else
  mkdir /usr/share/icons/hicolor/
  cp -r ./usr/share/icons/hicolor/* usr/share/icons/hicolor/
fi

# locale
if [ -d /usr/share/locale/bg/LC_MESSAGES/ ] ; then
  cp -p ./usr/share/locale/bg/LC_MESSAGES/bodhibuilder-gtk.mo /usr/share/locale/bg/LC_MESSAGES/
else
  mkdir -p /usr/share/locale/bg/LC_MESSAGES/
  cp -p ./usr/share/locale/bg/LC_MESSAGES/bodhibuilder-gtk.mo /usr/share/locale/bg/LC_MESSAGES/
fi
if [ -d /usr/share/locale/en/LC_MESSAGES/ ] ; then
  cp -p ./usr/share/locale/en/LC_MESSAGES/bodhibuilder-gtk.mo /usr/share/locale/en/LC_MESSAGES/
else
  mkdir -p /usr/share/locale/en/LC_MESSAGES/
  cp -p ./usr/share/locale/en/LC_MESSAGES/bodhibuilder-gtk.mo /usr/share/locale/en/LC_MESSAGES/
fi
if [ -d /usr/share/locale/zh_TW/LC_MESSAGES/ ] ; then
  cp -p ./usr/share/locale/zh_TW/LC_MESSAGES/bodhibuilder-gtk.mo /usr/share/locale/zh_TW/LC_MESSAGES/
else
  mkdir -p /usr/share/locale/zh_TW/LC_MESSAGES/
  cp -p ./usr/share/locale/zh_TW/LC_MESSAGES/bodhibuilder-gtk.mo /usr/share/locale/zh_TW/LC_MESSAGES/
fi

# man pages
cp -p ./usr/share/man/man1/* /usr/share/man/man1/

# pixmaps
cp -p ./usr/share/pixmaps/bodhibuilder-gtk.png /usr/share/pixmaps/

echo " INSTALLED"
echo ""
echo " Edit the file '/etc/bodhibuilder.conf' to customize."
echo ""
