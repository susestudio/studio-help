# Running builds

GET /api/v2/user/running_builds?appliance_id=`<id>`
>* `<id>`: Id of the appliance.
>
>List all running builds for the appliance with id `id`.
>
>Result: [Example](running_builds.xml)

GET /api/v2/user/running_builds/`<build_id>`
>* `<build_id>`: Id of the build.
>
>Show status of the build with id `build_id`.
>
>Result: [Example](running_build.xml)

POST /api/v2/user/running_builds?appliance_id=`<id>`&force=`<force>`&version=`<version>`&image_type=`<type>`&multi=`<multi>`
>* `<id>`: Id of the appliance.
>* (optional) `<force>`: Force a build even if it overwrites an already existing build.
>* (optional) `<version>`: The version of the appliance.
>* (optional) `<image_type>`: The format of the build. Supported are 'xen', 'oem', 'vmx', 'iso', 'ec2', 'net', 'oemiso'.
>* (optional) `<multi>`: If set to true it enables multibuild mode, which allows to build different formats of one version.
>
>Start a new build for the appliance with id `id`.
>
>If there already is a build with the same appliance settings (build type and version) an error is returned. In this case a build can be forced by setting the optional `force` parameter to `true`.
>
>Optionally the appliance version and build type can be set with the `version` and `image_type` parameters.
>
>It is possible to build different formats of one appliance version. Therefore do a first build and when it's done trigger the other formats with the `multi` parameter set to `true`.

DELETE /api/v2/user/running_builds/`<build_id>`
>* `<build_id>`: Id of the build.
>
>Cancel build with id `build_id`.
