# Updating via SUSE Lifecycle Management Server

SUSE Studio can be customized to select an update scenario for an appliance:

* No updates
* Through the classic Novell Customer Center (NCC). This is the current behaviour.
* Via SUSE Lifecycle Management Server (SLMS)

To install an update through SLMS, prepare your appliance in SUSE Studio first:

1. Log in to SUSE Studio and select your preferred appliance (or create a new one).
2. Go to the 'Update' tab and check 'Update appliance using SUSE Lifecycle Management Server'.
3. Enter the vendor name and the SLMS hostname.
4. Optionally upload a HTTPS certificate.
5. Optionally create one or more GPG keys. This allows to install packages signed by custom GPG keys.
6. Create your appliance.

Your SUSE Studio appliance is ready to register in SLMS.

If you additionally want to test the functionality on your SUSE Lifecycle Management server, do the following:

1. Refresh your appliance list in SLMS. You should see your appliance appear.
2. Adjust the appliance so it can be registered. Create customers, subscriptions, and other needed data.
3. Run and register the appliance.
4. Modify the appliance in Studio, for example, add a package.
5. Refresh your appliance list in SLMS.
6. Create a patch in SLMS for your appliance.
7. Update the registered appliance.

If you need more information, refer to the separate [SLMS documentation](https://www.suse.com/documentation/slms1/).

