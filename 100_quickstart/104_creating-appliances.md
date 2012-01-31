# Creating Appliances

SUSE Studio can create appliances in different formats. Each format is used for a different purpose:

**Live CD/DVD (.iso)**  
Use this format, if you want to burn your appliance on CD or DVD. This is the easiest way and works on both Linux and Windows.

**USB stick/hard disk image**  
Dump this format on your USB stick or hard disk and boot from it. You need knowledge about the `dd` command. This method works on both Linux and Windows.

**VMware / VirtualBox (.vmdk)**  
Use this format, if you want to start your appliance on a virtual machine like VMware or VirtualBox. This is another method to test an appliance without formatting any hard disk. This method works on both Linux and Windows.

**Xen guest**  
Use this format, if you want to run your appliance on a Xen host system. This is useful for experts only and is not covered in this manual. Xen guests works for Linux only.