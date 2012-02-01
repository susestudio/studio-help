# VMware Howtos

Virtual machines in the VMware format are similar to disk images, but with special information which specifies memory and hard drive sizes. They do not include a swap partition as it is common practice to leave memory management to the hypervisor. The swap setting in SUSE Studio only applies to disk images.  
To use these images, simply open the file in VMware, VMware player, or VirtualBox.  
This set of howtos are specific to VMware machines. They are focused on changing some stuff after the image is built but usually after booting for the first time.  


## Note to VMware howtos

* Virtual machines in the VMware format are similar to disk images, but with special information which specifies memory and hard drive sizes.
* Note that Virtual Machine images built in SUSE Studio do NOT include a Swap space. It is a common practice to leave swap management up to the hypervisor.
* To use these images, simply open the file in VMware, VMware player, or VirtualBox.
* This set of howtos are specific to vmware machines. They are focused on changing some stuff after the image is build but usually after booting for the first time.


## How to enable VMware Server, ESX, and ESXi support

The VMware image produced by SUSE Studio runs on VMware Player and Workstation. VMware Server, ESX, and ESXi require a different .vmdk format and hence conversion is required. There are several possible options here:

* Convert to .vmdk to OVF format:
  * Open-OVF on [Gitorious][git-open-ovf]: and [SourceForge][sf-open-ovf].
  * [VMware OVF tool][vmw-ovf].
* Convert and import directly using [VMware vCenter converter][vmw-converter].

For VMware ESX 4 (does not work in 3.5), you can also use the following command on a ESX host:

    vmkfstools -d thin -i original.vmdk new.vmdk


##     How to make preallocated disks for better performance

* You can convert a growable virtual disk (which is what SUSE Studio creates) to a preallocated disk with 'vmware-vdiskmanager'. It is bundled with the standard VMWare installation.
* Preallocated disks offer better I/O performance over growable ones at expense of disk space.
* The following command converts the growable "sourceDisk.vmdk" to a preallocated "destinationDisk.vmdk":

    vmware-vdiskmanager -r sourceDisk.vmdk -t 2 destinationDisk.vmdk


## How to change hardware on vmware

All hardware in vmware is defined into the .vmx file. This is a text file you can edit with any text editor. Be careful when editing this file. Also, edit this file before any boot, as on the first boot the hardware detection will happen and it would be too late to make permanent changes.


## How to change configurations on vmware disc

Use vmware-tools. In short, use the vmware-mount tool utility. This way you can mount the disc and change configurations before you boot.


## How to add a new ethernet

See how to change hardware on vmware


## How to add a swap file

For those developers that really feel they need to have swapping in their VMware image, you can setup Linux to Swap to a file.


## How to upload OVF images to an ESX server

VMware's [Open Virtualization Format Tool][vmw-ovf2] can be used to deploy OVF images directly to an ESX server.

Note: This is a basic Linux use case. For Windows or additional options please refer to VMWare's user guide.

Once the tool is installed, extract your OVF image:

    $ tar -zxvf JeOS.x86_64-0.0.1.ovf.tar.gz

and execute:

    $ ovftool JeOS.x86_64-0.0.1.ovf vi://<esx-server>/

Tool asks for login credentials and automatically add the VM to the inventory.

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

This is a VMware Player bug - it crashes the host OS (blue screen of death) when looking for a CD-ROM drive on first boot. To workaround this problem, edit the .vmx file and remove the following lines:

    ide0:0.present = "true"
    ide0:0.deviceType = "cdrom-raw"
    ide0:0.autodetect = "true"
    ide0:0.startConnected = "true"

The appliance should now be able to boot normally. You can add them back after first boot if you want CD-ROM support in your VM, or add it using the VMware Player user interface.






[git-open-ovf]: http://gitorious.org/open-ovf
[sf-open-ovf]: http://sourceforge.net/projects/open-ovf/develop
[vmw-ovf]: http://www.vmware.com/appliances/getting-started/learn/ovf.html
[vmw-converter]: http://www.vmware.com/products/converter/
[vmw-ovf2]: http://www.vmware.com/support/developer/ovf/
