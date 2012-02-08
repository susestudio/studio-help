# Using the API with curl

## Using the API with curl

All API functions can be used with curl. The following examples should give you an idea on how this is to be used.

### Get the list of template sets

The available templates are grouped in template sets. The following command gets the list of template sets from Studio:

       curl -u <user>:<api_key> "http://susestudio.com/api/v1/user/template_sets"
   
[Example][example-1]

Usually you will pick one of the templates in the 'default' template set, which lists the default SUSE templates, and clone an appliance from it.


### List your appliances

All appliances:

       curl -u <user>:<api_key> "http://susestudio.com/api/v1/user/appliances"

[Example][example-2]

A specific appliance:

       curl -u <user>:<api_key> "http://susestudio.com/api/v1/user/appliances/<id>"

[Example][example-3]

### Clone an appliance

To create a new appliance pick a template from the template set and use its id with the following command (name and arch are optional parameters):

       curl -u <user>:<api_key> -XPOST "http://susestudio.com/api/v1/user/appliances?clone_from=14774&name=My%20Server&arch=x86_64"


### Manage overlay files

List the files of an appliance:

       curl -u <user>:<api_key> "http://susestudio.com/api/v1/user/files?appliance_id=<id>"

[Example][example-4]

Upload a file:

       curl -u <user>:<api_key> -XPOST -F "file=@/path/to/your/file" "http://susestudio.com/api/v1/user/files?appliance_id=<id>"

[Example][example-5]

Optionally, you can specify the filename, path, owner, group or permissions, here.


### Build your appliance

Trigger a build of an appliance:

       curl -u <user>:<api_key> -XPOST "http://susestudio.com/api/v1/user/running_builds?appliance_id=<id>"

Monitor build progress:

       curl -u <user>:<api_key> "http://susestudio.com/api/v1/user/running_builds?appliance_id=<id>"
   
[Example][example-6]

## URL Encoding

Not all the characters are allowed into an URL ([http://tools.ietf.org/html/rfc1738][rfc-characters]). This is a problem for example if you try to add the gcc-c++ package into your appliance as "+" is not allowed. So, the following will not work:

       curl -u user:secret -XPOST http://susestudio.com/api/v1/user/appliances/263276/cmd/add_package?name=gcc-c++

However, some characters can be encoded. See [http://www.w3schools.com/tags/ref_urlencode.asp][w3s-ref-urlencode].

So, in our example, you should :

       curl -u  user:secret -XPOST http://susestudio.com/api/v1/user/appliances/263276/cmd/add_package?name=gcc-c%2B%2B


[example-1]: http://www.susestudio.com/help/api/v1/template_sets.xml
[example-2]: http://www.susestudio.com/help/api/v1/appliances.xml
[example-3]: http://www.susestudio.com/help/api/v1/appliance.xml
[example-4]: http://www.susestudio.com/help/api/v1/files.xml
[example-5]: http://www.susestudio.com/help/api/v1/file.xml
[example-6]: http://www.susestudio.com/help/api/v1/running_builds.xml


[rfc-characters]: http://tools.ietf.org/html/rfc1738
[w3s-ref-urlencode]: http://www.w3schools.com/tags/ref_urlencode.asp
