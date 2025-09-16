# Changelog

## Fixes

- Ankheg plate variant introduced by EET will now be detected in relevant component as intended
- Vorpal weapons component will now correctly patch the vorpal spell to not chunk two-handed weapons when the relevant option is enabled without throwing an error
- Fix for whirlwind component when fixpack is not installed due to inverted logic
- Quivering Palm component was open to all games but inappropriately only patched bg2ee and eet

## Modifications

- Ankheg upgraded plate from Thalantyr Upgrade Ex mod will now be patched
- Cure Poison component now makes it bypass spell protections such as Globe of Invulnerability
- Made the implementation of some recent tweaks more resilient to changes
- Added marker file to prevent re-running prefixes and splprot additions on every separate installer run to speed things up
- Reduced pointless console output verbosity of some recent new components, which probably improves performance since printing to console is generally slow

## New components

-
