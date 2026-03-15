# Changelog

## Fixes

- Minor text fixes
- Added prefix: Fix for Balduran's Plate preventing for no reason characters of level 5 and below from benefitting from the Charisma bonus. Will be in the future disabled if Fixpack is installed, once they make a new release. Regardless, it will not cause any problems, even if you install the fixpack from master, which contains the fix.
- Added component description for Helm of Balduran
- Fixed shadow creature component affecting only the shadows from my shadowdancer overhaul (if installed) instead of affecting all other than those, as it was intended
- Fixed some components modifying undefined amount of creatures erroneously marking files as modified even when no changes were applied to them
- Added sanity file existence check for some components
- Fixed bug when installing Vexation tweak that causes it to fail due to missing code
- Various fixes causing installation errors when installing components in a non-linear way or jumping components
- Fixed Entropy +2 being restricted to Blades, since that is no longer part of the design

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
- Dagger Boost component no longer boosts DAGGSHIT (yes, that's the real ID), wielded by Carbos and Shank at the beginning of BGEE, since they can one-shot you if they get lucky with a dagger that normally does not deal more than 1 damage.

## New components

- Make Balduran's Swords better and draw inspiration from BG3
  - Standardized to +2 weapons, deals extra damage vs. all shapeshifters (dragons, mimics, doppelgangers, vampires, all fiends, including rakshasas), adds tweaks the bonuses accordingly to all three sources for the weapon.
  - The versions may be standardized as a long sword or as a bastard sword (config options)
  - They all share the same icon (golden sword from BG1)
  - Can change the name of the weapon if desired (config options)
- Make minor improvements to Jaheira-specific items (both toggleable in the config)
  - Harper pin: Usable by everyone
  - Keepsake Locket: Minor 5 HP bonus. Restricted to only CHARNAME or Jaheira if desired (config options)
- Make Sword of Chaos reflect BG3's take on it
  - Healing of 1-6 per hit (bias towards lower amounts of healing), deals 1d4 extra necrotic damage (irresistible damage that only affects the living). Ascension upgraded version covered. Does not affect stoneskinned targets and non-living targets
- Make Handmaiden's Mace +2 (Viconia's romance) reflect BG3's take on it
  - Only difference is that it sets strength to 18 (if current strength below that value)
  - Minor description fix since the logic in the second paragraph is backwards.
  - Must be installed as an end-of-installation component due to implementation details, or at least after you're sure no other component will add on-equip effect to it.
- Make all single-classed thieves apply a Sneak Attack Crippling strike on backstabs
- Make IWD evasion balanced (TODO)
  - Some options to choose:
    - Evasion attempts can critically miss (5%). This pairs well with my saving throw overhaul, if you feel that the improved saves vs. breath gives them too much advantage.
    - Only single-classed thieves can evade
    - Multi-classed thieves can evade, but only manage to make an attempt 50% of the time
  - Part of the end-of-installation group, as it will affect resources where the evade effect has been given, and it's probably best to run it right at the end (and SCS, if applies).
- Make multi-classed thieves always incur in a -1 backstab multiplier for balance (TODO)
