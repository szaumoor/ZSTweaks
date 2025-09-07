# Changelog

## Fixes

- Improved the code fixing probability of Silver Sword so it doesn't warn when the fixpack is installed too
- Asp's Nest description will now correctly reflect the value selected in the configuration file
- Ensured other components that grant immunity to death or killing opcode they also grant immunity to the custom resource for vorpal hits in the vorpal component, to ensure consistency

## Modifications

- Vorpal component now patches all items and spells that provide immunity to kill target opcodes, for a more cohesive experience when hitting enemies with immunity to instant death effects
