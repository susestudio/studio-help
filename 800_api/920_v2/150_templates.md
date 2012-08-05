# Template sets

GET /api/v2/user/template_sets
>List all template sets.
>
>Template sets are used to group available templates by topic. The 'default' template set contains all vanilla SUSE templates, 'mono' contains those that are optimized to be used for mono applications, for example.
>
>Result: [Example](template_sets.xml)

GET /api/v2/user/template_sets/`<name>`
>* `<name>`: Name of template
>
>Show template set `<name>`.
>
>Result: [Example](template_set.xml)
