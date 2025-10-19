# Changelog

## Fixes

- Added prefix: One yuan-ti creature file was using long swords without proficiency for it, resulting in them incurring in penalties. Disabled if the fixpack is installed (currently only existing in CamDawg's fork)
- Added prefix: No minotaurs in BG2 are set to minotaurs race-wise, resulting in them not being affected by opcodes that target minotaurs, such as my Maze tweak
- Added prefix: Golem Juggernaut standardized to Stone Golem
- Added prefix: Greater Clay Golem should be treated as a Clay Golem class-wise
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
- Removed unnecessary whirlwind fixpack blocks since they don't actually more (old code gone wrong!)
- Fixed Dale Protector boosting all weapon damage instead of only ranged weapon damage to rangers, bards, and thieves
- Fixed an inaccuracy on Dale Protector's description regarding the damage bonus, as it affects all rangers, not just archers
- Fix prefix gated to only run when the fixpack is installed, which is precisely the opposite of what was intended
- Disabled some other fixes when the fixpack is installed
- Moved fix for raceless water elementals to the prefix section, instead of the horrid wilting component
- Library improvements with performance optimizations
- Made many runtime checks on code run on debug mode, to improve performance on releases
- Fixed shadow creature component not being open to IWDEE when it should. Also improved the performance of the component installation.
- Fixed incorrect description for purifier component
- Deleted documentation of components that no longer exist or were merged into other components
- Forgot to upgrade the regeneration granted by Eldath's Mist in the code from 1 HP/s to 2 HP/s
- Improved the code of the Armor of Faith component (more old code gone wrong!)
- Added Underdark Brain Golems to the list of incorrectly aligned creatures fixed by the alignment creature component (was Neutral, should be Lawful Evil)
- Fixed Vorpal Hit component not working as expected due to missing spell states in Stoneskin and Iron Skins
- Disabled more prefixes that are rendered moot if the Fixpack is installed
- Fixed Swashkalbladepus component not patching swashbucklers if only swashbucklers were selected in the preferences

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
  - The new disruption component will patch Shining Light of Lathander with the new rebalanced undead-disruption effect
- Katanas and scimitars now have a 10-19% chance to trigger finesse instead of 9-18%
- Improved the implementation of the axes critical hit bonus component to allow configuration of axes and halberds independently.
- Backstab penalty component now allows configuration of the kukri, estoc, and rapier in my item pack. By default, they stay at 0 penalty, except estocs, which have a -1 penalty, which aligns with the long sword proficiency they have.
- Earthquake component now causes 5d10 crushing damage to stone and juggernaut golems once, as per PnP
- Character stats now also allows modifying the saving throws for shorty races. You can choose a toned down version, to standardize it to +2 bonus, regardless of constitution, or to nullify it entirely. Race description will not be updated for now
- Shield of Archons component modified to follow PnP slightly more closely, which provides an extra edge to the spell. First, it's renamed to Planar Shield, as "archons" are implied to be good-aligned, and evil casters would have access to Shield of the Tanar'ri instead. To generalize it, the name was changed. The spell now also provides a +4 bonus to saving throws against area effects that are not centered directly on the caster, as well as stationary area effects, or non-magical or non-absorbable effects.
- Hugely simplified the code in Shield of Archons component using CamDawg's functions (praise be to him)
- Flesh to stone component now also adds the option to lightly overhaul the Stone to Flesh spell, making it cause damage to stone golems, as per PnP.
- Armor of Faith now also includes damage reduction against Poison damage (not poisoning itself)
- Death Fog component is now closer to PnP, and the banishment effect is removed. Now it deals more acid damage, reduces acid resistance, decreases movement speed and bypasses magic resistance. (TODO)
- Deva and Planetar components now merged
- Configuration file is now in **ZSTweaks/configurations**
- Added a group installation component for creature tweaks.
- *Cautiously* added the option to choose which components are installed through user input in the creatures, npc, and class/kit tweaks. See **ZSTweaks/configurations**, if you're interested and set it as per your liking.

## New components

- Make Hold Undead bypass Magic Resistance
- Make disrupt undead weapons more balanced and closer to PnP rules. [Replaces the old components that tweaked specific weapons]
- Make Holy and Unholy Word more generally effective
- Make Disintegrate cause damage and slow some golems, as per PnP
- Make minotaurs slightly more dangerous and have the chance to gore with their horns on a successful hit
- Make Yuan-ti slightly more powerful
- Make Whirlwind and Evasion grant 3 uses of the Improved variants instead of existing as a silly lesser version (TODO)
- Overhaul golem creatures (TODO)
