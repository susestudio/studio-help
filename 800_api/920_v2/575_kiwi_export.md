# Kiwi export

GET /api/v2/user/kiwi_export?appliance_id=`<appliance_id>`
* `<appliance_id>`: Id of the appliance.

Show existing kiwi exports.

POST /api/v2/user/kiwi_export?appliance_id=`<appliance_id>`&image_type=`<image_type>`
* `<appliance_id>`: Id of the appliance.
* `<image_type>`: The image type format of the kiwi export build.

## Download

GET /api/v2/user/download_kiwi_export?build_id=`<build_id>`
* `<build_id>`: Build id of a finished kiwi export.

Download created kiwi export configuration files.
 
