# Changelog

## Prefixes

- PREFIX: Set driders to the race of driders
- PREFIX: Set Korax the Ghoul to the race of ghoul
- PREFIX: Fix any wraith spiders that aren't marked undead (they are undead according to lore, they're normally just tagged as 'Monsters', with undead immunities, and as such aren't affected by things that target undead).
- PREFIX: Fix the Blind Albino Wyrmling's race and class since they're set to wyverns instead of dragon (copy paste gone wrong, I'm sure)
- PREFIX: Fix for bugged EEFixpack implementations of Blackrazor and Black Blade of Disaster (currently they heal and boost targets instead of wielder
- PREFIX: Fix Ras and Sword of Morderkainen being set class-wise as gnoll (??). Set to Long Sword instead, as it is in BGEE and IWDEE.
- PREFIX: Fix for wrong casting speed for seeking sword at level 20 (all except IWDEE)
- PREFIX: Instance of Chimera in IWD's Lava mod with the wrong race
- PREFIX: Solar in ToB defined weirdly as demonic Tanar'ri
- PREFIX: Pit Fiends not marked as devils in BG2
- Every single prefix is now togglable by using the new configuration file <zstweaks_prefixes.txt>
- Part of the script that standardizes shield general names so shield-detecting scripts work correctly is now an optional part of prefixes (ON by default – needed for the shield overhaul component to apply to what you would expect)

## Configuration

- Can now set Finger of Death so it doesn't use a projectile, that is, upon casting, the target immediately suffers its effect.
- Component 1531 now allows the user to define which of the chosen spells will get the Magic Resistance bypass treatment
- Component 1541 now also has configuration options to make vorpal hits always ineffective towards golem / constructs, oozes, spectral creatures, and elementals no matter what. By default, all are ON except elementals.
- Wail of the Banshee component now optionally allows Limited Wish's once-per-playthrough version of the spell to be nastier than the default spell

## Compatibility

- Added compatibility for BG1-NPCs-for-SoA-ToB mod for the Shar-Teel component, as well as Lava's mod of the same
- Added support to PnP Celestials and Fiends mod so their vorpal hits conform to my standards. Additionally, their vorpal hits are no longer guaranteed, uses a Save vs. Death at -4 instead of none and in the process it fixes the apparent bug where it was supposed to never affect spectral creatures, elementals, golems, and skeletons.
- Improved compatibility of Symbol X component with EEFixpack
- Updated compatibility with Subrace fork by dark0dave and me
- Added warnings if installed with a version of WeiDu that isn't v249

## Fixes

- Removed redundant warnings in the mod components that are already handled by my preference variable check at the outset.
- Fixed incorrect check for file existence for the Ring of the Crusade (SoD)
- Fixed the description of a mod-added upgraded version of Ankheg's Plate in BGEE that didn't reflect the bonus acid resistance in the description
- Fixed missing period in Cespy's dialog for Kachiko's sword
- Many code and performance improvements and fixes
- Fixed Helm of Balduran regeneration not working due to missing resource
- Updated several outdated entries in the component_readme.md file
- Character Stat overhaul now fixes creatures with CON tables if Constitution overhaul is picked, so they don't die due to health loss in the case of very low HP and CON
- Minor fixes for component 1531 (MR tweaks)
- Symbol X component was erroneously skipping the entire content on the script in IWDEE despite being allowed for the game
- Fixed critical hits' extra damage with ranged voidweapons hitting instantly instead of at the same time (roughly) **>>>TODOCHECK>>>**
- Fixed golem component marking undefined amounts of creatures as modified even if they were not modified
- Fixed a gonk error in the Energy Drain component that wasn't properly protecting certain creatures from the spell in games without IWDification spells
- Fixed +1HP component affecting shields in an indiscriminate way which could include things that aren't technically shields but use the shield slot. The reliability of this depends heavily on the shield standardization prefix running.
- Fixed duplicate restrict item opcode in mazzy's weapons with the fixpack installed
- Added a .tra reference to the "Mazzy" string in the description of Mazzy's weapons (restrict item opcode)
- Fixed bug in holy words where the visual effects would play even if the target wasn't eligible
- Fixed bug in Divine Words where the killing effect does not bypass the target's deafness as described in the description
- Fixed likely vanilla issue where the charge ability of Belt of Fortitude uses the basic belt icon instead of its own (only applies when the relevant component is installed).

## Modifications

- Mod is now available in Simplified Chinese thanks to user MephistoSatanDevil
- Component that makes natural effects nonmagical now includes Poisonous Breath from Neothelid (SoD) and also resources created by the Fixpack
- Clarified the descriptions of various components that use the "protection vs. <type>" to mention that Saving Throws against effects caused by those creatures's attacks also gain a +2 boost.
- Added framework to log errors and warnings onto a file in the game folder called ZSTweaks_Logs for users to examine after installation. The file inside will be called "warnings.txt" if there are errors.
- Mod components now use the LABEL functionality
- Dagger/Dart probabilities for Finesse reduced by 2: 41–50%. Kukris also have a 2 probability reduction since it's calculated from the probabilities of daggers and darts
- Ashen Scale component also allows Beast Masters to wear it now
- Chain Lightning component now scales damage up to 15d6+10 at level 20 instead of 12d6
- Darkfire Bow component now increases APR too by 1/2 for the non-upgraded and 1 for the upgraded
- Girdle of Fortitude now other than setting the user's constitution to 18, it also has a charge ability once per day that buffs a target of their choice (other than self) with +2 CON, Save vs. Death, and +5 maximum HP.
- Handmaiden's Mace +2 now overhauled more deeply with the poison theme. It also no longer has racial or alignment restrictions.
- Implementation of Handmaiden's now no longer requires it to be installed at the end, and as such it now belongs in the Joinables category. Strength modification takes up to a second to kick in after equipping with the new implementation.
- Vastly extended the Oversight++ component that fixes improper alignments according to lore… or what makes the most sense to me. New changes:
  - Spiders are all true neutral except Wraith ones which are undead evil spiders.
  - Many instances of undead creatures not marked as evil are now considered evil. Skeletons and zombies are considered neutral in 2e as mindless automatons, but I don't really vibe with that, so I adopt the change from 3e, which is that they're neutral evil, similar to Skeleton Warriors. Rejoice, as your lowly BGEE paladin's Protection vs. Evil will serve a purpose against them now.
  - Lizardfolk are now set to Neutral barring exceptions like the Lizard King in IWD who does very questionable stuff
  - Invisible Stalkers no longer marked as evil, since they're neutral elementals from the Plane of Air
  - The Huntress (WK) is a humanoid tanar'ri marked as True Neutral. Changed to Chaotic Evil
  - Other minor creatures unused or used in cutscenes also fixed just in case such as non evil vampires, alu-fiend, liches, and mindflayers
  - Lanfear wolfwere in chapter 6 of BG2 (Coran's minor quest) changed to Chaotic Evil (they're CE according to lore)
  - Instances of golems that are good, or evil fixed except brain golems which are evil.
  - Aataqah is changed to Chaotic Good from Lawful Neutral. Lorewise they're whimsy but benevolent genies (in contrast with efreeti).
  - Frennedan is a Chaotic Neutral Greater Doppleganger. The greater ones should be neutral evil.
  - Also patches various creatures added by existing mods before installation of this one (all manually picked, so don't expect consistency for every and any mod)
- Grease component now also adds a -1 Armor Class debuff (double if save is failed)
- Slightly changed the bonus constitution progression:
  - Nonfighters add 1 bonus HP per 3 points, starting at 12 with 1, 15 with 2, etc, and now can progress up to +5 if they have at least 24 constitution. Fighters always have advantage and can reach +7, as before.
  - Fatigue bonus progression slightly changed so it starts giving bonus at 13 instead of 12, in order to offer a bonus with odd number of constitution points, and smooth out progression.
- Component 1531 now also makes Wail of the Banshee bypass magic resistance without my WB-specific component
- Oni Mage component now patches the "Ogre Mage" string so anyone using it as a name, will be "Oni Mage" instead
- Holy Sword of Tyr now acts as a +5 weapon vs. evil for the purposes of what it can hit
- Energy Drain is now much more powerful:
  - Enemy becomes a devil shade if killed within 1 turn **>>>TODOCHECK>>>**
  - Boosts undead creature if cast on them
  - Caster sucks up the power it was drained from the creature for a while to enhance themselves, heal, and remove their own level drain
- Mage elemental robes ('robes of affinity') can now be worn by any class. Robe of Red Flames is excluded.
- Storm Star now gives a bonus to Priests of Talos: +1/2 APR to them (unupgraded), 1 (upgraded)
- Fire seed enchantment nerfed down to +3 from +6. It's two levels above Melf's Meteors after all (SCS nerfs enchantment to +2 for example)
- Mercykiller Ring now increases also for Stalkers the crit chance, but not the THAC0 and Damage, which is still exclusive to single-classed Thieves. It's also now open to be used by Monks
- Thieves' Hood now still grants the +1 THAC0 and Damage bonus to single classed thieves even without upgrade. The upgraded one doubles this bonus.
- Extended the Shadows component so it includes wraiths, spectres, and undead mists.
- **Started** moving towards using templates to generate files on the fly, instead of loading the mod with a huge amount of files.
- Added **Lacedon** weapon attacks to the natural weapon component
- Wail of the Banshee now kills those with 60 HP or less with a -2 penalty, and those with 8 HD or less are also slain instantly, similar to Death Spell.
- Added compatibility for EEFixpack's new spellstates in the following item/spell components: Skin of Ghoul, Sword of Royal Might, Dusty Rose Ioun Stone, Wondrous Gloves, Plate of the Dark, Helm of Balduran, Jade Fang, Life Stealer, Borok's Fist, Holy/Unholy Words ... (TODO)
- Reduced bonus vs schools of magic in Skull of Death and Shadow Dragon Scale to +3
- Ensured items that disable critical misses do it in a way that makes it much less likely it will ever be undone by critical miss penalties
- Changed the name of Kachiko's Whisper to Whisper and changed the description slightly. Slightly revised its benefits. (TODO on benefits)
- Added mist race creatures as exceptions to the Persistent Wounds effects of Stiletto of the Demarchess
- Element's Fury dagger tweak slightly improved, whereas sometimes a +2 random elemental damage actually becomes:
  - 3% chance every element triggers (2 damage for each element)
  - 4% chance three of the elements trigger (acid, cold, electricity, but not fire, for example)
  - 5% chance two of the elements trigger (acid and fire, for example)
  - Critical hits always trigger a total elemental trigger, on top whatever configuration hits. For example, when dealing a critical hit, the dagger might inflict, say 24 damage, which then adds 2 acid and 2 fire because you got lucky (5% chance), and because it's a critical hit +2 of each element is also added on top (8 combined fire, cold, acid, and electricity damage). More beautiful things may happen with the dagger boost component on, and the finesse one when using a pure thief.
- Potion of Icedust now grants 85% fire resistance (from 75% in previous iteration)
- Some bug in the 2da swap function (TODO)
- Divine Words now also reduce saving throws by 2 for the duration.
- Divine Words: Slightly increased the duration of the effects associated with the two highest HD limits from 4 to 5 (>=12 HD) and 5 to 7 (8 to 11 HD).
- Divine Words: The spells will now add console feedback to inform the user of which tier and duration affected targets.

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
- Make Hold Animal much more useful by allowing it to affect many other types of beasts (5402) (IWDEE BGEE BG2EE EET)
- Make familiars use female voices for casting spells (3165) (IWDEE BGEE BG2EE EET)
- Make succubi and erinyes use the female winged elf animation (3170) (BGEE BG2EE EET)
- Make basic ammunition more expensive (1011) (IWDEE BGEE BG2EE EET)
- Make Power Word, Kill more generally effective for a level 9 spell (585) (BG2EE EET)
- Make Priests of Talos get access to all electricity spells and add a small bonus to electricity damage (2408) (IWDEE BGEE BG2EE EET)
- Make Seeking Sword not disable spellcasting and improve it with level (2405) (IWDEE BGEE BG2EE EET)
- Make Divine Favor's duration scale very slowly with level (3190) (IWDEE BGEE BG2EE EET)
- Make Boon of Lathander improve with level slightly (3200) (IWDEE BGEE BG2EE EET)
- Make Otiluke's Resilient Sphere able to protect NPCs marked as innocents (487) (IWDEE BGEE BG2EE EET) **>>>TODOCHECK LIKELY WILL MISBEHAVE WHEN ENCOUNTERING HOSTILE INNOCENTS>>>**
- Make Pit Fiends closer to Balors in power thereby improving the Gate spell (3210) (BG2EE EET)
- Make created characters able to suffer morale failure instead of being default psychopaths (592) (IWDEE BGEE BG2EE EET)
- Make Cloud of Pestilence better and closer to PnP (TODO)

## Future additions

- Make all fear effects reduce movement speed by half to make it less inconvenient
- Make Necromancers have access to a new HLA: Vampiric Feast
- Overhauling Web component so it adopts the IWD appearance and sound
- Slayer Overhaul
- Maybe giving Control Undead to priests too
