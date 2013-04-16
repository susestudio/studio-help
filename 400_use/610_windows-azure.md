# Windows Azure

SUSE Studio supports building and deploying system images to 
[Windows Azure](http://windowsazure.com/), Microsoft's IaaS offering.

* [Compatible images](#compatible_images)
* [Appliance configuration](#appliance_configuration)
* [Building Azure images](#building_azure_images)

## Compatible images

There are some limitations on the images that can be run in Azure's
infrastructure:
* Only x86-64 kernels are compatible
* Terminal access only; no UI support

As a result, you can only use a subset of Studio's templates to create a new
appliance. The Azure format is available for the following templates:
* SUSE Linux Enterprise Server 11 SP2 or newer, 64-bit, JeOS or Server
* openSUSE 12.3 or newer, 64-bit, JeOS or Server

Windows Azure also has basic images available natively. The images published to
Azure's internal Gallery and available in SUSE's Gallery; these are an ideal
foundation to build your custom Studio appliance.
* [SLES 11 SP2 for Windows Azure](https://susestudio.com/a/02kbT4/sles-11-sp2-for-windows-azure)
* [openSUSE 12.3 for Windows Azure](https://susestudio.com/a/02kbT4/opensuse-12-3-for-windows-azure)

## Appliance configuration

Once you have selected an Azure-friendly template, there are some suggested
configurations in order to be compatible with Azure's infrastructure.

### Network

Azure's infrastructure provides DNS and both public & private IP allocation.
Under normal circumstances, Netork settings should be configured for automatic
discovery via DHCP.

### Firewall

Azure provides its own firewall and port forwarding layer, and requires access
to some pseudorandom ports in order to provision a new virtual machine. We
recommend disabling you appliance's built-in firewall when using Azure. If you 
do not disable the firewall, your image will not be externally accessible when
running in Azure.

### Users and groups

Administrative credentials are provided via Azure's provisioning tool, the root
password defined in Studio will be removed; root cannot log into Azure virtual
machines. You may define additional users for specific internal roles, but if
you only require an account for administrative access, we suggest using the
account configured during system provisioning.

### Logo and background

Since virtual machines in Azure have no graphical UI, Studio's logo and 
background will only affect pages describing your appliances, such as the 
Gallery page if an appliance is published there.

### End user license agreement

Azure's provisioning process requires an uninterrupted boot process, with no
end user interaction. As a result, Studio's EULA configuration cannot be used.
If you need to present a EULA in a Windows Azure appliance, you should configure
it via a separate script the user must run manually after the appliance has
successfully booted.

### Desktop

The desktop login features are irrelevant on a text-only appliance.

### Disk size

Azure relies on fixed size disk images for its appliances. Once an image has
been deployed to Azure, there is no easy way to resize the disk. Please be sure
to leave your appliance sufficient disk space for its expected life, but be 
aware that you will incur storage costs per Gigabyte.

### LVM

LVM-based disk configurations have not been tested within Azure. We recommend 
not using any LVM configuration at this time.

### Additional options

Xen host mode should be disabled for Azure appliances; this may cause kernel
conflicts.

VMware CD-ROM support, enabled by default, may be disabled for Azure appliances.

### Scripts

Refrain from adding any manual interactions to boot/firstboot scripts, as this
may block provisioning.

## Building Azure images

If you have selected (or cloned) a compatible template, you will have the 
_Azure Image_ format available on the Build tab. Azure images are different than
Hyper-V images, although they are both varieties of the Virtual Hard Disk (.vhd)
format. Hyper-V images will not function in Windows Azure, and Azure images may
not boot properly on Microsoft Hyper-V Server.

During the build process, 
[Windows Azure Linux Agent](http://software.opensuse.org/package/WALinuxAgent),
and its dependencies will be injected into the image. The agent is open source
and published under the Apache 2.0 license. The source is available via the 
[windows-azure account on Github](https://github.com/Windows-Azure/WALinuxAgent).
The agent is used by Azure's infrastructure to provision the appliance.

The Azure format is not Testdriveable, we suggest you use a hard disk image for
iterating and testdriving, then build the Azure image when you are ready to
publish.

