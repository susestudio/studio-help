# Appliances

GET /api/v2/user/appliances
>List all appliances of the current user.
>
>Result: [Example](appliances.xml)

GET /api/v2/user/appliances/`<id>`
>* `<id>`: Id of the appliance
>
>Show details of appliance with id `id`.
>
>Result: [Example](appliance.xml)

GET /api/v2/user/appliances/`<id>`/status
>* `<id>`: Id of the appliance
>
>Show information on the status of the appliance with id `id`.

>Result: [Example](appliance_status.xml)

POST /api/v2/user/appliances?clone_from=`<appliance_id>`&name=`<name>`&arch=`<arch>`
>* `<clone_from>`: The template the new appliance should be based on.
>* (optional) `<name>`: The name of appliance
>* (optional) `<arch>`: The architecture of the appliance (x86_64 or i686)
>
>Create a new appliance by cloning a template or another appliance with the id `appliance_id`.
>
>If `name` is left out, a name will be generated. If `arch` is left out a i686 appliance will be created.

DELETE /api/v2/user/appliances/`<id>`
>* `<id>`: Id of the appliance
>
>Delete appliance with id `id`.

### Configuration

GET /api/v2/user/appliances/`<id>`/configuration
>
>* `<id>`: Id of the appliance
>
>Returns the configuration for the appliance.
>
>Result: [Example](configuration.xml)

PUT /api/v2/user/appliances/`<id>`/configuration
>* `<id>`: Id of the appliance
>
>Modify portions (or all) of the configuration.  The input is sent as XML fragments in the POST body, using the same schema as what the GET call.  For example, to change the network settings to "dhcp", the POST body would have:
>
>     <configuration>
>       <network>
>         <type>dhcp</type>
>       </network>
>     </configuration>

>The result is then the current configuration settings, or an error.
>
>Result: [Example](configuration.xml)

GET /api/v2/user/appliances/`<id>`/configuration/logo
>* `<id>`: Id of the appliance
>
>Returns the PNG of the appliance logo.

PUT /api/v2/user/appliances/`<id>`/configuration/logo
>* `<id>`: Id of the appliance
>
>Changes the appliance logo.  The data must be sent as a form-based upload (RFC 1867)
>in the `file` parameter in the body.
>
>Returns a success or fail message.

GET /api/v2/user/appliances/`<id>`/configuration/background
>* `<id>`: Id of the appliance
>
>Returns the appliance background as a 100x100 thumbnail.

PUT /api/v2/user/appliances/`<id>`/configuration/background
>* `<id>`: Id of the appliance
>
>Changes the appliance background.  The data must be sent as a form-based upload (RFC 1867)
>in the `file` parameter in the body.
>
>Returns a success or fail message.

### Sharing

GET /api/v2/user/appliances/`<id>`/sharing
>* `<id>`: Id of the appliance
>
>Lists the users who are allowed to clone this appliance.
>
>Result: [Example](sharing.xml)

POST /api/v2/user/appliances/`<id>`/sharing/`<username>`
>* `<id>`: Id of the appliance
>* `<username>`: A username
>
>Allows `username` to clone from this appliance.
>
>Result: [Example](sharing.xml)

DELETE /api/v2/user/appliances/`<id>`/sharing/`<username>`
>* `<id>`: Id of the appliance
>* `<username>`: A username
>
>Removes `username` from the list of users allowed to clone this appliance.
>
>Result: [Example](sharing.xml)

### Repositories

GET /api/v2/user/appliances/`<id>`/repositories
>* `<id>`: Id of the appliance
>
>List all repositories of the appliance with id `id`.
>
>Result: [Example](repositories.xml)

PUT /api/v2/user/appliances/`<id>`/repositories
>
>Update the list of repositories of the appliance with id `id`.
>
>__Note:__ Only the repository ids of the put xml are considered.
>
>Result: [Example](repositories.xml)

POST /api/v2/user/appliances/`<id>`/cmd/add_repository?repo_id=`<repo_id>`
>* `<repo_id>`: Id of the repository.
>
>Add the specified repository to the appliance with id `id`.
>
>Result: [Example](repositories.xml)

POST /api/v2/user/appliances/`<id>`/cmd/remove_repository?repo_id=`<repo_id>`
>* `<repo_id>`: Id of the repository.
>
>Remove the specified repository from the appliance with id `id`.
>
>Result: [Example](repositories.xml)

POST /api/v2/user/appliances/`<id>`/cmd/add_user_repository
>
>Adds the according user repository (the one containing the uploaded RPMs) to the appliance.

### Software Selection

GET /api/v2/user/appliances/`<id>`/software
>* `<id>`: Id of the appliance
>
>List all selected packages and patterns of the appliance with id `id`.
>
>Result: [Example](software.xml)

PUT /api/v2/user/appliances/`<id>`/software
>* `<id>`: Id of the appliance
>
>Update the list of selected packages and patterns of the appliance with id `id`.
>
>Result: [Example](software.xml)

GET /api/v2/user/appliances/`<id>`/software/installed?build_id=`<build_id>`
>* `<id>`: Id of the appliance
>* (optional) `<build_id>`: Id of the build.
>
>List all packages and patterns that are installed. You can either specify the appliance with the `appliance_id` parameter, which will list the software that will installed with the next build or via an build id. That makes it possible to retrieve the installed software for older builds.
>
>Result: [Example](software_map.xml)

POST /api/v2/user/appliances/`<id>`/cmd/add_package?name=`<name>`&version=`<version>`&repository_id=`<repo_id>`
>* `<id>`: Id of the appliance
>* `<name>`: Name of the package.
>* (optional) `<version>`: Version of the package.
>* (optional) `<repo_id>`: Repository to pick the package from.
>
>Add the specified package to the appliance with id `id`.
>
>Result: [Example](software_change.xml)

POST /api/v2/user/appliances/`<id>`/cmd/remove_package?name=`<name>`
>* `<id>`: Id of the appliance
>* `<name>`: Name of the package.
>
>Remove the specified package from the appliance with id `id`.
>
>Result: [Example](software_change.xml)

POST /api/v2/user/appliances/`<id>`/cmd/add_pattern?name=`<name>`&version=`<version>`&repository_id=`<repo_id>`
>* `<id>`: Id of the appliance
>* `<name>`: Name of the pattern.
>* (optional) `<version>`: Version of the pattern.
>* (optional) `<repo_id>`: Repository to pick the pattern from.
>
>Add the specified pattern to the appliance with id `id`.
>
>Result: [Example](software_change.xml)

POST /api/v2/user/appliances/`<id>`/cmd/remove_pattern?name=`<name>`
>* `<id>`: Id of the appliance
>* `<name>`: Name of the pattern.
>
>Remove the specified pattern from the appliance with id `id`.
>
>Result: [Example](software_change.xml)

POST /api/v2/user/appliances/`<id>`/cmd/ban_package?name=`<name>`
>* `<name>`: Name of the package.
>
>Ban a package from the appliance with id `id`.
>
>Result: [Example](software_change.xml)

POST /api/v2/user/appliances/`<id>`/cmd/unban_package?name=`<name>`
>* `<name>`: Name of the package.
>
>Unban a package from the appliance with id `id`.
>
>Result: [Example](software_change.xml)

GET /api/v2/user/appliances/`<id>`/software/search?q=`<search_string>`&all_fields=`<all_fields>`&all_repos=`<all_repos>`
>* `<id>`: Id of the appliance
>* `<q>`: The search string
>* (optional) `<all_fields>`: Option to perform the search on all fields. Default is 'false'.
>* (optional) `<all_repos>`: Option to perform the search on all repositories. Default is 'false'.
>
>Search all software that matches the given `search_string`. If the `all_fields` parameter is set to `true` all fields are considered, otherwise only the name of the package or pattern is matched against the `search_string`.
>
>By default only software that is available to the appliance is considered, e.g. the search is limited to the repositories of this appliances. If you want to search in all repositories set the `all_repos` parameter to `true`.
>
>Result: [Example](software_map.xml)

GET /api/v2/user/appliances/`<id>`/software/manifest/`<image_type>`?version=`<version>`
>* `<id>`: Id of the appliance
>* `<image_type>`: The image type
>* (optional) `<version>`: Build version
>
>This call returns the XML manifest file.

### Image files

GET /api/v2/user/appliances/`<id>`/image_files?build_id=`<build_id>`&path=`<path_to_file>`
>* `<id>`: Id of the appliance.
>* `<build_id>`: Id of the build.
>* `<path>`: Path to the file in the built appliance.
>
>Returns the file with the given path from an image.

### GPG Keys

SUSE Studio allows to upload GPG keys that will be imported when the appliance is built.

GET /api/v2/user/appliances/`<id>`/gpg_keys
>* `<id>`: Id of the appliance.
>
>Lists all GPG keys of the appliance with the id `id`.
>
>Result: [Example](gpg_keys.xml)

GET /api/v2/user/appliances/`<id>`/gpg_keys/`<key_id>`
>* `<id>`: Id of the appliance.
>* `<key_id>`: Id of the GPG key.
>
>Shows information on the GPG key with the id `key_id`.
>
>Result: [Example](gpg_key.xml)

POST /api/v2/user/appliances/`<id>`/gpg_keys?name=`<name>`&target=`<target>`&key=`<the_key>`
>* `<id>`: Id of the appliance.
>* `<name>`: A name for the key.
>* `<target>`: The target specifies in which keyring the key will be importet. Possible values are: 'rpm'.
>* (optional) `<the_key>`: The URL encoded key.
>
>Uploads a GPG key to the appliance with the id `id`. The key can either be given as the `key` parameter or wrapped as with form-based file uploads in HTML (RFC 1867) in the body of the POST request.
>
>The key will be imported into the keyring that is specified in the `target` parameter.
>
>Result: [Example](gpg_key.xml)

DELETE /api/v2/user/appliances/`<id>`/gpg_keys/`<key_id>`
>* `<id>`: Id of the appliance.
>* `<key_id>`: Id of the GPG key.
>
>Deletes the GPG key with the id `key_id` from the appliance.
