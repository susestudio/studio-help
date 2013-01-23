# LiveCD/DVD (.iso)

SUSE Studio supports the creation of custom bootable CDs and DVDs.
Optionally, these discs can support installation from the live media to
the hard drive as well.  Most operating systems make disc burning easy.
Once you have downloaded the file completely, simply right-click on the
file and select something like "burn ISO file to disk".


## Notes to LiveCD/DVD

* SUSE Studio supports the creation of custom bootable CDs and DVDs.
* Optionally, these discs can support installation from the live media
  to the hard drive as well.
* Most operating systems make disc burning easy. Once you have
  downloaded the file completely, simply right-click on the file and
  select something like "burn ISO file to disk".
<!--- Identical content as in the first paragraph. Delete? -->

## How to customize the yast2-live-installer workflow

* The yast2-live-installer reads its workflow configuration from
  `/etc/YaST2/control.xml`.
* Replace this file with your own and you'll get a new workflow.


## How to apply the customizations made for the default user to newly created ones

The modified files added to the appliance are stored in
`/home/tux/*` and should be copied to the `/etc/skel` directory. Then new
users created at installation time or later will have the same behaviour
and appearence as the liveCD default one.
