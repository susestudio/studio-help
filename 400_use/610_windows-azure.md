# Windows Azure

SUSE Studio supports building and deploying system images to 
[Windows Azure](http://windowsazure.com/), Microsoft's IaaS offering. In order
to use this service, you'll need to have a
[Windows Azure account](https://www.windowsazure.com/en-us/pricing/free-trial/),
and setup at least one 
[Azure storage account](https://www.windowsazure.com/en-us/manage/services/storage/)
to upload your images into.

* [Compatible images](#compatible_images)
* [Appliance configuration](#appliance_configuration)
* [Building Azure images](#building_azure_images)
* [Azure dashboard](#azure_dashboard)
* [Managing virtual machines](#managing_virtual_machines)
* [Additional information](#additional_information)

## Compatible images

There are some limitations on the images that can be run in Azure's
infrastructure:
* Only x86-64 kernels are compatible
* Terminal access only; no GUI support

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
Under normal circumstances, network settings should be configured for automatic
discovery via DHCP.

### Firewall

Azure provides its own firewall and port forwarding layer, and requires some 
open ports in order to provision a new virtual machine. We recommend disabling 
your appliance's built-in firewall when using Azure. If you do not disable the firewall, your image may not be externally accessible when running in Azure.

### Users and groups

Administrative credentials are provided via Azure's provisioning tool. The root
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

The desktop login features are not applicable on a text-only appliance.

### Disk size

Azure relies on fixed-size disk images for its appliances. Once an image has
been deployed to Azure, there is no easy way to resize the disk. Please be sure
to leave your appliance sufficient disk space for its expected life, but be 
aware that you may incur storage costs per gigabyte.

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

## Azure Dashboard

### Credentials

The first time you visit the [Azure dashboard](https://susestudio.com/azure)
you will be prompted to provide Azure credentials. One of the coolest features 
of your Azure account is that you don't need to fill out a complex form: just download your 
[settings file](https://windows.azure.com/download/publishprofile.aspx) 
and upload it into Studio - we'll validate your settings and connect to your 
storage account in one click. If you have more than one storage account, select
the one you'd like Studio to upload to, and _Save_ the change. Now you can head
to the dashboard.

### Uploading images

The dashboard provides a list of your appliances and the versions that you've 
built Azure images for, but not yet uploaded. Select an appliance by name, then select the version, and click _Upload_. We'll queue the upload job, and list the appliance below.  Uploads go pretty quickly, so hang around for a minute or two,
and we'll keep you updated on the progress. When your upload is complete, we'll 
show you the name of your Windows Azure Image.

Once the upload is complete, follow the link over to the 
[Azure Management Portal](https://manage.windowsazure.com/#Workspace/VirtualMachineExtension/images)
and follow the brief instructions on the dashboard for provisioning a new 
Virtual Machine from your uploaded image.

### Removing images

Once you've uploaded an image to Azure, you may incur storage costs. For your
convenience, you can click the remove icon ( _x_ ) on any uploaded image to
deregister the image and remove it from Azure Storage. We strongly recommend 
that you double-check your Azure account, though, as both the registered virtual
machine image, and the storage blob can be locked during the removal process, 
prevent it from completing successfully.

If you manually remove an image from Azure, but it is still showing on Studio's
Azure dashboard, removing will simply clean up the entry on the dashboard.

## Managing Virtual Machines

We feel that every tool should do the job its best at, and for Studio that is
generating system images. For that reason, we've decided not to implement any
virtual machine management into our dashboard, but leave that up to the 
[Azure Management Portal](https://manage.windowsazure.com/).

## Additional information

* [SUSE Studio Blog posts about Azure](http://blog.susestudio.com/search/label/azure)
* [Azure resources at SUSE.com](https://www.suse.com/SearchUI/query?term=azure)
* [Windows Azure documentation](https://www.windowsazure.com/en-us/documentation/)
* [3-month free trial](https://www.windowsazure.com/en-us/pricing/free-trial/)

