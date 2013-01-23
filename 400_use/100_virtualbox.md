# Running Appliances on VirtualBox

The downloaded file has the suffix *.vmx.tar.gz*. After extraction you
will see a new subdirectory with two files with the suffixes *.vmdk* and
*.vmx*

[VirtualBox](http://www.virtualbox.org/wiki/Downloads) is another
popular solution for using the VMDK appliance format. It is free software (GPL)
and available on most popular platforms.

Virtualbox needs .ovf files to import virtual machines.
SUSE Studio built VMs contain vmdk and vmx files.
To use your VMs in VirtualBox, perform these steps:

* Download and extract the archive.
* Start VirtualBox. Open File->Virtual Media Manager.
* Choose Add and point to the previously extracted vmdk file.
* Create a new virtual machine.
* Do the routine steps (choose name, memory and OS type) until reaching the Virtual Hard Disk
section.
* In the Boot Hard Disk section choose "Use existing hard disk" and select the
disk from step 3.
* In the Summary screen recheck if your vmdk file is set as Boot Hard disk.
* Click Finish and start your VM.
