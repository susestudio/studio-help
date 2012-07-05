# KDE howtos

These howtos are related to KDE. Since there are two KDE versions, some of them
are specific to one version and some of them can be applied to both. Most of
them implies running the appliance on testdrive, do the modifications and get
the modified files to the overlay section. Only few need deeper knowledge. On
some cases, the modifications affect only one user. In this howto we expect this
user to be the tux user. In case you want to do it for a different user, adapt
the examples to your case.

* This will become a table of contents (this text will be scraped).
{:toc}

## How to launch a kde application on login

* Kde will read the .xinitrc file at the user home directory (/home/tux for the user tux) and launch applications there.
* If you want to launch a kde application when login into kde, you can customize that on the Configuration Tab, on the section Desktop. * There you can add applications that you want to start for any user you choose. This will result on SUSE Studio writing the .xinitrc files for each user you specified.
* If you want that behaviour for every user on the computer, add a customized .xinitrc file to /etc/skeleton/.xinitrc by using the overlay section, so it will be copied on every user home directory.
* SUSE Studio will overwrite the .xinitrc for the users you specified, so doing both things can get to impredictible results. If you want to specify a .xinitrc file as default but change it on some users, upload the .xinitrc files for every user (on his home directory) by using the overlay section instead of configuring it through the Configuration Tab


## How to create, include, and use a new profile for konqueror

On some cases you may want to launch konqueror with a specific profile. In order to do that, you first need an image to test. You can use testdrive for this. After booting the image, do the following:

1. Launch Konqueror.
2. Select "Configure View Profiles ..." under the "Settings" menu. Add a new profile name (e.g., welcome). You might want to set "Save window size in profile". Click on "Save"
3. Load the new profile ("Settings" -» "Load View Profile" -» your_profile).
4. Change the window size, the menus that are visible, etc.
5. Save your profile ("Settings" -» "Save View Profile your_profile ...").
6. Include these files into your appliance (on the overlay section):  
    
       1. /home/tux/.kde/share/apps/konqueror/profiles/your_profile
       2. /home/tux/.kde/share/config/konquerorrc  

Launch Konqueror with "konqueror --profile your_profile" on your scripts.


## How to launch an application in fullscreen mode in KDE(3)

You can use that together with the "How to launch a kde application on login " so you have kind of a kiosk.  
       
       kstart --fullscreen [--ontop] application application_parameters


##How to add applications to favorites

The easiest way is to use test drive. Run your appliance there and then right click on application icon on the menu and select add to favorites.
Done this, copy the `~/.kde/share/config/kickerrc` file to the overlay section.


## How to add desktop shortcuts

That is very easy, just add a `.desktop` file into the ~/Desktop folder. If you want it for all users, copy these to /etc/skeleton/Desktop.
How to start appliance with no SUSEgreeter

Copy the file `~/.kde/share/config/SUSEgreeterrc` from a kde that has no suse greeter (e.g., after having boot the appliance once)


## How to customize SUSEgreeter

If you want to customize the SUSEgreeter, like the text on it, the icons, etc. edit the files on `/opt/kde3/share/apps/SUSEgreeter/` and upload the ones you change into testdrive.


## How to start an empty kde session at every login

* On test drive, open a console and type  

       kcmshell kcmsmserver

* This will start the session manager. Then, select whether you want kde to remember your session, or start from scratch every time.

Once you've done that, copy the file `/home/tux/.kde/share/config/ksmserverrc` to your overlay section.


## How to change the wallpaper

There are two ways:

* The Configure tab in the appliance editor offers the wallpaper selection. Upload a new file and select it to be uses as wallpaper for booting an running KDE
* On testdrive, change the wallpaper (e.g., right-click on empty desktop and select "configure desktop..."). Then copy to the overlay files the `~/.kde/share/config/kdesktoprc` file.