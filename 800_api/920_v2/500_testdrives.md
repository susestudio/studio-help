# Testdrives

GET /api/v2/user/testdrives
>
> Returns a list of running testdrives.
>
> Result: [Example](testdrives.xml)

POST /api/v2/user/testdrives?build_id=`<build_id>`
> * `<build_id>`: Id of the build to run in testdrive.
>
> Starts a new testdrive session of the given build on the server and returns information about how to access it.
>
> __Note:__ Testdrive sessions will be aborted when no client has connected after 60 seconds.
>
> Result: [Example](testdrive.xml)
