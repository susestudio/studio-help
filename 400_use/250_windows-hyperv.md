# Running Appliances on Microsoft Hyper-V

The downloaded file has the suffix *.vhd.zip*. 

**Supported Guests**

* SLES 11 x86_64
* SLES 11 x86


**Supported Hosts**

* Microsoft Windows Server 2008 R2 SP1
* Microsoft Windows Server 2003 SP2 (desirable)


Microsoft users, follow these steps:

**On your SUSE Studio guest:**
1. Create your appliance if you haven't done yet.
2. Go to the 'Build' tab and select 'Hyper-V (.vhd)' as format.
3. Wait until the appliance has been built.
4. Download your appliance.
5. Move the *.vhd* file to the Hyper-V host.


**On your Microsoft guest:**
1. Unzip the **.vhd.zip** file.
2. Start your Hyper-V Manager and configure a new virtual machine.
3. Use 'New Virtual Machine'.
4. At 'Connect Virtual Hard Disk' select 'Use existing virtual hard disk'.
5. Point it to the unzipped VHD file created by Studio.
6. Start the machine.

