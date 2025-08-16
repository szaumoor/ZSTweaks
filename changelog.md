# Changelog

## Fixes

- Added prefix: Shakti's Figurine +4 short sword has a speed factor of 0 from 1
- Moved a portion of IO operations to the beginning to improve the efficiency of components that patch arbitrary numbers of NPCs
- Fixed yet another bug with the dragon disciple component: fire damage bonus was only applying to creatures, not the kit itself, leading to player-created dragon disciples to not benefit from the bonus
- Fixed bug with the blackguard backstab x2 component where the effect was not set as permanent appropriately
- Fixed component that makes throwing daggers usable as melee weapons so it installs in versions of BGEE without SoD
- Fixed component for Arrow of Fire not correctly patching the description for non-BG2EE games

## Modifications

- Component 1545 (character stats) now allows users to specify which of the weapon styles they want to modify, if any (all on by default)
- Protection of undead modification will now not allow stacking with itself
- Added swashbucklers as another optional target for the +1/2 APR at levels 7 and 13 component
- Improved the implementation of the blackguard component that allows them to backstab x2
- Component that adds backstab penalties is now fully configurable: you can add penalties to any and all weapon types, including weapons that are not normally considered "backstab weapons", which makes it more useful in setups where the choice of weapons that can backstab is extended
- Entangle component now makes it bypass magic resistance (still dispellable)
- Entangle component now changes the saving throws required to Save vs. Breath, as it's more accurate in my estimation
- Improved the implementation of Entangle component
- Potion overhaul now makes the explosive potions deal fire damage that bypasses magic resistance, as it is, as far as I can tell not magical in nature, but based on dangerous chemicals reacting violently. The wands provide a contrast to this, since they are clearly magical in nature, and thus they are affected by magic resistance
- Axe crit component now adjusted so two-handed axes deal extra damage equal to 1d10 + Bonus instead of 1d12 + Bonus, which fits the damage range in IWD for two-handed axes

## New Components / Features

- Make the Plate of the Dark not just a generic +1 full plate but something more unique based on the description
- Make Defensive Spin protect against backstabs for its duration and allow very slow movement
- Make the belt of gender inversion give a bonus vs. the original gender of the wearer
- Make Shakti Figurine last longer and more powerful
- Make Ilbratha give the wielder a chance to activate Blur when attacked and make Mirror Image last for longer
- Make Smashing Wave a bit more powerful and bypass magic resistance
- Make Arrows of Dispelling force a save vs. Spell at -2 for them to work
