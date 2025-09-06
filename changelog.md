# Changelog

## Fixes

- Fixed Horrid Wilting not properly protecting fire elementals from it, as well as other small fixes
- Fixed the Seven Eyes component granting 4 Magic Missiles to the Sword Eye instead of 3
- Fixed regression bug in the previous version on the component that increases or decreases the price of gems, rings, and amulets that prevented non-gems from benefitting
- Fixed Yamato's component not taking into account users that disabled wakizashis and ninjatos from being affected by the component that changes their damage configuration after installing it
- Fixed Dakkon's katana and Kachiko's wakizashi component in the code that updates it if Finesse was installed such that it takes into account if their respective weapon types were enabled in the config options
- Fixed some of the new components not being disabled appropriately when the group-wide component was installed
- Added guard for components that modify SoD items, so they don't error out if SoD is not installed

## Modifications

- Improved the implementation of the Comet component
- Improved the implementation of the Finger of Death component
- Improved the implementation of very old components in need of a code revision with better functions (read: CamDawg's functions)
- Minor .tra edits, improvements or tweaks
- Various refactorings, code cleanup, and code quality improvements
- Blackrazor component will retroactively update the finesse element if the finesse component was installed first, as it is required when enchantment level changes
- Added option to customize how much damage resistance the Defender of Easthaven provides. Default is 10%.
- Massively improved the efficiency of the Cloak of Fear component
