# Changelog

## Fixes

- Improved the code fixing probability of Silver Sword so it doesn't warn when the fixpack is installed too
- Improved the code by using better and time-tested functions
- Asp's Nest description will now correctly reflect the value selected in the configuration file
- Ensured other components that grant immunity to death or killing opcode they also grant immunity to the custom resource for vorpal hits in the vorpal component, to ensure consistency
- Performance improvements due to unnecessary loops being removed from some components
- Fixed code bug with Wall of Moonlight component that prevented it from patching subspells correctly
- Misc code fixes

## Modifications

- Vorpal component now patches all items and spells that provide immunity to kill target opcodes, for a more cohesive experience when hitting enemies with immunity to instant death effects
- Component that makes cure poison spells instantly cast now update their descriptions
- Removed .tra references in cases where changes to description are minimal (such as changing the casting speed of a spell)

## New components

- Make Slow Poison and Neutralize Poison grant a very brief immunity to poison effects (TODO)
