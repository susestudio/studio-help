# Overlay files

GET /api/v2/user/files?appliance_id=`<id>`
>* `<id>`: Id of the appliance.
>
>List all overlay files of appliance with id `id`.
>
>Result: [Example](files.xml)

POST /api/v2/user/files?appliance_id=`<id>`&filename=`<name>`&path=`<path>`&owner=`<owner>`&group=`<group>`&permissions=`<perms>`&enabled=`<enabled>`&url=`<url>`
>* `<id>`: Id of the appliance.
>* (optional) `<filename>`: The name of the file in the filesystem.
>* (optional) `<path>`: The path where the file will be stored.
>* (optional) `<owner>`: The owner of the file.
>* (optional) `<group>`: The group of the file.
>* (optional) `<permissions>`: The permissions of the file.
>* (optional) `<enabled>`: Used to enable/disable this file for the builds.
>* (optional) `<url>`: The url of the file to add from the internet (HTTP and FTP are supported) when using the web upload method
>
>Adds a file to the appliance with id `id`.
>
>Files can either be uploaded in the body of the POST request or from a URL in the web:
>* With direct uploads the file is expected to be wrapped as with form-based file uploads in HTML (RFC 1867) in the body of the POST request as the `file` parameter.
>* For Uploads from the web you have to provide the `url` parameter.
>
>Optionally, one or more metadata settings can be specified. If those are left out, they can also be change later (see below).
>
>Result: [Example](file.xml)

GET /api/v2/user/files/`<file_id>`/data
>* `<file_id>` - Id of the file.
>
>Returns the file with id `file_id`.

PUT /api/v2/user/files/`<file_id>`/data
>* `<file_id>` - Id of the file.
>
>Writes the content of the file with id `file_id`.
>
>The file is expected to be wrapped as with form-based file uploads in HTML (RFC 1867) in the body of the PUT request as the `file` parameter.
>
>Result: [Example](file.xml)

GET /api/v2/user/files/`<file_id>`
>* `<file_id>` - Id of the file.
>
>Returns the meta data of the file with id `file_id`.
>
>Result: [Example](file.xml)

PUT /api/v2/user/files/`<file_id>`
>* `<file_id>` - Id of the file.
>
>Writes the meta data of the file with id `file_id`.
>
>Result: [Example](file.xml)

DELETE /api/v2/user/files/`<file_id>`
>* `<file_id>` - Id of the file.
>
>Delete the file with id `file_id` and its meta data.
