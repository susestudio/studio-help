# Working with Overlay Files

SUSE Studio has the concept of *overlay files*. Overlay files are all
files which are modified or created after the installation during your
testdrive. These files can be incorporated back into your configuration
and automatically added during the next build of your appliance. Usually
the procedure with overlay files looks like this:

1. Build your appliance as described in section ["Creating
Appliances"][create].

2. Start the *testdrive*.

3. Create, remove, or modify files in the testdrive.

4. Click the *Modified Files* link. Usually you can leave the exclude
   paths as they are. If you want to restrict files to your home
   directory, enter `/home` in the *Include paths containing:* text
   field.

5. Select the files that you want to include to your archive.

6. Press *Add selected* files to appliance. If your file list is very
   large, it is better to create an archive. In this case, check *Bundle
   selected files as archive with name* and enter the name of your
   archive.

7. Switch back to your SUSE Studio's appliance page and go to *Files*.
   You should see your selected files from the previous step.

8. Build your appliance. The added files are incorporated into your
   appliance.


[create]: ../create/index.html
