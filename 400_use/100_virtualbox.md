# How to run appliances on VirtualBox

The downloaded file: '''.vmx.tar.gz'''. After extraction you will see a new
subdirectory with 2 files: '''.vmdk''' and '''.vmx'''

[VirtualBox](http://www.virtualbox.org/wiki/Downloads) is another
popular solution for using the VMDK appliance format. It is free software (GPL)
and available on most popular platforms.

Virtualbox needs .ovf file to import virtual machines.
SUSE Studio built VMs contains vmdk and vmx files.
To use your VMs in Virtualbox perform these steps:

* Download and extract the archive;
* Start Virtualbox. Open File->Virtual Media Manager;
* Choose Add and point to the previously extracted vmdk file;
* Create a new virtual machine;
* Do the routine steps (choose name, memory and OS type) until Virtual Hard Disk
section;
* In the Boot Hard Disk section choose "Use existing hard disk" and select the
disk from step 3;
* In the Summary screen recheck if you got your vmdk file as Boot Hard disk;
* Click Finish and start your VM.
