# RPM Uploads

GET /api/v2/user/rpms?base_system=`<base>`
> * `<base>`: Base system of the RPM or archive, e.g. 11.1 or SLED11.
>
> List all uploaded RPMs for the base system `base`.
>
> Result: [Example](rpms.xml)

GET /api/v2/user/rpms/`<rpm_id>`
> * `<rpm_id>`: ID of the uploaded RPM.
>
> Show information on the uploaded RPM with id `rpm_id`.
>
> Result: [Example](rpm.xml)

GET /api/v2/user/rpms/`<rpm_id>`/data
> * `<rpm_id>`: ID of the uploaded RPM.
>
> Returns the RPM with id `rpm_id`.

POST /api/v2/user/rpms?base_system=`<base>`
> * `<base>`: Base system of the RPM or archive, e.g. 11.1 or SLED11.
>
> Adds an RPM or archive to the user repository for appliances based on `base`.
>
> The file is expected to be wrapped as with form-based file uploads
> in HTML (RFC 1867) in the body of the POST request as the `file`
> parameter.
>
> Result: [Example](rpm.xml)

PUT /api/v2/user/rpms/`<rpm_id>`
> * `<rpm_id>`: ID of the uploaded RPM.
>
> Update the content of the RPM or archive with the id `rpm_id`.
>
> The file is expected to be wrapped as with form-based file uploads
> in HTML (RFC 1867) in the body of the POST request as the `file`
> parameter.
>
> Result: [Example](rpm.xml)

DELETE /api/v2/user/rpms/`<rpm_id>`
> * `<rpm_id>`: ID of the uploaded RPM.
>
> Deletes the RPM or archive with the id `rpm_id` from the user repository.
