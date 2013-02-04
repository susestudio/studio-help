# Building Images

Each appliance, independent of the format, is given a version number
in the format `major.minor.release`. It is recommended to use the
following scheme for version numbering:

* Increment the release number, if there are no software related changes.
* Update the minor number and change release to 0 if you add or remove
  any packages.
* Update the major number and change minor and release to 0 when you
  have done substantial modifications to your appliance.

You can build images in a variety of [formats] on the *Build* tab:

[formats]: appliance-formats.html

1. Select your default format. This is the format in which your appliance will
   initially be built in. Once you have a successful build in your
   *default format*, you will have the opportunity to build *additional
   formats*.

2. Select any additional formats appropriate for your appliance.

4. Adjust the version number of your appliance, if necessary. *The
   release number will automatically increment on each build.*

5. Check the messages for tips and errors on the left side. If your
   appliance has to fit on a CD (700 MB limit), you may have to deselect
   some software via the *Software* tab.

6. Click the "Build" button to start the creation process. Your build
   job will be enqueued with those of other users. *Depending on the size
   and complexity of your appliance and the number of jobs in the queue,
   building may take anywhere from two minutes to several hours.*

7. Download your appliance or start a [Testdrive]!

[Testdrive]: ../quickstart/testdrive-your-appliance.html

# Building additional formats

It is possible to build additional formats after having successfully
built your default format:

3. Press the "Build additional" button on the respective appliance
   version to start the build process. Each format is a separate build
   job, which will be placed in the queue.

*Be aware that each additional format consumes space against your
account's storage allotment.*
