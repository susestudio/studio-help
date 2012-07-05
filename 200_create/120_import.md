# Importing from KIWI or AutoYaST

SUSE Studio allows exporting KIWI's profile into a tar archive as described in
Section [Exporting KIWI Configuration](export.html) as well as importing
existing AutoYaST descriptions. If you want to import configurations either from
you or from someone else, proceed as follows:

Go to your Home site.

Click the Create new appliance... button.

Click Upload configuration file... and select the file, be it a tar archive of
SUSE Studio's KIWI export, or the configuration file from AutoYaST.

SUSE Studio analyses the content. If it does not find any problems, the imported
appliance will be displayed under the home site.

Use your imported appliance by clicking its name.

When importing KIWI's or AutoYaST's profile, the following settings are
currently transfered (“X” denotes a supported setting):

Setting            | KIWI | AutoYaST |
-------------------|:----:|:--------:|
Name               |      | X        |
Architecture       | X    | (1)      |
Base System        | X    | (1)      |
Users              | X    | X        |
Repository         | X    | X        |
Package            | X    | X        |
Patterns           |      | X        |
Network Settings   | X    |          |
Boot Settings      | X    |          |
Build Scripts      | X    |          |
Logos              | X    |          |
Background Theming | X    |          |
Overlay Files      | X    | X        |

(1) The architecture and base system are selected by the user during the import.
This information is not contained in the AutoYaST profile as the profiles are
designed to be generic.

The AutoYaST profile is stripped of the imported parts. The rest of the profile
is applied on the first boot of the appliance. The stripped profile is available
for editing as raw XML in the appliance configuration, see
Configuration+Scripts.
