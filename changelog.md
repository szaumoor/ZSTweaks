# Changelog

## Fixes

- Minor text fixes
- Added prefix: Fix for Balduran's Plate preventing for no reason characters of level 5 and below from benefitting from the Charisma bonus. Will be in the future disabled if Fixpack is installed, once they make a new release. Regardless, it will not cause any problems, even if you install the fixpack from master, which contains the fix.
- Added component description for Helm of Balduran
- Fixed shadow creature component affecting only the shadows from my shadowdancer overhaul (if installed) instead of affecting all other than those, as it was intended
- Fixed some components modifying undefined amount of creatures erroneously marking files as modified even when no changes were applied to them
- Added sanity file existence check for some components
- Various fixes causing installation errors when installing components in a non-linear way or jumping components
- Fixed Entropy +2 being restricted to Blades, since that is no longer part of the design
- Chromatic Orb from Avengers now benefit from the component for the spell

## Modifications

- Added the possibility of disabling the prefixes if you want to do it for some reason (check preferences file). Not recommended. Do so if you have a very good reason. I probably won't help if you get problems by doing this.
- Renamed the NPC group to the Joinable Characters group, as that is much more accurate
- Shadow creature component will also patch them so they move slightly faster (factor of 2)
- Component 1532 now allows customization of which gear gets the +1 HP treatment, and adds the possibility of including body armor, helmets, cloaks, and shields. Each addition is independent of each other. Mix as you please.
- Mod will now parse all the preferences files to make sure they have values that make sense, stopping the installation (you can override this behavior) if any warnings come up. The console will log everything found. Only change things for components you plan to install. Do not change preferences mid installation. Ever.
- Tweak to Haer'Dalis weapons changed slightly for balance, as the increased APR can make it a bit too powerful
  - Chaos will now drain 5 Dexterity on contact (non stacking), and may randomly drain also 1 point of Save vs. Poison, THAC0, Damage, or Armor Class.
  - Duration brought down to 2 rounds from 5.
  - This effect will not affect constructs such as golems
  - Version from the Haer'Dalis swords upgrade mod will still only grant 1/2 APR each instead of 1 each, which is likely excessive in most scenarios.
- Slight description modification to the description of Haer'Dalis' weapons
- Component 1545 (character stats tweak) also offers a tweak for the saving throws tables or various classes (all optional), and patches creatures with the appropriate classes (skips multiclass), with a tolerance of +/-2 compared to the new tables.
- Dagger Boost component no longer boosts DAGGSHIT (yes, that's the real ID), wielded by Carbos and Shank at the beginning of BGEE, since they can one-shot you if they get lucky with a dagger that normally does not deal more than 1 damage if they critically hit.

## New components

- Make Balduran's Swords better and draw inspiration from BG3
- Make minor improvements to Jaheira-specific items (both toggleable in the config)
- Make Handmaiden's Mace +2 (Viconia's romance) reflect BG3's take on it
- Make all single-classed thieves apply a Sneak Attack Crippling strike on backstabs
- Make IWD evasion balanced
- Make multi-classed thieves always incur in a -1 backstab multiplier for balance
