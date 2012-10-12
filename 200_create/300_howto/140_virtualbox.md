# VirtualBox

VirtualBox can run vmdk discs so the vmware build can work for
VirtualBox as well. However, the vmware tools will not, so you may want
to add the virtualbox tools instead.

* This will become a table of contents (this text will be scraped).
{:toc}


## How to add a vmx to virtualbox

As said, Virtual Box can run vmdks natively so you can run the vmware
images on it.

Check [VirtualBox (Linux, Windows, Mac OS X, Solaris)][oo-virtualbox]
for more details.


## How to add virtualbox tools

* Add the package `virtualbox-ose-guest-tools`.
* Alternatively, if the previous option does not work, you can try the
  following if you are using the PUEL VirtualBox (PUEL = Personal Use
  and Evaluation License ). When running the appliance with VirtualBox,
  go to Devices->Install Guest Additions. This will mount a virtual CD
  from the image VBoxGuestAdditions.iso. Copy the file
  VBoxLinuxAdditions-x86.run into a local folder. Write a script that
  will execute that file (as root) the first time the machine boots (and
  after all the services have been loaded)--if you are only interested
  in being able to share folders, you can run VBoxLinuxAdditions-x86.run
  vfs-module instead. Keep in mind that you will have to reboot the
  machine at the end of the installation. Upload the script and the
  VBoxLinuxAdditions-x86.run file to your appliance in SUSE Studio using
  the Overlay files section. Before building your appliance, make sure
  to include the following packages: kernel-source,
  linux-kernel-headers, make, gcc, and gcc-c++.
* To set up a folder to share, run the following command as root:

       mount -t vboxsf name -o uid=1000 mountpoint

* where 1000 is the user id of tux (see `/etc/passwd`), and name is the
  name given to the shared folders when you set them up in the
  VirtualBox shared folder settings dialog.


## How to enable PAE support in virtualbox

Simply select your VM and click settings at the top. Under System select
the Processor tab and check Enable PAE/NX.


[oo-virtualbox]: http://wiki.opensuse.org/openSUSE:How_to_use_downloaded_SUSE_Studio_appliances#VirtualBox
