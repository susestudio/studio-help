# Importing from KIWI or AutoYaST

Skip this section, if you neither use KIWI or AutoYaST nor did export its appliance configuration (as explained in [Section 2.12, "Exporting KIWI Configuration"][Export-KIWI-Config]).

SUSE Studio allows exporting KIWI's profile into a tar archive as described in [Section 2.12][Export-KIWI-Config]. If you want to import exported configurations either from you or from someone else, proceed as follows:

1. Go to your Home site.
2. Click the *Create new appliance...* button.
3. Click Upload configuration file... and select the file, be it a tar archive of SUSE Studio's KIWI export, or the configuration file from AutoYaST.

SUSE Studio analyses the content. If it does not find any problems, the imported appliance will be displayed under the home site.

4. Use your imported appliance by clicking its name.

When importing KIWI's or AutoYaST's profile, the following settings are currently transfered (“X” denotes a supported setting):

[Export-KIWI-Config]: exporting-kiwi-configuration.html

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

*Table 2.1. Supported Settings for Import (KIWI and AutoYaST)*

**(1)** The architecture and base system are selected by the user during the import. This information is not contained in the AutoYaST profile as the profiles are designed to be generic.

The AutoYaST profile is stripped of the imported parts. The rest of the profile is applied on the first boot of the appliance. The stripped profile is available for editing as raw XML in the appliance configuration, see *Configuration+Scripts*.