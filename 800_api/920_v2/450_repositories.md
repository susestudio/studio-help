# Repositories

GET /api/v2/user/repositories?base_system=`<base>`&filter=`<search_string>`
> * (optional) `<base_system>`: Limit the results to repositories with
>   this base system.
> * (optional) `<filter>`: Only show repositories matching this search
>   string.
>
> Returns a list of repositories. If neither `base_system` nor `filter`
> are specified, all available repositories are returned.
>
> When filtering the results with the `filter` parameter, the repository
> name, repository url, and repository packages are searched.
>
> Result: [Example](repositories.xml)

POST /api/v2/user/repositories?url=`<url>`&name=`<name>`
> * `<url>`: Base url of the repository.
> * `<name>`: Name for the repository.
>
> Imports a new repository into Studio. Returns the metadata for the
> created repository.
>
> Result: [Example](repository.xml)

POST /api/v2/user/repositories/`<id>`/refresh
> * `<id>`: Id of the repository to update.
>
> Instructs the server to update package metadata for repository `id`.
>
> Result: empty.

GET /api/v2/user/repositories/`<id>`
> * `<id>`: Id of the repository.
>
> Show information on the repository with the id `id`.
>
> Result: [Example](repository.xml)
