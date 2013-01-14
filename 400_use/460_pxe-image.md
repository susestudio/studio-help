# PXE images

The Preboot Execution Environment (PXE) is a boot protocol implemented in most BIOS
implementations. The protocol sends DHCP requests to assign an IP address. After it
got an IP address, it uses TFTP to download kernel and boot instructions.

A PXE image consists of a boot image and a system image like all other image types too.
With a PXE image, the image files are available separately and needs to be copied at
specific locations of a network boot server. 

The general procedure to work with PXE is like this:

1. Setup a Atftp server.
2. Use a DHCP server (or configure it like the example below).
3. Build the PXE image in SUSE Studio Onsite.
4. Deploy the PXE image.

Keep in mind, Aftp is *not supported* for SUSE Linux Enterprise 10.

## Setup a Atftp Server

Use the following steps to setup a Atftp server:

1. Install the packages 'atftp'.
2. Edit the file '/etc/sysconfig/atftpd'. Set or modifiy the following variables:
<pre>ATFTPD_OPTIONS="--daemon --no-multicast"
ATFTPD_DIRECTORY="/srv/tftpboot"</pre>
3. Run the Atftp daemon:
<pre>rcatftpd start</pre>

After these steps, the Atftp server is configured successfully.

## Use a DHCP server

In contrast to the Atftp server setup, the following DHCP server setup can only serve as
an example. Depending on your network structure, the IP addresses, ranges and domain settings,
all these parameters needs to be adapted in order to allow the DHCP server to work within your network.

If you already have a DHCP server running in your network, make sure that the filename and
server information is provided by your server. The following steps describe how to setup
a new DHCP server instance:

1. Install the package 'dhcp-server'.

2. Create the file '/etc/dhcpd.conf' and include the following code:
<pre>option domain-name "example.org";
option domain-name-servers 192.168.100.2;
option broadcast-address 192.168.100.255;
option routers 192.168.100.2;
option subnet-mask 255.255.255.0;
default-lease-time 600;
max-lease-time 7200;
ddns-update-style none; ddns-updates off;
log-facility local7;
subnet 192.168.100.0 netmask 255.255.255.0 {
  filename "pxelinux.0";
  next-server 192.168.100.2;
  range dynamic-bootp 192.168.100.5 192.168.100.20;
}</pre>

3. Edit the file '/etc/sysconfig/dhcpd' and setup the network interface the server should listen on:
<pre>DHCPD_INTERFACE="eth0"</pre>

4. Run the DHCP server:
<pre>rcdhcpd start</pre>


## Building the Appliance

Build the appliance as usual, but select as default format 'PXE/Net boot' from the 'Build' tab.


## Deploying the PXE Image

In order to make use of the image, all related parts needs to be copied
onto the boot server. Proceed with the following steps:

1. Create a temporary directory and change to it:
<pre>mkdir /tmp/mypxe-result
cd /tmp/mypxe-result</pre>

2. Copy the boot and kernel image:
<pre>cp initrd-netboot-suse-*.splash.gz \
/srv/tftpboot/boot/initrd
cp initrd-netboot-suse-*.kernel \
/srv/tftpboot/boot/linux</pre>

3. Copy the system image and MD5 sum:
<pre>cp suse-*-pxe-client.* /srv/tftpboot/image</pre>

4. Copy the image boot configuration. Normally the boot configuration applies to one
client which means it is required to obtain the MAC address of this client. If the boot
configuration should be used globally, copy the KIWI generated file as config.default:
<pre>cp suse-*-pxe-client.*.config \
/srv/tftpboot/KIWI/config.MAC</pre>

5. Check the PXE configuration file. The PXE configuration controls which kernel and initrd are loaded and which kernel parameters are set. To make sure the configuration is valid insert the following information into the file '/srv/tftp-boot/pxelinux.cfg/default':
<pre>DEFAULT KIWI-Boot
LABEL KIWI-Boot
  kernel boot/linux
  append initrd=boot/initrd vga=0x314
  IPAPPEND 1
LABEL Local-Boot
  localboot 0</pre>

6. Connect the client to the network and reboot.


## Alternative Protocols

The previous subsections used the TFTP protocol. With PXE, the download protocol is fixed. 
You cannot change the way how the kernel and boot image (initrd) is downloaded.

However, as soon as Linux takes over control, the download protocols http, https, and ftp
are supported too. In order to use these additional protocols, use the following kernel
parameters:

kiwiserver
: Name or IP address of the server who implements the protocol

kiwiservertype
: Name of the download protocol; could be one of http, https, or ftp

Open the file '/srv/tftpboot/pxelinux.cfg/default' on your PXE boot server and change
the 'append' line accordingly. Find more details in the KIWI documentation (package
kiwi-doc).

