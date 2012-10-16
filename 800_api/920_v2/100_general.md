# General information

GET /user/show_api_key
> Returns an HTML page which contains the API key flagged as:
>
> `<span class="studio:api_key">ksdjfu93r</span>`.

GET /api/v2/user/account
>Returns information about the account, such as username, email address
>and disk quota.
>
>Result: [Example](account.xml)

GET /api/v2/user/api_version
>Returns the running API version including the minor version.
>
>Result: [Example](api_version.xml)

# Return Values

Studio returns several types of return values:

* XML according to the call documentation above
* A success message: `<success></success>`
* One of many error results, which contain a `code` and a `message`.
  You will find an example at the bottom of the list.

  __access_denied__
  : For whatever reason, you do not have permission to do whatever it is
    you're trying to do.

  __build_not_found__
  : We can't find the build you've asked for.

  __cannot_delete_published_build__
  : You can't delete a published build, so unpublish it and try again.

  __configuration_error__
  : Something has gone horribly wrong and we can't build your appliance.

  __download_error__
  : We couldn't download the file you've asked us to download.

  __image_already_exists__
  : You've already built a specific version of an appliance, so you'll
    need to force an overwrite if you want to keep going.

  __image_is_locked__
  : You can't rebuild appliances that have been published to the Gallery.

  __initial_build_pending__
  : You'll need to wait until the first build of an appliance is done
    before building additional image types.

  __internal_error__
  : Something went wrong inside Studio, and it's probably not your
    fault.
    The error message will tell you more.

  __invalid_appliance_id__
  : Whoops!

  __invalid_architecture__
  : You can't build ARM appliances yet, sorry.

  __invalid_base_system__
  : That won't, either.

  __invalid_build_id__
  : You've requested a build of an appliance that doesn't exist.

  __invalid_file__
  : You can only upload RPMs or tarballs with RPMs in them.

  __invalid_gpg_key_id__
  : We can't find the GPG key that you're looking for.

  __invalid_image_type__
  : Sometimes you get to specify which type of image (ISO, VMX, etc.)
    you'd like.  And sometimes an appliance hasn't been built in that
    type.

  __invalid_key__
  : The GPG key isn't going to work out.

  __invalid_name__
  : We need a name to import GPG keys.

  __invalid_node__
  : An unknown node was found during the parsing of POSTed XML.

  __invalid_overlay_file_id__
  : I think that's clear enough.

  __invalid_parent__
  : If you try to reply to a comment that doesn't exist, we'll tell you.

  __invalid_path__
  : You've asked for a file that doesn't exist.

  __invalid_protocol__
  : You can only upload files-via-url that are HTTP(S) or FTP.

  __invalid_rating__
  : ... between 0 and 5.

  __invalid_repository_id__
  : If we can't find the repository, we can't add it to your appliance.

  __invalid_request__
  : Please don't POST with both `file` and `url` params together, and
    don't POST with neither.

  __invalid_rpm_id__
  : Yep, nor that.

  __invalid_running_build_id__
  : That too.

  __invalid_target__
  : We need a proper target for the GPG key.

  __invalid_template_set__
  : That won't work.

  __invalid_username__
  : Are you trying to share an appliance with a user who doesn't have an
    account?

  __invalid_value__
  : You've POSTed a value that we can't do anything with.

  __invalid_version__
  : You've requested a version of an appliance that doesn't exist.

  __invalid_xml__
  : You tried to POST XML that was not valid (missing a closing tag, perhaps?)

  __key_already_exists__
  : It's already there!

  __missing_appliance_id__
  : You've forgotten to tell us which appliance you'd like to work with.

  __missing_name__
  : We need a name in order to add a repository.

  __missing_parameter__
  : Seems you've left something out of your call!

  __missing_rating__
  : If you want to rate an appliance, you'll need to provide a value...

  __missing_url__
  : We need a URL in order to add a repository.

  __missing_version__
  : Sometimes we need to know which version of an appliance you're
    intending to GET or modify.

  __no_build_slots__
  : We're at full capacity, so you'll need to come back later.

  __raw_image_unavailable__
  : We can't gain access to the file you've requested.

  __read_only_mode_active__
  : You can't modify appliances at the moment, please try again later.

  __repository_already_exists__
  : Someone got there first.

  __sle_agreement_missing__
  : You need to accept some legal stuff before you can build and
    distribute SLE appliances.

  __unknown_error__
  : A generic "catch all" when we don't have a more descriptive code to offer.  The error message will tell you more.

  __unknown_query__
  : When you're searching for appliances in Gallery, you should use the
    queries we list.

  __user_repository_not_found__
  : You've tried to add a user repository, but we can't find one.

  __version_not_published__
  : Not all versions of appliances have been published.

  __version_published__
  : ... and sometimes you try to publish an appliance that is already on
    Gallery.

  __wrong_http_method__
  : You are POSTing when you should be GETting, or some other combination.

Result: [Example](generic_error_example.xml)
