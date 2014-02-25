# Building Appliances

SUSE Studio helps you build your appliance in a variety different
formats. Each format is used for a different purpose:

##Physical media formats##

**USB stick/hard disk image**
Dump this format on your USB stick or hard disk and boot from it. You
may need to instruct the machine's BIOS to boot from an external source
if you're usign a USB stick. You can write the disk image by using either
the `dd` command or image writing software on any existing OS.

**Live CD/DVD (.iso)**
Use this format if you want to burn your appliance on CD or DVD. This is
the easiest way to prepare bootable media. Simply download the .iso
file and burn it to disk via any existing OS.

**Preload ISO (.iso)**
This is an ideal format if you are planning to perform installations on physical
machines without a 'live' experience (running from the
media *without installing*).  Your appliance's disk image will be
wrapped in a simple bootable installer that asks only which hard disk to
install to. Your installation media can be prepared on any existing OS
by simply burning the .iso file to disc.

**DASD (.raw)** and **zFCP (.raw)**
These are formats found on IBM zSeries. Choose between DASD
(Direct Access Storage Device) or zFCP (Fibre Channel Attached SCSI
Disks) if you want to start from a SCSI disk.
For further details, refer to the SLES Deployment Guide at
http://www.suse.com/documentation/sles11/book_sle_deployment/data/sec_i_yast2_s390_part.html


##Virtual formats##

[VirtualBox]: https://www.virtualbox.org/
[VMware]:     http://www.vmware.com/products/player/
[KVM]:        http://www.linux-kvm.org
[OVF]:        http://www.dmtf.org/standards/ovf

**VMware / VirtualBox / KVM (.vmdk)**
Use this format if you want to start your appliance as a virtual machine
on VMware, VirtualBox, or KVM-based hypervisors. This is another method
to test an appliance without formatting any hard disk.
[VirtualBox] and [VMware] virtualization applications are available for
most host operating systems.  [KVM] virtualization is for Linux only.

**OVF virtual machine (.ovf)**
[Open Virtualization Format (OVF)][OVF] is an open, standards-based
format for virtual machines.  A variety of hypervisors including SUSE
Cloud, VirtualBox, VMware ESX, IBM SmartCloud, and Oracle VM support
creating virtual machines by importing an .ovf file.

**SUSE Cloud / OpenStack / KVM (.qcow2)**
This format provides the best experience when virtualizing with QEMU/KVM hosts, 
or deploying on SUSE Cloud.
Qcow2 is a dynamically expanding copy-on-write file system.
Version 2 adds support for multiple snapshots in a single qcow2 file.

**Xen guest**
Use this format if you want to run your appliance on a Xen host system,
such as SUSE Linux Enterprise Server. Xen guests works only on
Xen-enabled Linux hosts, including many virtual hosting providers.

**Hyper-V (.vhd)**
This format allows seamless integration with Microsoft's Hyper-V
virtualization, available in Windows Server.  Your appliance will
include all the necessary drivers to integrate with the Hyper-V
management console and provide optimum performance.  A Hyper-V-enabled
Microsoft Windows Server is required to run this format.

##Cloud formats##

**Amazon EC2 image**
If you plan to use Amazon Web Services to host your server, this format
will properly configure the appliance for you do to so. Link your AWS
credentials to your Studio account, and you will be able to upload and
launch EC2 instances directly from SUSE Studio. See [Use > Amazon EC2]
for more information.

[Use > Amazon EC2]: ../use/amazon-ec2.html

**Azure Image**
Windows Azure is another option for hosting your appliances. The Azure
Image format will do the hard work for you, building a .vhd file
tailored for hosting on Microsoft's Windows Azure service. Upload your
Azure publishsettings file to your Studio account, and you will be able
to create images on Windows Azure, then jump over to the management
portal to instantiate and manage your virtual machines.
See [Use > Windows Azure] for more information.

[Use > Windows Azure]: ../use/windows-azure.html
