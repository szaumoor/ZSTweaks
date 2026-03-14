# Changelog

## Fixes

- Minor text fixes
- Added prefix: Fix for Balduran's Plate preventing for no reason characters of level 5 and below from benefitting from the Charisma bonus. Will be in the future disabled if Fixpack is installed, once they make a new release. Regardless, it will not cause any problems, even if you install the fixpack from master.
- Added component description for Helm of Balduran
- Fixed shadow creature component affecting only the shadows from my shadowdancer overhaul instead of affecting all other than those, as it was intended
- Fixed some components modifying undefined amount of creatures erroneously marking files as modified even when no changes were applied to them
- Added sanity file existence check for some components
- Fixed bug when installing Vexation tweak that causes it to fail due to missing code
- Various fixes causing installation errors when installing components in a non-linear, skipping way

## Modifications

- Renamed the NPC group to the Joinable Characters group, as that is much more accurate
- Shadow creature component will also patch them so they move slightly faster (factor of 2)
- Component 1532 now allows customization of which gear gets the +1 HP treatment, and adds the possibility of including body armor, helmets, cloaks, and shields. Each addition is independent of each other. Mix as you please.
- Mod will now parse all the preferences files to make sure they have values that make sense, stopping the installation if any warnings come up. The console will log everything found. Only change things for components you plan to install. Do not change preferences mid installation. Ever.
- Tweak to Haer'Dalis weapons changed slightly for balance, as the increased APR can make it a bit too powerful
  - Chaos will now drain 5 Dexterity on contact (non stacking), and may randomly drain also 1 point of Save vs. Poison, THAC0, Damage, or Armor Class.
  - Duration brought down to 2 rounds from 5.
  - This effect will not affect constructs such as golems
  - Version from the Haer'Dalis swords upgrade mod will still only grant 1/2 APR each instead of 1 each, which is likely excessive in most scenarios.
- Slight description modification to the description of Haer'Dalis' weapons
- Component 1545 (character stats tweak) also offers a tweak for the saving throws tables or various classes (all optional)
  - **Warrior** classes (rangers, paladins, fighters): Slightly worse saves except vs. Death. Some of them start off as better, like vs. Breath. Generally expect them to be slightly worse at resisting spells that affect the mind, and generally anything that isn't forcing a save vs. Death. This includes rangers, paladins, and fighters. Final saves look like 3 7 6 7 8 (vanilla being 3 5 4 4 6). The idea is that fighter classes shouldn't be quite so good as dodging and resisting charms but definitely should be able to resist things that try to kill them outright.
  - **Rogue** classes (thieves and bards): Saves vs. Breath get big boost compared to others, since it is the ability to get out of the way of dangerous things like dragon breath (which funnily enough in vanilla is the worst of their saves). It also affects IWD evasion which gives rogues a chance to completely evade all the effects of some things like fireballs. Final saves look like 8 4 7 6 5 (vanilla being 8 4 7 11 5).
  - **Priests**, druids, and shamans: Saves vs. Death are one point worse, equal to fighters, saves vs. Breath are 2 points worse (one point better than vanilla rogue -- they really hated rogues, didn't they). They have oodles of ways to improve their own saving throws and those in their party anyway. Final saves look like 3 6 5 10 7 (vanilla is 2 6 5 8 7).
  - **Wizards** and sorcerers: Worse save vs. death (2 points worse than rogues), since they should be sicklier, so easier to poison and some instant death effects like Wail of the Banshee. Worse save vs. Breath (2 points worse) so they can be incinerated by dragon fire more easily. They excel at spell-like effects, enchantments, etc. Final saves look like 10 3 5 9 4 (vanilla is 8 3 5 7 4).
  - **Monks**: Save vs. Death is 1 point worse, being still the class with the best saves vs. Death, save vs. Breath is one point better, matching rogues, and save vs. Spell one point worse, leaving wizards as the best ones to save vs. Spell. Final saves look like 2 5 4 6 5 (vanilla is 1 5 4 7 4)

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
  - Must be installed as an end-of-installation component due to implementation details
