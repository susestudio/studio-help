# Configuring Appliances

SUSE Studio's *Configuration* Tab allows easy configuration of several
aspects of your appliance:

**General**
Change your default locale and timezone, configure your network, enable
your firewall, and manage users and groups.

**Personalize**
Add new logo and background for your appliance, or pick from the default
options, and see an overview of how your appliance will look like during
boot and login in the Preview section.

![Studio Qs Config Personalize](studio-qs-config-personalize.png)

**Startup**
Define your default runlevel and any end user licence agreements.
Usually this is empty, but if add any EULAs, the user has to agree to
your licences on the first boot of your appliance.

**Server**
Set up a PostgreSQL or MySQL database server, including upload of an
existing data set and creation of database users.

**Desktop**
Configure automatic login for users and programs which are automatically
started after login.

**Appliance**
Set up advanced configuration for your appliance like disk, memory, and
logical volume manager. Many of these settings depend on the environment
your appliance will run in.

**Scripts**
Run custom scripts at the end of your build, on first boot, or every
boot. *Usually for experts only.*
