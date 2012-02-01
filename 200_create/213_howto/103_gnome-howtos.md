# GNOME howtos

These are howtos related to the gnome template. Some of them are the same as kde and some are different.


## Note to Gnome howtos

These are howtos related to the gnome template. Some of them are the same as kde and some are different.


## How to add bookmarks to nautilus

You can do that by adding them while in testdrive and then copying the modified files.


## How to customize the wallpaper

* Default wallpapers go into /usr/share/wallpapers . You can see there are some symlinks there that you can customized by pointing to yours.
* If you want to customize only a user wallpaper, do that on test drive and get the modified files.


## How to customize the login screen (GDM)

In the past, gdmsetup used to be the command people used to configure the login screen. Gnome oddly dropped this UI, and now to customize GDM, a person must run gconftool-2 as the gdm user.


This command will list all the values which may be changed:

    sudo -u gdm gconftool-2 -R /apps/gdm/simple-greeter

This will list all the GDM sound-related settings:

    sudo -u gdm gconftool-2 -R /desktop/gnome/sound

This will turn off startup sounds (use "true" instead to switch it back to the default):

    sudo -u gdm dbus-launch gconftool-2 --set /apps/gdm/simple-greeter/settings-manager-plugins/sound --type bool false

This will change the sound theme (which is what I think you really want, provided the sound theme defines a startup sound):

    sudo -u gdm dbus-launch gconftool-2 --set /desktop/gnome/sound/theme_name --type string YOURTHEMENAMEHERE

(openSUSE defaults to the "freedesktop" sound theme, by-the-way.)


## How to customize menus

* In order to customize the applications menu using the suse studio, upload a customized `applications.xbel` to the folder `/home/tux/.local/share/gnome-main-menu/` on the "overlay files" section. Replace tux for your username.
* This way you can remove/edit the applications on the "recent applications" as well.
* You can edit the documents on the user menu by editing the file `.local/share/gnome-main-menu/documents.xbel`
* You can remove the install option on the user menu (on the system part of the menu, top-left) by editing the file `.local/share/gnome-main-menu/system-items.xbel`. You can also customize other options on this menu as well.


## How to add shortcuts on desktop

That is very easy, just add a .desktop file into the ~/Desktop folder.
If you want it for all users, copy these to `/etc/skeleton/Desktop`.


## How to launch a gnome application on login

That is the same case of ["How to launch a kde application on login"][kde-howto] so refer to that [Howto][kde-howto].


[kde-howto]: kde-howtos.html