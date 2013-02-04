# VMware

Virtual machines in the VMware format are similar to disk images, but
with additional information specifying memory and hard drive sizes.
They do not include a swap partition as it is common practice to leave
memory management to the hypervisor. The swap setting in SUSE Studio
only applies to disk images.  To use these images, simply open the file
in VMware, VMware player, or VirtualBox.  This set of howtos are
specific to VMware machines. They focus on how to make changes
after the image has been built, usually after booting for the first time.

* This will become a table of contents (this text will be scraped).
{:toc}


## How to enable VMware Server, ESX, and ESXi support

The VMware image produced by SUSE Studio runs on VMware Player and
Workstation. VMware Server, ESX, and ESXi require a different .vmdk
format and hence conversion is required. There are several options:

* Convert .vmdk to OVF format:
  * Open-OVF on [Gitorious][git-open-ovf]: and [SourceForge][sf-open-ovf].
  * [VMware OVF tool][vmw-ovf].
* Convert and import directly using [VMware vCenter converter][vmw-converter].

For VMware ESX 4 (does not work in 3.5), you can also use the following
command on a ESX host:

    vmkfstools -d thin -i original.vmdk new.vmdk


##     How to create preallocated disks for better performance

* You can convert a growable virtual disk (which is what SUSE Studio
  creates) to a preallocated disk with 'vmware-vdiskmanager'. It is
  bundled with the standard VMWare installation.
* Preallocated disks offer better I/O performance over growable ones at
  the expense of disk space.
* The following command converts the growable "sourceDisk.vmdk" to a
  preallocated "destinationDisk.vmdk":

    vmware-vdiskmanager -r sourceDisk.vmdk -t 2 destinationDisk.vmdk


## How to change hardware on VMware

All hardware in VMware is defined in the .vmx file. This is a text
file you can edit with any text editor. Be careful when editing this
file. Also, edit this file before booting since during first boot
hardware detection is performed. Afterward it is too late to make
permanent changes.


## How to change configurations on VMware disc

Use the vmware-mount tool utility, which is part of the vmware-tools,
to mount the disc and change configurations before you boot.


## How to add a new ethernet

See how to change hardware on VMware.


## How to add a swap file

If you need swapping in
the VMware image, setup Linux to swap to a file.


## How to upload OVF images to an ESX server

VMware's [Open Virtualization Format Tool][vmw-ovf2] can be used to
deploy OVF images directly to an ESX server.

Note: This is a basic Linux use case. For Windows or additional options,
refer to VMWare's user guide.

Once the tool is installed, extract your OVF image:

    $ tar -zxvf JeOS.x86_64-0.0.1.ovf.tar.gz

and execute:

    $ ovftool JeOS.x86_64-0.0.1.ovf vi://<esx-server>/

The tool asks for login credentials and automatically adds the VM to the
inventory.

    Opening OVF source: JeOS.x86_64-0.0.1.ovf
    Please enter login information for target vi://<esx-server>/
    Username: root
    Password: ******
    Opening VI target: vi://root@<esx-server>/
    Warning:
     - The specified operating system identifier '' (id: 83) is not supported on the selected host. It will be mapped to the following OS identifier: 'Other Linux (64-bit)'.
    Deploying to VI: vi://root@<esx-server>/
    Disk Transfer Completed
    Completed successfully


## Known Issues

### VMware Player 3.0 crashes on Windows Server 2003

This is a VMware Player bug - it crashes the host OS (blue screen of
death) when looking for a CD-ROM drive on first boot. To work around this
problem, edit the .vmx file and remove the following lines:

    ide0:0.present = "true"
    ide0:0.deviceType = "cdrom-raw"
    ide0:0.autodetect = "true"
    ide0:0.startConnected = "true"

The appliance should now be able to boot normally. You can add these lines again
after first boot if you want CD-ROM support in your VM, or add it using
the VMware Player user interface.






[git-open-ovf]: http://gitorious.org/open-ovf
[sf-open-ovf]: http://sourceforge.net/projects/open-ovf/develop
[vmw-ovf]: http://www.vmware.com/appliances/getting-started/learn/ovf.html
[vmw-converter]: http://www.vmware.com/products/converter/
[vmw-ovf2]: http://www.vmware.com/support/developer/ovf/
