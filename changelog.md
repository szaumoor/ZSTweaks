# Changelog

## Fixes

- Removed redundant warnings in the mod components that are already handled by my preference variable check at the outset.
- Fixed incorrect check for file existence for the Ring of the Crusade (SoD)
- Fixed the description of a mod-added upgraded version of Ankheg's Plate in BGEE that didn't reflect the bonus acid resistance in the description
- Fixed missing period in Cespy's dialog for Kachiko's sword
- Small performance improvement on some scripts
- Added prefixes for bugged EEFixpack implementations of Blackrazor and Black Blade of Disaster (currently they heal and boost targets instead of wielder)
- Fixed Helm of Balduran regeneration not working due to missing resource
- Updated several outdated entries in the component_readme.md file
- Added prefix to fix any wraith spiders that aren't marked undead (they are undead according to lore, they're normally just tagged as 'Monsters', with undead immunities, and as such aren't affected by things that target undead)
- Added prefix to set driders to the race of driders, and Korax the Ghoul to the race of ghoul
- Character Stat overhaul now fixes creatures with CON tables if Constitution overhaul is picked, so they don't die due to health loss in the case of very low HP and CON

## Modifications

- Mod is now available in Simplified Chinese thanks to user MephistoSatanDevil
- Added a configuration option for Finger of Death so it doesn't use a projectile, that is, upon casting, the target immediately suffers its effect.
- Component that makes natural effects nonmagical now includes Poisonous Breath from Neothelid (SoD) and also resources created by the Fixpack
- Clarified the descriptions of various components that use the "protection vs. <type>" to mention that Saving Throws against effects caused by those creatures's attacks also gain a +2 boost.
- Added framework to log errors and warnings onto a file in ZSTweaks/logs for users to examine after installation. The file inside will be called "errors_found.txt" if there are errors.
- Mod components now use the LABEL functionality
- Dagger/Dart probabilities for Finesse reduced by 2: 41-50%. Kukris also have a 2 probability reduction since it's calculated from the probabilities of daggers and darts
- Ashen Scales components also allows Beast Masters to wear it now
- Reverted original behavior of opening two readmes: one the basic and another the component one.
- Chain Lightning component now scales damage up to 15d6+10 at level 20 instead of 12d6
- Added compatibility for BG1-NPCs-for-SoA-ToB mod for the Shar-Teel mod
- Added an option in the Web component so it adopts the IWD appearance and sound (TODO)
- Darkfire Bow component now increases APR too by 1/2 for the non-upgraded and 1 for the upgraded
- Girdle of Fortitude now other than setting the user's constitution to 18, it also has a charge ability once per day that buffs a target of their choice (other than self) with +2 CON, Save vs. Death, and +5 maximum HP.
- Handmaiden's Mace +2 now overhauled more deeply with the poison theme. It also no longer has racial or alignment restrictions.
- Implementation of Handmaiden's now no longer requires it to be installed at the end, and as such it now belongs in the Joinables category.
- Every single prefix is now toggleable by using the new configuration file <zstweaks_prefixes.txt>
- Vastly extended the Oversight++ component that fixes improper alignments according to lore... or what makes the most sense to me. New changes:
  - Spiders are all true neutral except Wraith ones which are undead evil spiders.
  - Many many (MANY) instances of undead creatures not marked as evil (skeletons, zombies, ghouls) are not evil. Skeletons and zombies are considered neutral in 2e as mindless automatons, but I don't really vibe with that, so I adopt the change from 3e, which is that they're neutral evil, similar to Skeleton Warriors. Rejoice, as Protection vs. Evil will serve a purpose against them now.
  - Lizardfolk are now set to Neutral barring exceptions like the Lizard King in IWD who does very questionable stuff
  - Invisible Stalkers no longer marked as evil, since they're neutral elementals from the Plane of Air
  - The Huntress (WK) is a humanoid tanar'ri marked as True Neutral. Changed to Chaotic Evil
  - Other minor creatures unused or used in cutscenes also fixed just in case such as non evil vampires, alu-fiend, liches, and mindflayers
  - Lanfear wolfwere in chapter 6 of BG2 (Coran's minor quest) changed to Chaotic Evil (they're CE according to lore)
  - Instances of golems that are good, or evil fixed except brain golems which are evil.
  - Aataqah is changed to Chaotic Good from Lawful Neutral. Lorewise they're whimsy but benevolent genies (in contrast with efreeti).

## New Components

- Make Haste and Improved Haste more balanced by making them last much less (577) (IWDEE BGEE BG2EE EET)
- Make Fallorain's Plate +1 more unique (1369) (BGEE BG2EE EET)
- Make Pride of the Legion +2 more unique (1373) (BG2EE EET)
- Make Armor of the Hart +3 more unique (1375) (BG2EE EET)
- Make T'rachie's Plate +5 more unique (1385) (BG2EE EET)
- Make Mail of the Dead +2 more unique (1395) (BGEE BG2EE EET)
- Make Jester's Chain +4 more unique (1404) (BG2EE EET)
- Make some creatures immune to being cheesed with Thief Traps (xxxx) (IWDEE BGEE BG2EE EET) (TODO)
- Make Necromancers have access to a new HLA: Vampiric Feast (xxxx) (BG2EE EET) (TODO)
- Make all fear effects reduce movement speed by half to make it less inconvenient (xxxx) (IWDEE BGEE BG2EE EET) (TODO)
- Make Sanctuary standardized to IWD version (5400) (IWDEE BGEE BG2EE EET)
- Make Hold Animal much more useful by allowing it to affect many other types of beasts (xxxx) (BGEE BG2EE EET) (TODO)
- Make familiars use female voices for casting spells (3165) (IWDEE BGEE BG2EE EET)
- Make succubi use the winged elf animation instead of a sirine (3170) (BGEE BG2EE EET)
- Make basic ammunition more expensive (xxxx) (IWDEE BGEE BG2EE EET)
