# GNOME

These are howtos relating to the GNOME template. Some are the
same as for KDE, others are different.

* This will become a table of contents (this text will be scraped).
{:toc}


## How to add bookmarks to Nautilus

Ideally add bookmarks while in testdrive and then copy the
modified files.


## How to customize the wallpaper

* Default wallpapers are stored in /usr/share/wallpapers. There
  are some symlinks in this directory that you can customize to point to your wallpapers.
* If you only want to customize one user's wallpaper, it is best to use testdrive
  and copy the modified files afterward.


## How to customize the login screen (GDM)

In the past, the command gdmsetup was used to configure
the login screen. GNOME dropped this UI. Now, to customize GDM,
run gconftool-2 as the gdm user.


This command will list all values which may be changed:

    sudo -u gdm gconftool-2 -R /apps/gdm/simple-greeter

This will list all the GDM sound-related settings:

    sudo -u gdm gconftool-2 -R /desktop/gnome/sound

This will turn off startup sounds (use "true" to switch back
to default):

    sudo -u gdm dbus-launch gconftool-2 --set /apps/gdm/simple-greeter/settings-manager-plugins/sound --type bool false

This will change the sound theme (which is what I think you really want,
provided the sound theme defines a startup sound):

    sudo -u gdm dbus-launch gconftool-2 --set /desktop/gnome/sound/theme_name --type string YOURTHEMENAMEHERE

(openSUSE defaults to the "freedesktop" sound theme, by-the-way.)


## How to customize menus

* To customize the applications menu using SUSE Studio,
  upload a customized `applications.xbel` to the folder
  `/home/tux/.local/share/gnome-main-menu/` in the "overlay files"
  section. Replace tux with your username.
* This way you can remove/edit the applications in the "recent
  applications" as well.
* You can edit the documents in the user menu by editing the file
  `.local/share/gnome-main-menu/documents.xbel`.
* You can remove the install option in the user menu (on the system part
  of the menu, top-left) by editing the file
  `.local/share/gnome-main-menu/system-items.xbel`. You can also
  customize other options in this menu as well.


## How to add shortcuts to the desktop

Add a .desktop file to the ~/Desktop folder.
If you want it to apply to all users, copy the file to `/etc/skeleton/Desktop`.


## How to launch a GNOME application on login

That is the same case of ["How to launch a KDE application on
login"][kde-howto]. Refer to this [Howto][kde-howto].


[kde-howto]: kde-howtos.html
