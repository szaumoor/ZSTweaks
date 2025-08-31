# Changelog

## Fixes

- Misc code improvements
- Added prefix: Shakti's Figurine +4 short sword has a speed factor of 0 from 1
- Moved a portion of IO operations to the beginning to improve the efficiency of components that patch arbitrary numbers of NPCs
- Fixed yet another bug with the dragon disciple component: fire damage bonus was only applying to creatures, not the kit itself, leading to player-created dragon disciples to not benefit from the bonus
- Fixed bug with the blackguard backstab x2 component where the effect was not set as permanent appropriately
- Fixed component that makes throwing daggers usable as melee weapons so it installs in versions of BGEE without SoD
- Fixed component for Arrow of Fire not correctly patching the description for non-BG2EE games
- Fixed component making a check twice for no reason
- Fixed yet another bug with dragon disciple component giving them access to Horrid Wilting instead of Incendiary Cloud
- Hardened the code that deals with arbitrary amounts of weapon types for tweaking such that it does not match items that are not supposed to be considered actual items of the type (like daggers with no equipping animation: SCS shapeshift tokens, Grey the Dog attack weapon...)
- Fixed shield component changing the description of the base Tower Shield even if the option was disabled in the config file
- Fixed description omissions
- Fixed Shadow Wardstone not using "Ioun Stone" as the unidentified item name
- Fixed Shadow Wardstone not being retroactively patched as protecting against critical hits if related component was installed first
- Fixed Bolt of Biting component not adding the promised +1 poison damage on hit (irrespective of successful poisoning)
- Fixed broken Quivering Palm component
- Fixed IDS lookup for spectres
- Fixed stray '\' added to tower shield description Armor Class text in shield component
- Fixed Dolorous Decay making the new effects thereof subject to magic resistance, unlike the vanilla effects.
- Fixed inconsistent Power in Nature's Beauty component added effects that could cause problems when casting on targets with spell level immunities
- Fixed incorrect strings being shown when non-vampiric undead are hit by Sunray
- Fixed small issue in melf component
- Added Mordenkainen's Sword (Force Blade) as another item that benefits from the magic weapons APR component. I forgot. Oops.
- Fixed Grease Tweak inappropriately stacking fire resistance and movement speed debuffs

## Modifications

- Component 1545 (character stats) now allows users to specify which of the weapon styles they want to modify, if any (all on by default)
- Protection of undead modification will now not allow stacking with itself
- Added swashbucklers as another optional target for the +1/2 APR at levels 7 and 13 component
- Improved the implementation of the blackguard component that allows them to backstab x2
- Component that adds backstab penalties is now fully configurable: you can add penalties to any and all weapon types, including weapons that are not normally considered "backstab weapons", which makes it more useful in setups where the choice of weapons that can backstab is extended
- Entangle component now makes it bypass magic resistance (still dispellable)
- Entangle component now changes the saving throws required to Save vs. Breath, as it's more accurate in my estimation
- Entangle component improves the spell further, making the AC debuff -4 instead of -2, and setting their APR to 1, which mimics difficulty attacking while entangled
- Improved the implementation of Entangle component
- Potion overhaul now makes the explosive potions deal fire damage that bypasses magic resistance, as it is, as far as I can tell not magical in nature, but based on dangerous chemicals reacting violently. The wands provide a contrast to this, since they are clearly magical in nature, and thus they are affected by magic resistance
- Axe crit component now adjusted so two-handed axes deal extra damage equal to 1d10 + Bonus instead of 1d12 + Bonus, which fits the damage range in IWD for two-handed axes
- Component that sets APR for magical weapons to 2 sets it to 3/2 for classes that have fighter levels so classes that are more "purist" or not benefiting from warrior class benefits can get more out of it, and maintaining more balance. Improved code for the component as well.
- Components 1537 and 1601 to make all potions usable by everyone and not stackable with themselves merged with the potion overhaul component. Now you can use the configuration file to specify if you want the overhaul, or the usability tweak, or the self-stack tweak or any combination thereof.
- Fireball animation part of the fireballs component also patches the explosion from Dragon's Breath to be more visually appealing. Mod component's name modified accordingly: "Make fireball-type spells improve more with level and/or improve explosion animations"
- Fireball component now also raises the minimum damage to Dragon's Breath (the spell) to 40 (before saves, 20 if saved): 20d10 ⇾ 20d9+20. This is thematically in accordance to other tweaks to powerful spells in this mod
- Planetar and Deva components now allow both to instantly cast all of their spells
- Shield component now allows you to opt in or out from the movement speed debuffs. It's OFF by default, that is, no movement speed debuffs will be applied unless you change it.
- Entangle component now replaces in BG2EE the horrendously ear-destroying sound that happens when it's active in an area with BGEE's version, which is much more palatable.
- Stat tweaks (weapon styles, strength, etc) now patches the description of weapon styles.
- Blade and Skald APR component now also include Priests of Tempus (only 2 pip proficiency improvement)
- Blade and Skald APR component now also allows them to take 2 pips in their proficiencies
- Opened the beetle component to IWDEE
- Opened Quivering Palm component to IWDEE
- Fireseed component now allows the created items to be undispellable.


## New Components / Features

- Make the Plate of the Dark not just a generic +1 full plate but something more unique based on the description
- Make Defensive Spin protect against backstabs for its duration and allow very slow movement
- Make the belt of gender inversion give a bonus vs. the original gender of the wearer
- Make Shakti Figurine last longer and more powerful
- Make Ilbratha give the wielder a chance to activate Blur when attacked
- Make Smashing Wave a bit more powerful and bypass magic resistance
- Make Arrows of Dispelling force a save vs. Spell at -2 for them to work
- Make Doomplate an armor for those that want to RIP. AND. TEAR.
- Make Hexxat's Blood Drain have a 1 Hour (5 turn) cooldown instead of being usable once per day
- Make everyone able to perform omnidirectional backstabs (aka face-stabbing)
- Make Acid Arrow's extra damage not subject to magic resistance

## Planned future additions

A component to improve the Slayer transformation with new perks and abilities, and a better scaling from the time you get it to the end of ToB.
