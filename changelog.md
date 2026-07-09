# Changelog

## Prefixes

- PREFIX: Set driders to the race of driders
- PREFIX: Set Korax the Ghoul to the race of ghoul
- PREFIX: Fix any wraith spiders that aren't marked undead (they are undead according to lore, they're normally just tagged as 'Monsters', with undead immunities, and as such aren't affected by things that target undead).
- PREFIX: Fix the Blind Albino Wyrmling's race and class since they're set to wyverns instead of dragon (copy paste gone wrong, I'm sure)
- PREFIX: Fix for bugged EEFixpack implementations of Blackrazor and Black Blade of Disaster (currently they heal and boost targets instead of wielder
- PREFIX: Fix Ras and Sword of Morderkainen being set class-wise as gnoll (??). Set to Long Sword instead, as it is in BGEE and IWDEE.
- PREFIX: Fix for wrong casting speed for seeking sword at level 20 (all except iwdee)
- PREFIX: Instance of Chimera in IWD's Lava mod with the wrong race
- Every single prefix is now toggleable by using the new configuration file <zstweaks_prefixes.txt>
- Part of the script that standardizes shield general names so shield-detecting scripts work correctly is now an optional part of prefixes (ON by default -- needed for the shield overhaul component to apply to what you would expect)

## Configuration

- Can now set Finger of Death so it doesn't use a projectile, that is, upon casting, the target immediately suffers its effect.
- Component 1531 now allows the user to define which of the chosen spells will get the Magic Resistance bypass treatment
- Component 1541 now also has configuration options to make vorpal hits always ineffective towards golem / constructs, oozes, spectral creatures, and elementals no matter what. By default, all are ON except elementals.
- Wail of the Banshee component now optionally allows Limited Wish's once-per-playthrough version of the spell to be nastier than the default spell

## Compatibility

- Added compatibility for BG1-NPCs-for-SoA-ToB mod for the Shar-Teel component
- Added support to PnP Celestials and Fiends mod so their vorpal hits conform to my standards. Additionally, their vorpal hits are no longer guaranteed, uses a Save vs. Death at -4 instead of none and in the process it fixes the apparent bug where it was supposed to never affect spectral creatures, elementals, golems, and skeletons.
- Improved compatibility of Symbol X component with EE Fixpack
- Updated compatibility with Subrace fork by dark0dave and me

## Fixes

- Removed redundant warnings in the mod components that are already handled by my preference variable check at the outset.
- Fixed incorrect check for file existence for the Ring of the Crusade (SoD)
- Fixed the description of a mod-added upgraded version of Ankheg's Plate in BGEE that didn't reflect the bonus acid resistance in the description
- Fixed missing period in Cespy's dialog for Kachiko's sword
- Many code and small performance improvements
- Fixed Helm of Balduran regeneration not working due to missing resource
- Updated several outdated entries in the component_readme.md file
- Character Stat overhaul now fixes creatures with CON tables if Constitution overhaul is picked, so they don't die due to health loss in the case of very low HP and CON
- Minor fixes for component 1531 (MR tweaks)
- Symbol X component was erroneously skipping the entire content on the script in IWDEE despite being allowed for the game
- Fixed critical hits' extra damage with ranged voidweapons hitting instantly instead of at the same time (roughly)
- Small misc code and efficiency improvements
- Fixed golem component marking undefined amounts of creatures as modified even if they were not modified
- Fixed a gonk error in the Energy Drain component that wasn't properly protecting certain creatures from the spell in games without IWDification spells

## Modifications

- Mod is now available in Simplified Chinese thanks to user MephistoSatanDevil
- Component that makes natural effects nonmagical now includes Poisonous Breath from Neothelid (SoD) and also resources created by the Fixpack
- Clarified the descriptions of various components that use the "protection vs. <type>" to mention that Saving Throws against effects caused by those creatures's attacks also gain a +2 boost.
- Added framework to log errors and warnings onto a file in ZSTweaks/logs for users to examine after installation. The file inside will be called "errors_found.txt" if there are errors.
- Mod components now use the LABEL functionality
- Dagger/Dart probabilities for Finesse reduced by 2: 41-50%. Kukris also have a 2 probability reduction since it's calculated from the probabilities of daggers and darts
- Ashen Scales components also allows Beast Masters to wear it now
- Chain Lightning component now scales damage up to 15d6+10 at level 20 instead of 12d6
- Darkfire Bow component now increases APR too by 1/2 for the non-upgraded and 1 for the upgraded
- Girdle of Fortitude now other than setting the user's constitution to 18, it also has a charge ability once per day that buffs a target of their choice (other than self) with +2 CON, Save vs. Death, and +5 maximum HP.
- Handmaiden's Mace +2 now overhauled more deeply with the poison theme. It also no longer has racial or alignment restrictions.
- Implementation of Handmaiden's now no longer requires it to be installed at the end, and as such it now belongs in the Joinables category. Strength modification takes up to a second to kick in after equipping with the new implementation.
- Vastly extended the Oversight++ component that fixes improper alignments according to lore... or what makes the most sense to me. New changes:
  - Spiders are all true neutral except Wraith ones which are undead evil spiders.
  - Many many (MANY) instances of undead creatures not marked as evil. Skeletons and zombies are considered neutral in 2e as mindless automatons, but I don't really vibe with that, so I adopt the change from 3e, which is that they're neutral evil, similar to Skeleton Warriors. Rejoice, as your lowly BGEE paladin's Protection vs. Evil will serve a purpose against them now.
  - Lizardfolk are now set to Neutral barring exceptions like the Lizard King in IWD who does very questionable stuff
  - Invisible Stalkers no longer marked as evil, since they're neutral elementals from the Plane of Air
  - The Huntress (WK) is a humanoid tanar'ri marked as True Neutral. Changed to Chaotic Evil
  - Other minor creatures unused or used in cutscenes also fixed just in case such as non evil vampires, alu-fiend, liches, and mindflayers
  - Lanfear wolfwere in chapter 6 of BG2 (Coran's minor quest) changed to Chaotic Evil (they're CE according to lore)
  - Instances of golems that are good, or evil fixed except brain golems which are evil.
  - Aataqah is changed to Chaotic Good from Lawful Neutral. Lorewise they're whimsy but benevolent genies (in contrast with efreeti).
  - Also patches various creatures added by existing mods before installation of this one (all manually picked, so don't expect consistency for every and any mod)
- Grease component now also adds a -2 Armor Class debuff
- Slightly changed the bonus constitution progression:
  - Nonfighters add 1 bonus HP per 3 points, starting at 12 with 1, 15 with 2, etc, and now can progress up to +5 if they have at least 24 constitution. Fighters always have advantage and can reach +7, as before.
  - Fatigue bonus progression slightly changed so it starts giving bonus at 13 instead of 12, in order to offer a bonus with odd number of constitution points, and smooth out progression.
- Component 1531 now also makes Wail of the Banshee bypass magic resistance without my WB-specific component
- Oni Mage component now patches the "Ogre Mage" string so anyone using it as a name, will be "Oni Mage" instead
- Holy Sword of Tyr now acts as a +5 weapon vs evil for the purposes of what it can hit
- Energy Drain is now much more powerful:
  - Enemy becomes a devil shade if killed within 1 turn
  - Boosts undead creature if cast on them
  - Caster sucks up the power it was drained from the creature for a while
- Wail of the Banshee component now also makes it slay anyone with 8 HD or less without any save allowed
- Mage elemental robes ('robes of affinity') can now be worn by any class. Robe of Red Flames is excluded.
- Storm Star now gives a bonus to Priests of Talos: +1/2 APR to them (unupgraded), 1 (upgraded)
- Fire seed enchantment nerf (from +6--ridiculous-- to +2) nerfed: now it's +3. It's two levels above Melf's Meteors after all (SCS nerfs enchantment to +2 for example)
- Mercykiller Ring now increases also for Stalkers the crit chance, but not the THAC0 and Damage, which is still exclusive to single-classed Thieves. It's also now open to be used by Monks
- Thieves' Hood now still grants the +1 THAC0 and Damage bonus to single classed thieves even without upgrade. The upgraded one doubles this bonus.
- Extended the Shadows component so it includes wraiths, spectres, and undead mists.
- Started moving towards using templates to generate files on the fly, instead of loading the mod with a huge amount of files.

## New Components

- Make Haste and Improved Haste more balanced by making them last much less (577) (IWDEE BGEE BG2EE EET)
- Make Fallorain's Plate +1 more unique (1369) (BGEE BG2EE EET)
- Make Pride of the Legion +2 more unique (1373) (BG2EE EET)
- Make Armor of the Hart +3 more unique (1375) (BG2EE EET)
- Make T'rachie's Plate +5 more unique (1385) (BG2EE EET)
- Make Mail of the Dead +2 more unique (1395) (BGEE BG2EE EET)
- Make Jester's Chain +4 more unique (1404) (BG2EE EET)
- Make some creatures immune to being cheesed with Thief Traps (3180) (IWDEE BGEE BG2EE EET)
- Make Sanctuary standardized to IWD version (5400) (IWDEE BGEE BG2EE EET)
- Make Hold Animal much more useful by allowing it to affect many other types of beasts (5402) (BGEE BG2EE EET)
- Make familiars use female voices for casting spells (3165) (IWDEE BGEE BG2EE EET)
- Make succubi and erinyes use the female winged elf animation (3170) (BGEE BG2EE EET)
- Make basic ammunition more expensive (1011) (IWDEE BGEE BG2EE EET)
- Make Power Word, Kill more generally effective for a level 9 spell (585) (BG2EE EET)
- Make Priests of Talos get access to all electricity spells and add a small bonus to electricity damage (2408) (IWDEE BGEE BG2EE EET)
- Make Seeking Sword not disable spellcasting and improve it with level (2405) (IWDEE BGEE BG2EE EET)
- Make Divine Favor's duration scale very slowly with level (3190) (IWDEE BGEE BG2EE EET)
- Make Boon of Lathander improve with level slightly (3200) (IWDEE BGEE BG2EE EET)
- Make Otiluke's Resilient Sphere able to protect NPCs marked as innocents (487) (IWDEE BGEE BG2EE EET)
- Make CHARNAMEs able to get morale failure instead of being default psychopathic (xxxx) (IWDEE BGEE BG2EE EET)

## Future additions

- Make all fear effects reduce movement speed by half to make it less inconvenient
- Make Necromancers have access to a new HLA: Vampiric Feast
- Overhauling Web component so it adopts the IWD appearance and sound
- Slayer Overhaul
- Maybe giving Control Undead to priests too
- Giving CHARNAME the chance to suffer morale break
