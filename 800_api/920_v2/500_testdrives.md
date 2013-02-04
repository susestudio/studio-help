# Testdrives

GET /api/v2/user/testdrives
>
> Returns a list of running Testdrive sessions.
>
> Result: [Example](testdrives.xml)

POST /api/v2/user/testdrives?build_id=`<build_id>`
> * `<build_id>`: Id of the build to run in testdrive.
>
> Starts a new Testdrive session of the given build on the server and
> returns information how to access it.
>
> __Note:__ Testdrive sessions expire after 60 seconds if no client
> connects.
>
> Result: [Example](testdrive.xml)
