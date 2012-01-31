# Adding Software

Usually you derive your appliance from a base template and add missing software using Software link, if needed. Find the link in the second row of your browser window of your SUSE Studio Web page. Choose your software from three sources:

1. **From a Pre-Configured Base Template.**  Add software from the already available base template. For example, if you choose openSUSE 11.3, you can add everything that is available from this software collection.

2. **From External Repositories.**  Add additional repositories from the openSUSE Build Server or any other URL providing a software collection which is compatible with SUSE Studio and its template.

3. **Any Compatible RPMs.**  Upload any compatible RPM package from your hard disk or from the Web to SUSE Studio. Make sure it is built for your base template and its architecture is the same as your appliance.

SUSE Studio notifies you if any dependencies cannot be fully resolved.


## 1. Adding External Repositories

To add an external repository from openSUSE Build Server to SUSE Studio, proceed as follows:

1. Switch to Software and click on Add Repositories.... The page looks like this:

![Studio Qs Addrepo Overview](studio-qs-addrepo-overview.png)

2. Enter a search word to reduce the list of shown repositories. Whenever a user adds a repository, the repository will be available for all users. If you have found a repository, click Add and you are finished.

3. If your repository is not available in the list, click Import New Repository.... The following page is shown:

![Studio Qs Addrepo Import](studio-qs-addrepo-import.png)

4. Choose from a local or a remote source (usually openSUSE Build Server):

* **From openSUSE Build Server.**  Enter the project name, for example `devel:languages:python`.
* **From URL.**  Enter the URL pointing to your external repository.


## 2.2. Uploading RPMs

SUSE Studio allows you to upload individual packages as RPM format. If you have a couple of RPM packages, it is easier to create an archive (.tar, .tar.gz, .tgz, .tar.bz2, .tbz, or .zip) and upload this archive to SUSE Studio. SUSE Studio can extract this archive and add the individual RPM files to your software collection.

Click *Software+Upload RPMs*... and decide whether you want to upload an RPM or an archive with RPMs from your local hard disk or from an URL. In the first case click Upload RPM... and select your RPM package. In the second case, click Add from the Web (URL)... and enter your URL.

Regardless of the method, SUSE Studio adds the RPM(s) to your software selections and tries to resolve any dependencies. In case of an error, SUSE Studio will notify you. Resolve the errors by adding additional external repositories, importing other RPMs, or removing any problematic RPMs.