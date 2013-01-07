# Xen guest

* Extension of downloaded file: *.xen.tar.gz*
* After extraction you will see a new subdirectory with 2 files: *.raw* and *.xenconfig*

__Note__: Xen only works with Linux systems.

## Using Xen guests

You will need a Xen host system. This is a machine running the
Xen domain 0 kernel. In other words the machine must be booted with
a special Xen-enabled kernel. To check this run the command:<tt>xm
list</tt> The result should be at least one line starting with
*Domain&ndash;0*

Edit xenconfig configuration file you find in downloaded appliance:

<pre>disk=[ "tap:aio:/root/xen/appliance.raw,xvda,w" ]</pre>

where /root/xen/appliance.raw is path to place where you unpacked
downloaded appliance.

Also

<pre>vif=[ "bridge=xenbr0" ]</pre>

should be replaced by

<pre>vif=[ "bridge=br0" ]</pre>

On a Xen server, the following command needs to be called to activate
the guest system:

<pre>xm create -c file-with-suffix.xenconfig</pre>
Please note not all Xen kernel versions and guest/Domain&ndash;0
combinations work well. So far we recommend to use SLE11 Xen servers
along with SLE11 Xen guests.

### Xen and PXE
For building xen guests on a PXE format, it is required to use mboot.c32
to be able to load the xen hypervisor via pxe. Here is an example how your
*pxelinux.0.config.xen* should look like:

<pre>
DEFAULT KIWI-Boot

LABEL KIWI-Boot
        kernel mboot.c32
        append boot/xen.gz --- boot/linux !! kernel-options !! --- boot/initrd

LABEL Local-Boot
        localboot 0
</pre>
