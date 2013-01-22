# Exporting

Exporting your appliance configuration can be useful in the following cases:

1. You want to build your appliance locally with [KIWI](http://en.opensuse.org/Portal:KIWI).
This is for experts only who want to fine-tune their appliance.
2. You want to export your appliance configuration, import it in
your local SUSE Studio server, and publish it in your SUSE Gallery.

For both use cases you need the KIWI export file. The KIWI export file
is a compressed tar file, which contains all the necessary configurations to build your appliance without SUSE Studio.
The KIWI export file is available when you go to the build tab of your appliance and click the 
'Export your appliance's KIWI configuration' link to activate the download.


## Build your appliance locally with KIWI

This use case is out of scope for this documentation. Refer to the [KIWI Portal](http://en.opensuse.org/Portal:KIWI)
or read the [KIWI documentation](http://git.berlios.de/cgi-bin/gitweb.cgi?p=kiwi;a=blob;f=doc/kiwi.pdf) for further details.
Additionally, consult the README in your download for more details. 


## Export, Import, and Publish to SUSE Gallery

If you want to build your appliance on your own SUSE Studio server, the following procedure has currently some limitations:

**Limitations**:
* Appliance needs a complete rebuild.
* Package versions are not stored and not imported from KIWI exports.
* Newer build images might have newer package versions.
* KIWI exports contain only configuration settings for the selected image type (see also 'Configuration' > 'Appliance' tab).
* Packages from user repositories or uploaded RPM packages are not part of the KIWI export. 
You need to manually upload them to the imported appliance.
* Some configuration options are only available in SUSE Studio Onsite (like SUSE Manager).


After the download is finished, you can import your KIWI export file to your local SUSE Studio Onsite server:

1. Download your KIWI export file from the 'Build' > 'Appliance' tab.
2. Click the 'Home' tab and the 'Create new appliance...' link.
3. Import the downloaded KIWI export file by clicking the 'Import' link of your preferred base template.
4. Click the 'Upload configuration file...' button and select the KIWI export file.
5. After the file has been successfully uploaded, click the 'Create appliance' button. This process may take a while.
6. Build your appliance.
7. After your appliance has been successfully built, click the 'Share' tab.
8. Add a description, fill out the Website and Tags text fields, give a username for sharing, and click the 
'Share' button to publish your appliance to SUSE Gallery.

