# LiveCD/DVD (.iso)

SUSE Studio supports the creation of custom bootable CDs and DVDs.
Optionally, these discs can support installation from the live media to
the hard drive as well.  Most operating systems make disc burning easy.
Once you have downloaded the file completely, simply right-click on the
file and select something like "burn ISO file to disc".


## Notes to LiveCD/DVD

* SUSE Studio supports the creation of custom bootable CDs and DVDs.
* Optionally, these discs can support installation from the live media
  to the hard drive as well.
* Most operating systems make disc burning easy. Once you have
  downloaded the file completely, simply right-click on the file and
  select something like "burn ISO file to disc".


## How to customize the yast2-live-installer workflow

* The yast2-live-installer reads its workflow configuration from
  `/etc/YaST2/control.xml`.
* Overlay this file with your own and you'll get a new workflow .


## How to apply the customizations on the default user to the new created ones

The modified files added to the appliance that are stored in
`/home/tux/*` should be copied to the `/etc/skel` directory so the new
users created at the installation time (or later) had the same behaviour
and appearence as the liveCD default one.
