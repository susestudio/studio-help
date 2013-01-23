# Xen guest

* First, extract the downloaded file: *.xen.tar.gz*
* Afterward you will see a new subdirectory with two files: *.raw* and *.xenconfig*

__Note__: Xen only works with Linux systems.

## Using Xen guests

You will need a Xen host system, which is a machine running the
Xen domain 0 kernel. In other words, the machine must be booted with
a special Xen-enabled kernel. To check this, run the command:<tt>xm
list</tt>. The result should be at least one line starting with
*Domain&ndash;0*

Edit the xenconfig configuration file you find in the downloaded appliance:

<pre>disk=[ "tap:aio:/root/xen/appliance.raw,xvda,w" ]</pre>

where /root/xen/appliance.raw is the path to the location where you unpacked
the downloaded appliance.

Also,

<pre>vif=[ "bridge=xenbr0" ]</pre>

should be replaced with

<pre>vif=[ "bridge=br0" ]</pre>

On a Xen server, the following command needs to be executed to activate
the guest system:

<pre>xm create -c file-with-suffix.xenconfig</pre>
Note that not all Xen kernel versions and guest/Domain&ndash;0
combinations work well. Currently, we recommend to use SLE11 Xen servers
along with SLE11 Xen guests.

### Xen and PXE
For building Xen guests on a PXE format, it is required to use mboot.c32
to be able to load the xen hypervisor via pxe. Here is an example how your
*pxelinux.0.config.xen* file should look like:

<pre>
DEFAULT KIWI-Boot

LABEL KIWI-Boot
        kernel mboot.c32
        append boot/xen.gz --- boot/linux !! kernel-options !! --- boot/initrd

LABEL Local-Boot
        localboot 0
</pre>
