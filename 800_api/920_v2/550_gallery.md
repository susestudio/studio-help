# Gallery

GET /api/v2/user/gallery/appliances?query=`<searchquery>`&page=`<pagenum>`&per_page=`<number_per_page>`
>* `<query>`: One of four query types (see below).  For example, `?latest` will list the latest appliances.  `?search=kde` will search for KDE appliances.
>* (optional) `<page>`: Change the list page
>* (optional) `<per_page>`: Number of results per-page (default: 10)
>
>This query will return a list of appliances published to the Gallery.  The query types are:
>* __latest__ - Lists the latest published appliances
>* __popular__ - Lists the most popular published appliances
>* __username__ - Lists the appliances published by a specific user
>* __search__ - Searches appliances based on the search term specified in `searchquery`
>
>Result: [Example](gallery_appliances.xml)

GET /api/v2/user/gallery/appliances/`<id>`
>* `<id>`: Id of the appliance
>
>This call will return more detailed information about a specific appliance.
>
>Result: [Example](gallery_appliance.xml)

GET /api/v2/user/gallery/appliances/`<id>`/version/`<version>`
>* `<id>`: Id of the appliance
>* `<version>`: A published version
>
>This call will return more detailed information about a specific appliance.
>
>Result: [Example](gallery_appliance.xml)

POST /api/v2/user/gallery/appliances/`<id>`/version/`<version>`
>* `<id>`: Id of the appliance
>* `<version>`: The version to publish
>
>This will publish a version to Gallery.  The release notes for this version should be in the POST body.
>
>Result: [Example](gallery_appliance.xml)

PUT /api/v2/user/gallery/appliances/`<id>`/version/`<version>`
>* `<id>`: Id of the appliance
>* `<version>`: Version of the appliance
>
>This will modify the release notes for a specific published version.  The release notes should be in the POST body.
>
>Result: [Example](gallery_appliance.xml)

DELETE /api/v2/user/gallery/appliances/`<id>`/version/`<version>`
>* `<id>`: Id of the appliance
>* `<version>`: Version of the appliance
>
>This will unpublish a version of the appliance.  It will return success/fail.

GET /api/v2/user/gallery/appliances/`<id>`/versions
>* `<id>`: Id of the appliance
>
>Returns the list of appliance versions.
>
>Result: [Example](gallery_appliance_versions.xml)

GET /api/v2/user/gallery/appliances/`<id>`/rating
>* `<id>`: Id of the appliance
>
>Returns the rating of the appliance.
>
>Result: [Example](gallery_appliance_rating.xml)

POST /api/v2/user/gallery/appliances/`<id>`/rating?rating=`<rating>`
>* `<id>`: Id of the appliance
>* `<rating>`: A numerical rating from 0-5
>
>Rates the appliance.  If the user has previously rated this appliance, their rating will be changed.
>
>Result: [Example](gallery_appliance_rating.xml)

GET /api/v2/user/gallery/appliances/`<id>`/software?version=`<version>`
>* `<id>`: Id of the appliance
>* (optional) `<version>`: A specific version of the appliance
>
>Returns the complete list of software the appliance has.  If the version is not specified, the latest published version will be used.
>
>Result: [Example](gallery_appliance_software.xml)

GET /api/v2/user/gallery/appliances/`<id>`/logo
>* `<id>`: Id of the appliance
>
>Returns the PNG logo of the appliance.

GET /api/v2/user/gallery/appliances/`<id>`/background.
>* `<id>`: Id of the appliance
>
>Returns the PNG background of the appliance as a 100x100 thumbnail.

POST /api/v2/user/gallery/appliances/`<id>`/testdrive?version=`<version>`
>* `<id>`: Id of the appliance
>* (optional) `<version>`: A specific version of the appliance
>
>Starts a testdrive of the appliance, and returns information about how to access the testdrive using VNC.
>
>Result: [Example](gallery_appliance_testdrive.xml)

GET /api/v2/user/gallery/appliances/`<id>`/comments
>* `<id>`: Id of the appliance
>
>Returns the comments for an appliance.
>
>Result: [Example](gallery_appliance_comments.xml)

POST /api/v2/user/gallery/appliances/`<id>`/comments?parent=`<parent>`
>* `<id>`: Id of the appliance
>* (optional) `<parent>`: A previous comment that this is in reply to.
>
>Adds a comment to an appliance page.
>
>Result: [Example](gallery_appliance_comments.xml)
