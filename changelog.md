# Changelog

## Fixes

- Improved the code fixing probability of Silver Sword so it doesn't warn when the fixpack is installed too
- Improved the code by using better and time-tested functions
- Asp's Nest description will now correctly reflect the value selected in the configuration file
- Ensured other components that grant immunity to death or killing opcode they also grant immunity to the custom resource for vorpal hits in the vorpal component, to ensure consistency
- Performance improvements due to unnecessary loops being removed from some components
- Fixed code bug with Wall of Moonlight component that prevented it from patching subspells correctly
- Fixed bug in recent new component for Doomplate that wasn't setting demonic Magic Resistance to 0 correctly
- Elixir of Health in potion overhaul now properly disables the "Poison" and "Poisoned" strings in the combat log for the brief period where it grants invulnerability to further poisoning
- Misc code fixes

## Modifications

- Vorpal component now patches all items and spells that provide immunity to kill target opcodes, for a more cohesive experience when hitting enemies with immunity to instant death effects
- Component that makes cure poison spells instantly cast now update their descriptions
- Removed .tra references in cases where changes to description are minimal (such as changing the casting speed of a spell)
- Cure Poison component now also grants them a very brief immunity to poison effects to avoid immediate re-poisoning

## New components

- Make the Robe of Vecna the Robe of Larloch instead
- Make Ashen Scales more unique beyond enchantment level
- Make Crimson Chain more unique beyond enchantment level
