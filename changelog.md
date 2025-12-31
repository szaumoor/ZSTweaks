# Changelog

## Fixes

- Cleaner implementation of the Meteor Swarm component
- Tagged components in the README to indicate compatible games
- Added compatibility code that patches IWDEE spells, distinguishing between IWDEE with fixpack or BG with or without it (IWDification does not add fixed spells, even if the fixpack is installed previously)
- Update wand rebalance component so it patches appropriate when the game is IWDEE and the Fixpack is present
- Poison Weapon component was incorrectly not open to BGEE
- Fixed Imprisonment component not being open to bg2ee due to a typo
  
## Modification

- Improved implementation of Chain Lightning
- Opened the following components to IWDEE:
  - Goodberries (240)
  - Imprisonment (562)  
  - Control Undead (500)
  - Melf's Acid Arrow (447)
  - Contagion (380)
  - Horror (210)
  - Meteor Swarm (180)
  - Wail of the Banshee (170)
  - Backstab reduction for Iron Golem Fist and BBoD (160)
  - Throwing Daggers with Melee Mode (1684)
  - Ankheg's Plate (1216)
  - Whispers of Silence (1674)
  - Chain Lightning (451, projectile improvement only)
  - Holy Power (190)
  - Negative Plane Protection (260)
  - Entangle (270)
  - Fire seeds (310)
  - Nature's Beauty (320)
  - Confusion (330)
  - Armor of Faith (420)
  - Dolorous Decay (463)
  - Wondrous Recall (464)
  - Sun Spells (467, only False Dawn part)
  - Repulse Undead (505)
  - Silence (509)
  - Aura of Flaming Death (515)
  - Holy/Unholy Word (539)
  - Minotaurs (3130)
  - Ogre Mages (3140)
  - Golem Overhaul (3120)
  - Chromatic Orb (555)
  - Called Shot (2232)
  - Barkskin (492) // TODO
