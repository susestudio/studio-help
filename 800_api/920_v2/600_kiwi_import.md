### Kiwi import

POST /api/v2/user/kiwi_import?config_file=`<config_file>`&base_system=`<base_system>`&arch=`<arch>`&name=`<name>`
> * `<config_file>`: The Kiwi configuration file or archive
> * `<base_system>`: The base system of the appliance
> * `<arch>`: The architecture of the appliance (x86_64 or i686)
> * (optional) `<name>`: The name of the appliance
>
> Create a new appliance by importing a Kiwi config.xml or an archived configuration.
>
> If `name` is left out, a name will be generated. All `base systems` that are available as template are supported for Kiwi imports.
