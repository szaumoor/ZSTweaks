# Changelog

## Fixes

- Added prefix: One yuan-ti creature file was using long swords without proficiency for it, resulting in them incurring in penalties
- Added prefix: No minotaurs in BG2 are set to minotaurs race-wise, resulting in them not being affected by opcodes that target minotaurs, such as my Maze tweak
- Added fix for Unholy Reaver for Item Upgrade not being tweaked appropriately in the Soul Reaver component.
- Fixed installation crash with Cloak of Fear component
- Excluded the part that distributes the "Remove Fear" effect for Cloak of Fear if fixpack is installed, since they do that already.
- Small library fix
- Fixed Ring of Purity tweak not copying over the resources required for the item to work properly.
- Fixed Holy Power not properly adding APR bonuses to non-warrior classes
- Fixed Holy Power excluding **non-warriors** instead of **warriors** from getting the APR bonus
- Fixed Holy Power and Tenser's Transformation not being excluded from affecting rangers and paladins for the APR bonus
- Fixed Rhino's Beetle Shield wrong description
- Fix light crossbow tweak not working after some other tweaks to crossbows
- Removed unnecessary whirlwind eefixpack blocks since they don't actually more (old code gone wrong!)
- Fixed Dale Protector boosting all weapon damage instead of only ranged weapon damage to rangers, bards, and thieves
- Fixed an inaccuracy on Dale Protector's description regarding the damage bonus, as it affects all rangers, not just archers
- Fix prefix gated to only run when the fixpack is installed, which is precisely the opposite of what was intended
- Disabled some other fixes when the fixpack is installed
- Moved fix for raceless water elementals to the prefix section, instead of the horrid wilting component
- Library improvements with performance optimizations
- Made many installation checks only run on debug mode, to improve performance on releases

## Modifications

- Light Crossbow tweak no longer requires to be installed at the last, and becomes part of the general tweaks section.
- Merged all the components that tweak disruption weapons into a single component in the General Tweaks section. It also now includes a tweak to one of my items in my Item Pack.
- Added compatibility with my Item Pack (ZS_ItemPack) in the following way:
  - Dagger component modifies the kukris differently, granting no thac0 or critical hit bonus, half the speed bonus, but base damage is increased from 1d4 to 1d4+1
  - With Finesse:
    - Kukris have a 7% less chance of triggering a finesse hit compared to other daggers (37-45%)
    - Rapiers have a 5% less chance of triggering a finesse hit compared to other swords (21-30%)
    - Estocs have a 4% higher chance of triggering a finesse hit compared to other swords (10-19%)
    - No changes for shurikens
  - The new disruption component will patch Shining Light of Lathander and Blade of Calling with the new rebalanced undead-disruption effect
- Katanas and scimitars now have a 10-19% chance to trigger finesse instead of 9-18%
- Improved the implementation of the axes critical hit bonus component to allow configuration of axes and halberds independently.
- Backstab penalty component now allows configuration of the kukri, estoc, and rapier in my item pack. By default, they stay at 0 penalty, except estocs, which have a -1 penalty, which aligns with the long sword proficiency they have.
- Earthquake component now causes 5d10 crushing damage to stone and juggernaut golems once, as per PnP

## New components

- Make Hold Undead bypass Magic Resistance
- Make disrupt undead weapons more balanced and closer to PnP rules. [This replaces the old components that tweaked specific weapons]
- Make Holy and Unholy Word more generally effective throughout the game (TODO)
- Make Disintegrate cause damage to constructs, disrupting defenses, with a chance of holding them (TODO)
- Make minotaurs slightly more dangerous and have the chance to gore with their horns on a successful hit (TODO)
- Make yuanti move faster and inflict minor poison damage on melee (TODO)
- Make Stone to Flesh harmful towards Stone Golems (TODO)
- Make composite bows have a mild damage bonus that depends on strength (TODO)
