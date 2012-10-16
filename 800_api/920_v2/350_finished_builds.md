# Finished builds

GET /api/v2/user/builds?appliance_id=`<id>`
> * `<id>`: Id of the appliance.
>
> List all completed builds for the appliance with id `id`.
>
> Result: [Example](builds.xml)

GET /api/v2/user/builds/`<build_id>`
> * `<build_id>`: Id of the build.
>
> Show build info of the build with id `build_id`.
>
> Result: [Example](build.xml)

DELETE /api/v2/user/builds/`<build_id>`
> * `<build_id>`: Id of the build.
>
> Delete build with id `build_id`.
