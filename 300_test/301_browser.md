# Using a Browser

---

## Unencrypted Keystrokes

Keystrokes sent to the testdrive and text shown in the console are not
encrypted.

---

Whenever an appliance is built, it is ready to be started and debugged
with the testdrive. To use the testdrive, proceed as follows:

1. Build your appliance as described in section ["Building
Appliances"][build-app]. Every format supported by SUSE Studio can be
used to start the testdrive.

2. Click *Testdrive* to start the session.

Use the usual procedure to start the system.

The testdrive is restricted to one hour to save resources. After this
time, it will be automatically shut down.

During your testdrive session, access some often used key combinations
on the left side. You cannot press the key combinations directly, as you
would influence your base system and not the appliance. Therefore, if
you press a button, the keystrokes will be forwarded to the appliance.

For example, switch to another text console by clicking one of the these
key combinations: *Ctrl+Alt+F1*, I or *Ctrl+Alt+F3*. To reboot, click
*Ctrl+Alt+Del*. If you have a graphical system in your appliance,
force-quit the window manager with *Ctrl+Alt+Back*.

---

## Used Appliance Format

If you do not know which format is used for testdrive, look at the upper
right corner of your Web browser to see the current format.

---


[build-app]: ../create/building-appliances.html
