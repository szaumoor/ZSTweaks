# Changelog

## Prefixes

- Added the following prefix fixes:
  - Set driders to the drider race.
  - Set Korax the Ghoul to the ghoul race.
  - Mark wraith spiders as undead. Although they normally have the generic Monster race, their lore and immunities identify them as undead, and they should be affected by effects that target undead.
  - Correct the Blind Albino Wyrmling's race and class from wyvern to dragon.
  - Fix the EEFixpack implementations of Blackrazor and Black Blade of Disaster, which heal and boost their targets instead of their wielders.
  - Correct the classes of Ras and the Sword of Mordenkainen from gnoll to long sword, matching BGEE and IWDEE.
  - Correct Seeking Sword's casting speed at level 20 in games other than IWDEE.
  - Correct the race of a chimera in an IWD mod by Lava.
  - Correct a ToB solar that is classified as a demonic tanar'ri.
  - Mark BG2 pit fiends as devils.
- Every prefix can now be toggled through the new configuration file, `zstweaks_prefixes.txt`.
- Shield-name standardization is now an optional prefix, enabled by default. It ensures that shield-detection scripts work correctly and that the Shield Overhaul component affects the expected items.

## Configuration

- Finger of Death can now be configured to apply its effect immediately instead of using a projectile.
- Component 1531 (Magic Resistance tweaks) now lets users choose which selected spells bypass Magic Resistance. It also makes Wail of the Banshee bypass Magic Resistance without requiring the separate Wail-specific component.
- Component 1541 now has options that prevent vorpal hits from affecting golems and other constructs, oozes, spectral creatures, and elementals. All of these options except the one for elementals are enabled by default.
- The Wail of the Banshee component can now make Limited Wish's once-per-playthrough version of the spell more powerful than the standard version.

## Compatibility

- Added compatibility for the Shar-Teel component with the BG1 NPCs for SoA & ToB mod and Lava's Shar-Teel mod.
- Added support for the PnP Celestials and Fiends mod. Its vorpal hits now use a Save vs. Death at -4 instead of succeeding automatically and no longer affect spectral creatures, elementals, golems, or skeletons.
- Improved compatibility between the Symbol X component and EEFixpack.
- Updated compatibility with the Subrace mod fork maintained by dark0dave and me.
- Added a warning when the mod is installed with a WeiDU version other than v249.

## Fixes

- Removed component-level warnings that were already handled by the initial preference-variable check.
- Corrected the file-existence check for the Ring of the Crusade in SoD.
- Corrected the description of a mod-added upgraded Ankheg Plate in BGEE to mention its bonus acid resistance.
- Added a missing period to Cespenar's dialogue for Kachiko's sword.
- Made numerous code-quality and performance improvements.
- Restored the Helm of Balduran's regeneration effect, which was failing because of a missing resource.
- Updated several outdated entries in `component_readme.md`.
- When the Constitution Overhaul is installed, the Character Stat Overhaul now corrects creatures that use Constitution tables so that very low base HP mixed with their Constitution values do not kill them.
- Minor fixes to component 1531 (Magic Resistance tweaks).
- Fixed the Symbol X component incorrectly skipping its entire script in IWDEE despite supporting that game.
- Fixed the extra damage from critical hits with ranged void weapons applying instantly instead of at roughly the same time as the projectiles hit.
- Fixed the golem component reporting an undefined number of creatures as modified, including creatures it did not change.
- Fixed an error in the Energy Drain component that prevented it from protecting certain creatures in games without IWDification spells.
- Prevented the +1 HP component from indiscriminately affecting non-shield items that use the shield slot. This fix depends heavily on the shield-standardization prefix.
- Fixed Mazzy's weapons when the Fixpack is installed by removing a duplicate item-restriction opcode and adding a `.tra` reference for the "Mazzy" string in their descriptions.
- Fixed Holy Words visual effects playing on ineligible targets.
- Fixed the Divine Words killing effect failing to bypass deafness, contrary to its description.
- Corrected a likely vanilla issue where the Belt of Fortitude's charge ability used the basic belt icon instead of its own. This fix applies only when the relevant component is installed.
- Chromatic Orb green orb now also checks for poison immunity and undead / construct state before applying poison.
- Chromatic Orb purple was healing golems instead of damaging them as expected
- Fixed Dagger of the Star +5's Heavenly Strike missing the resource that deals the small area of effect fire damage.
- Fixed various problems in the workings of the effects in Rod of Terror
- Fixed missing description in Ras the Dancing sword in its normal state as well as an inaccuracy therein
- Fixed Club of Detonation +5 not getting an increased chance to deal more fire damage compared to the +3 version

## Modifications

- Added a Simplified Chinese translation, thanks to MephistoSatanDevil.
- Changed slightly the specifics of Rod of Terror
- The component that makes natural effects nonmagical now includes the Neothelid's Poisonous Breath in SoD and resources added by the Fixpack.
- Clarified that components granting +2 protection against a creature type also grant +2 to Saving Throws against effects caused by that creature type's attacks.
- The mods now creates the `zstweaks_logs` folder to the game directory. The log files (if any) will contain warnings and other diagnostic information.
- Mod components now use WeiDU's `LABEL` functionality.
- Reduced the Finesse probabilities for daggers and darts by 2, to 41–50%. Kukris from my Item Pack receive the same reduction because their probabilities are derived from those of daggers and darts.
- The Ashen Scale component now allows Beast Masters to wear the armor.
- Chain Lightning's damage now scales up to 15d6+10 at level 20, instead of 12d6.
- The Darkfire Bow now grants +1/2 APR in its base form and +1 APR when upgraded.
- In addition to setting the user's Constitution to 18, the Girdle of Fortitude now has a once-per-day ability that grants another target +2 Constitution, a Save vs. Death bonus, and +5 maximum HP.
- Expanded the poison-themed overhaul of Handmaiden's Mace +2 and removed its racial and alignment restrictions. The component no longer needs to be installed last and has moved to the Joinables category; its Strength adjustment may take up to one second to apply after the mace is equipped. Highly recommended to install **Viconia Friendship** mod so the mace is available without romancing her.
- Vastly extended the Oversight++ component's alignment corrections based on lore and contextual judgment:
  - Set all spiders to True Neutral except wraith spiders, which are evil undead.
  - Marked many non-evil undead as evil. Although AD&D 2e treats mindless skeletons and zombies as neutral, this component follows 3e by making them Neutral Evil, like skeleton warriors. Protection from Evil will therefore work against them.
  - Set lizardfolk to neutral, with exceptions such as the Lizard King in IWD.
  - Removed the evil alignment from invisible stalkers, which are neutral elementals from the Plane of Air.
  - Changed the Huntress in Watcher's Keep from True Neutral to Chaotic Evil.
  - Corrected other minor, unused, or cutscene creatures, including non-evil vampires, alu-fiends, liches, and mind flayers.
  - Changed the Lanfear wolfwere in BG2 chapter 6, encountered during Coran's minor quest, to Chaotic Evil.
  - Corrected golems marked as good or evil; brain golems remain evil.
  - Changed Aataqah from Lawful Neutral to Chaotic Good, reflecting the whimsical but benevolent nature of djinn in contrast with efreeti.
  - Changed Frennedan, a greater doppelganger, from Chaotic Neutral to Neutral Evil, the standard alignment for greater doppelgangers.
  - Added patches for a handpicked selection of creatures from previously installed mods; coverage is not exhaustive.
- The Grease component now applies a -1 Armor Class penalty, doubled on a failed save.
- Revised the Constitution bonus progression:
  - Non-fighters gain +1 bonus HP per 3 Constitution points, beginning at 12, and can now reach +5 at 24 Constitution. Fighters retain their advantage and can still reach +7.
  - Fatigue bonuses now begin at 13 Constitution instead of 12, rewarding odd Constitution scores and smoothing the progression.
- The Oni Mage component now replaces the "Ogre Mage" string with "Oni Mage" wherever it is used as a name.
- The Holy Sword of Tyr now counts as a +5 weapon against evil creatures when determining what it can hit.
- Energy Drain is now considerably more powerful:
  - Enemies killed within one turn become allied devil shades for 1 turn (hasted shadows that can drain one level per hit).
  - Casting it on an undead creature empowers them instead.
  - The caster temporarily absorbs the target's drained power, gaining enhancements and healing while removing their own level drain.
- Mage elemental robes ("robes of affinity") can now be worn by any class. The Robe of Red Flames is excluded because it's a Thayan artifact.
- Storm Star now grants Priests of Talos +1/2 APR in its base form and +1 APR when upgraded.
- Reduced Fire Seeds' enchantment from +6 to +3. For comparison, the spell is only two levels above Melf's Minute Meteors, and SCS reduces its enchantment to +2.
- The Mercykiller Ring now increases Stalkers' critical-hit chance and can be used by monks. Its THAC0 and damage bonuses remain exclusive to single-class thieves.
- The Thieves' Hood now grants single-class thieves +1 THAC0 and damage even before it is upgraded; the upgraded version doubles these bonuses.
- Extended the Shadows component to include wraiths, spectres, and undead mists.
- Began moving from a large collection of bundled files to templates that generate files as needed.
- Added lacedon weapon attacks to the Natural Weapons component.
- Wail of the Banshee now kills targets with 60 HP or less at a -2 save penalty. Targets with 8 HD or less are slain instantly, as with Death Spell.
- Added compatibility with EEFixpack's new effect immunity spell states where it fits, or where the Fixpack hasn't yet: Skin of Ghoul, Sword of Royal Might, Mace of Royal Might, Dusty Rose Ioun Stone, Wondrous Gloves, Plate of the Dark, Helm of Balduran, Jade Fang, Life Stealer, Borok's Fist, and Holy/Unholy Words, Chromatic Orb, Kachiko's Sword (upgraded version), Rod of Terror, Psion Blade, Flail of Ages (+4, +5)
- Reduced the bonuses against schools of magic provided by the Skull of Death and Shadow Dragon Scale to +3.
- Made effects that disable critical misses much less likely to be undone by critical-miss penalties.
- Renamed Kachiko's Whisper to Whisper and slightly revised its description and benefits.
- Excluded creatures of the mist race from the Stiletto of the Demarchess's Persistent Wounds effect.
- Improved the Element's Fury dagger tweak: its +2 random elemental damage can now trigger multiple elements.
  - 3% chance to trigger all four elements for 2 damage each.
  - 4% chance to trigger three elements in random combinations.
  - 6% chance to trigger two elements in random combinations.
  - Critical hits always trigger all four elements in addition to any other random effect per hit.
- The Potion of Icedust now grants 85% fire resistance, up from 75% in the previous iteration.
- Improved Divine Words:
  - The spells now apply a -2 Saving Throw penalty for their duration.
  - Increased the effect duration for targets with 12 or more HD from 4 to 5, and for targets with 8–11 HD from 5 to 7.
  - Added console feedback identifying the tier and duration applied to each target.
- Bow of Mana's Casting Failure effect now succeeds regardless of magic resistance, but remaining dispellable.
- Glyph of Warding component boosts its damage slightly more, adding +1 electricity damage at even levels, up to 20d4+10 at level 20 (30-90 damage, save to take half).
- Increased the amount of berries created by Goodberry further, from 6 to 10 per casting
- Increased the damage that Ethereal Retribution does (Shaman Quest spell) further to 6d8 (from 6d6; 3d8 in vanilla)

## New Components

- Make Haste and Improved Haste more balanced through much shorter durations (577) (IWDEE BGEE BG2EE EET).
- Make Fallorain's Plate +1 more distinctive (1369) (BGEE BG2EE EET).
- Make Pride of the Legion +2 more distinctive (1373) (BG2EE EET).
- Make Armor of the Hart +3 more distinctive (1375) (BG2EE EET).
- Make T'rachie's Plate +5 more distinctive (1385) (BG2EE EET).
- Make Mail of the Dead +2 more distinctive (1395) (BGEE BG2EE EET).
- Make Jester's Chain +4 more distinctive (1404) (BG2EE EET).
- Make certain creatures immune to Thief Trap exploits (3180) (IWDEE BGEE BG2EE EET).
- Make Sanctuary match the IWD version (5400) (IWDEE BGEE BG2EE EET).
- Make Hold Animal affect many more beast types (5402) (IWDEE BGEE BG2EE EET).
- Make familiars use female voices when casting spells (3165) (IWDEE BGEE BG2EE EET).
- Make succubi and erinyes use the female winged-elf animation (3170) (BGEE BG2EE EET).
- Make basic ammunition more expensive (1011) (IWDEE BGEE BG2EE EET).
- Make Power Word, Kill more effective as a 9th-level spell (585) (BG2EE EET).
- Make Priests of Talos able to cast all electricity spells and deal slightly more electricity damage (2408) (IWDEE BGEE BG2EE EET).
- Make Seeking Sword scale with level without disabling spellcasting (2405) (IWDEE BGEE BG2EE EET).
- Make Divine Favor's duration scale slowly with level (3190) (IWDEE BGEE BG2EE EET).
- Make Boon of Lathander improve slightly with level (3200) (IWDEE BGEE BG2EE EET).
- Make Otiluke's Resilient Sphere protect NPCs marked as innocents (487) (IWDEE BGEE BG2EE EET).
- Make Pit Fiends comparable to Balors in power, improving the Gate spell (3210) (BG2EE EET).
- Make created characters susceptible to morale failure instead of fearless by default (592) (IWDEE BGEE BG2EE EET).
- Make Cloud of Pestilence more effective and closer to its PnP version (5440) (IWDEE BGEE BG2EE EET)
- Make Dagger of Venom slightly more powerful (1563) (IWDEE BGEE BG2EE EET)

## Future additions

- Make all fear effects halve movement speed to reduce their inconvenience.
- Give Necromancers access to a new HLA: Vampiric Feast.
- Overhaul the Web component to use IWD's appearance and sound.
- Overhaul the Slayer.
- Maybe overhaul some IWD-only items
- Overhaul the spell progression of the bard so they can gain more spell levels but very slowly, toning down their overpowered dispel magic abilities in the process.
- Make most liches use the white lich animation from IWD
- Possibly give Control Undead to priests as well.
