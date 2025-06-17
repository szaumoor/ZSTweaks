**Fixes**
- Drizzt component will make Icingdeath's extra damage towards fire-immune creatures will now bypass the vanilla issue where this conditional effect would target also creatures with negative resistances.
- Minor corrections in some spell files
- Added pre-fix: thieves in BG2 that use bastard swords will now use short swords, both because it's legal, and to avoid issues with some of them having penalties to THAC0 due to lack of proficiency.
- Added prefixes: All instances of thieves or mage thieves in vanilla BGEE and BG2EE that use legal weapons without having proficiency in the weapons are also fixed in passing. Bioware may try hard to cripple thieves, but not on my watch.
- Added pre-fix: Two cambions in BG2 are considered "thieves" while wielding a bastard sword +1 (eg. the cambion in the initial dungeon) without proficiency to large swords, resulting in those cambions to wield them at a +3 penalty. They get one pip in large swords so they don't have a penalty. This of course means they will be more likely to hit you in the dungeon, thus increasing the challenge of that encounter slightly.
- Added more performance tweaks, reducing the amount of IO checks during installation, and displacing some checks to the start of the instalation of the mod, regardless of what components are installed
- Fixed holy power and tenser's transformation unnecessarily doing IO that wasn't needed, slowing down the installation if extra apr limited to non-fighters option was on (by default on)
- Fixed a serious bug with the component that adds +1 HP to boots, belts, and bracers, which was making the wearers immune to all game resources


**Modifications**
- Reduced the default Deathbringer attack damage of Sarevok from 150 to 120 (overridable in config file)
- Reduced the duration of Kachiko's Wakizashi Wisdom Drain to 5 rounds (previous 6; 2 in vanilla)
- Reduced the price of Kachiko's Wakizashi back to vanilla
- Kachiko's Wakizashi special Shadow Jump power also raises the backstab multiplier by 1 of Shadowdancers, Dark Moon Monks, and Stalkers for 2 rounds. My SD overhaul is compatible
- Kachiko's Wakizashi component now adds an upgradeable path through Cespenar that increases its power to +5, requiring the sword (duh), a scroll of wail of the banshee and shadow door, and 10000 gold. Optional, can be disabled.
- Since Bards are also hated by Bioware, the Finesse component can also now optionally affect them (overridable in config file), only with thief-usable weapons (bastard swords, two-handed swords, and the like, while usable by bards, won't be affected), but the hits will trigger 25% less often compared to pure thieves, multiplicatively. For example, if they're using a dagger with 45% chance of triggering a finesse attack and that 45% chance is met, they will have to pass another one that checks for 75%. This means that mathematically (and roughly, since it's just a *pseudo*random number generator), their chances would actually become 33%. If it was a long sword with a 12% chance, their chances would become 9%. If it was a short sword with a 25% chance, it would become 18%. This is to make Thieves always the masters at this technique among all rogues, regardless. Every other functionality works the same (dexterity increases their chances at dealing full damage with the finesse attack by widening the penalty to save vs. breath)
- Removed the extra 1 APR for improved haer dalis swords from Item Upgrade. They will retain whe 1/2 APR from the base component.
- Added compatibility for last version of IWDification in Energy Drain component
- Increased the base price of Barbarian Warblade from 17500 to 19500
