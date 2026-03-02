# Changelog

## Fixes

- Minor text fixes
- Added prefix: Fix for Balduran's Plate preventing for no reason characters of level 5 and below from benefitting from the Charisma bonus. Will be in the future disabled if Fixpack is installed, once they make a new release. Regardless, it will not cause any problems, even if you install the fixpack from master.
- Added component description for Helm of Balduran
- Fixed shadow creature component affecting only the shadows from my shadowdancer overhaul instead of affecting all other than those, as it was intended
- Fixed some components modifying undefined amount of creatures erroneously marking files as modified even when no changes were applied to them
- Added sanity file existence check for some components

## Modifications

- Renamed the NPC group to the Joinable Characters group, as that is much more accurate
- Shadow creature component will also patch them so they move slightly faster (factor of 2)
- Component 1532 now allows customization of which gear gets the +1 HP treatment, and adds the possibility of including body armor, helmets, cloaks, and shields. Each addition is independent of each other. Mix as you please.

## New components

- Make Balduran's Swords better and draw inspiration from BG3
  - Standardized to +2 weapons, deals extra damage vs. all shapeshifters, +2 saving throws vs. spell merges changes of the BG2 version
  - Can be set as a long sword (both cases), standardize to bastard sword, or keep it as is, with the same stats
  - They all share the same icon (golden sword from BG1)
- Make minor improvements to Jaheira-specific items
  - Harper pin: Usable by everyone
  - Keepsake Locket: Minor 5 HP bonus
- Make Sword of Chaos reflect BG3's take on it
  - Healing of 1-6 per hit (bias for lower amounts of healing), deals 1d4 extra necrotic damage (irresistible damage that only affects the living). Ascension upgraded version covered.
- Make Handmaiden's Mace +2 (Viconia's romance) reflect BG3's take on it
  - Only difference is that it sets strength to 18 (if current strength below that value)
