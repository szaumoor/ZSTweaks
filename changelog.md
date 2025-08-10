# Changelog

## Fixes

- README information omissions fixed
- Many corrections to typos and grammar issues in all the text in the mod and used by the mod as translation strings
- Added DAGG24 (Dagger +3) prefix: should have a weight of 1 instead of 0
- Fixed instances of tph scripts not performing a check to avoid double inclusions
- Added missing documentation for Martial Staff in README
- Fixed a fairly horrendous bug in the script that added fire spells to existing dragon disciple creatures. If anyone installed this and never noticed a problem, is likely because no dragon disciples were found, or they didn't personally find any during the playthrough, as I'm pretty sure spawning them would have crashed the game.
- Fixed dragon disciple component not adding meteor swarm to their spellbook
- Fixed Burning Earth in BGEE overlaying other equipped weapons due to a corruption in the flags field

## Modifications

- Divided the ginormous translation file in a bunch of logical parts. This may make the task of translating the mod less daunting (if anyone ever dares to do that)
- Added Shroud of Flame to the list of Dragon Disciple fire spells available by default
- Added a configuration option that makes the blunt weapon tweak only apply to creatures that are not wearing armor, as you could think that the overall lessened effectiveness of most armors against crushing is already enough. This is **disabled** by default, but you can enable it in the configuration file.
- The Visage component now will detect appropriately the presence of Forgotten Armaments, and it will be skipped if it's detected, since it's conceptually different.

## New Components / Features

- Make the Impaler slightly more scary: +5% higher critical hit chance, +5 more impaling damage on crits
- Make Blades and Skalds get 1/2 APR on levels 7 and 13, much like Fighters