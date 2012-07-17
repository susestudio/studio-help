# Building Images

Each appliance, independently of the format, is given a version number in the format `major.minor.release`. It is recommended to use the following scheme for version numbering:

* Increment the release number, if there are no software related changes.
* Update the minor number, and change release to 0, if you add or remove any packages.
* Update the major number, and change minor and release to 0, when you have done substantial modifications to your appliance.

You can build images in a variety of [formats](appliance-formats.html) on the *Build* tab:

1. Select your default format. This is the format your appliance will be built with initially. Once you have a successful build in your *default format*, you will have the opportunity to build *additional formats*.

2. Select any additional formats appropriate for your appliance.

4. Adjust the version number of your appliance, if necessary. *The release number will automatically increment on each build.*

5. Check the messages for tips and errors on the left side. If your appliance has to fit on a CD (700 MB limit) you may have to deselect some software via the *Software* tab.

6. Click the "Build" button to start the creation process. Your build job will be placed in queue with other users. *Depending on the size and complexity of your appliance, and the number of jobs in queue, building may take anywhere from two minutes to hours.*

7. Download your appliance, or start a [Testdrive](../quickstart/testdrive-your-appliance.html)!

# Building additional formats

It is possible to build additional formats after having successfully built your default format already:

3. Press the "Build additional" button on the respective appliance version to start the build process. Each format is a separate build job which will be placed in queue.

*Be aware that each additional format consumes space against your account's storage allotment.*
