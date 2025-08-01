# Components

<details>

<summary> <b> General Tweaks </b> </summary>

**Component 120:** Make conjured magical weapons grant 2 APR by default

The problem with these spells is that they promise power, but your little sickly wizard is not a very good fighter at all. I think this promise should be more serious, and therefore, by default, all these weapons grant 2 APR by default.

**Component 443:** Make "Symbol, X" spells slightly more powerful and rebalance the enemy versions

These are the available changes, all enabled by default, but can each be disabled in the configuration file:

- Symbol, Death: This spell is useless if the health of the enemy, which ordinarily you cannot know, is above that threshold, so it's fairly wasteful to use the spell unless the enemy is Near Death or the enemies are very weak anyway and easy to kill. As such, now the spell works for HP above 60, but with a bonus of +6, giving it at least some (small) chance of working at all times.
- Symbol, Pain: The save will now be made at -4, not 0, similar to other Symbol spells. It will also reduce damage output by 10% for its duration. The duration seems rather silly, so it'll be reduced to 11 rounds instead of 11 turns.
- Nerf enemy symbol spells: These spells exist so the enemies don't kill, stun, or scare themselves with them. But funnily enough they also have effects that last more than double compared to the player-usable ones. I hate that sort of artificial disparity / difficulty, so now the durations will match.

**Component 1120:** Make some weapon categories incur backstab penalties for balance

This reduces the backstab multiplier of some weapons that realistically would not be great for backstabs, which also includes pretty broken weapons when used for backstabs, such as the Staff of Ram.

- No penalty: Piercing swords, Ninja-tos, Clubs, and Daggers.
- -1 penalty: Long swords, Scimitars, Katanas.
- -2 penalty: Staves

Note that this will make holding two weapons with backstab penalties increase them additively, which is an unavoidable side effect of the fact that the backstab reduction cannot be applied per weapon, only universally. For example, if you're an assassin with a 6x backstab multiplier, holding two long swords would reduce this to 4x.

**Component 1121:** Make Flails and Morningstars always inflict a small amount of piercing damage

Both types of weapons have piercing parts; that's why. The amount of piercing is very small and depends on enchantment level:

- +0, +1 -> 1 point of piercing damage
- 2+, +3 -> 1d2 points of piercing damage
- +4, +5 -> 1d2+1 points of piercing damage
- +6 -> 1d3+1 points of piercing damage

**Component 1150:** Make some weapon categories adjust their baseline damage

This component makes changes to some weapon categories where I feel a tweak would be valuable or more interesting. All of these options are optional and can be turned on and off in the configuration file (all are on by default). Here are the changes:

- Spears: 1d6 is a little low for spears in my opinion, and it fills the imaginary "gap" of two-handed weapons with damage between staves and halberds.
- Warhammers: 1d4+1 always felt a little too small and narrow for hammers, so now it will be 1d5+1. This doesn't affect special hammers that have double the damage potential, such as Crom Faeyr. It also includes Voidhammer +3, which only inflicts magic damage.
- Ninja-tos, Wakizashis, and Katanas: This will make these inflict now 2d4 for ninja-tos and wakizashis and 2d5 for katanas. I think the inclination is clearly towards "Kara-Turan/eastern blades are higher quality." In practical terms, it just means that these swords will deal more minimum damage compared to long swords and scimitars, and luck bonuses would allow maximum damage dealt with less effort. Additionally, it also makes wakizashis a piercing/slashing weapon, since in the real world, they're really more of a slashing weapon anyway though in practical terms it will still keep hitting as piercing most of the time (this change can be disabled or enabled independently).
- Bastard swords: I never liked that bastard swords were "between long swords and two-handed swords," but there was no max damage difference between long swords and bastard swords. So now they're damage-wise actually between both (1d8+1).
- Two-handed swords: This increases the minimum damage, similar to bastard swords, and will deal 1d9+1 as base. Two-handed swords that deal 1d12 base damage will instead deal 2d6.

**Component 1361:** Make axes deal extra damage equal to its base damage on critical hits

The only difference between axes and swords functionally is the speed factor. Axes are 2 points slower than long swords. Speed factor determines how early or late you hit during your turn to attack each round. Its significance is debatable, and in my experience it's much more important for backstabbing, to ensure that the first movement of your character when attacking is an actual attack and not something cosmetic. To widen the difference between both, axes have the following difference:

- Melee critical hits for one-handed axes deal extra damage equal to 1d8 + Enchantment (1d12 in the case of two-handed axes)
- Ranged critical hits deal extra damage equal to 1d6 + Enchantment

For example, a critical hit with a +3 sword could deal 20 slashing damage, but if it was an axe, it would deal instead between 24-31 slashing damage (i.e. 20 plus 1d8+3)

This is conceptually how it works in NWN. Axes deal triple critical damage. That would be absurd in the context of BG's health pools, but it provides regardless a bonus. Skull breaker!

**Component 1362:** Make maces, clubs, and hammers damage the target's AC temporarily based on enchantment level

This component adds a concept present in various games to maces and hammers, which is that armor is (or becomes) less effective when hit by them. This is true in BG in the sense that non-clothing armors are generally set, with a few exceptions, to be easier to hit with blunt weapons, but it doesn't apply to the numerous and vast majority of creatures that don't use an actual armor item.

The Armor Class debuff is mild and the power of it depends on the enchantment level of the weapon. It applies only to maces, clubs, and hammers, and lasts 12 seconds, which is refreshed each hit with no save allowed. Lower-level debuffs cannot override higher level debuffs. For example, if you have a character applying a -3 debuff with a +4 club, another character with a +1 mace will not remove the previous one. That is, the more powerful takes precedence.

- +0,+1: -1 Armor Class debuff for 2 rounds
- +2,+3: -2 Armor Class debuff for 2 rounds
- +4,+5: -3 Armor Class debuff for 2 rounds
- +6: -4 Armor Class debuff for 2 rounds

Overall this should provide a mild tactical advantage when having at least one of your party members wielding these blunt weapons. This applies to enemies wielding these weapons too, so be warned.

**Component 1435:** Make Darts have a speed factor of 0 and extend the range to 30 ft

Self-explanatory. It's the lightest weapon, realistically. It also makes them slightly less inconvenient by making them have a range equivalent to those of arrows and bolts.

**Component 1440:** Make daggers have general extra features to compensate for the low damage

There's generally very little reason to use a dagger because:

- All other melee weapons cause more damage
- Your other weapons will never be stolen (read the proficiency description for daggers in BG)
- Using the dagger has no benefits of any sort for being a small weapon
- A saving grace they might have is that some might have a semi-interesting effect which likely gets overshadowed later

This is a small change to make daggers slightly more appealing on a general level. They will all have the following traits:

- THAC0 is always 1 higher (e.g. a Dagger +2 will have a +3 THAC0 bonus, and the description will reflect it)
- Speed factor is 2 points lower (normally always 0, in the case of custom daggers, this may be different if their speed factor is unusually high). Description will reflect this
- +5% Critical chance, which may stack with a similar bonus in any particular daggers. Description will not reflect this.
- Deadly critical hits: critical hits do moderately greater damage in a second tick. The formula for critical damage added is 2 dice of **Max Weapon Damage** **+** (**Max weapon damage**). Specifically:
  - Dagger **+0** -> 2d4+4, i.e., 6-12 dmg
  - Dagger **+1** -> 2d5+5, i.e., 7-15 dmg
  - Dagger **+2** -> 2d6+6, i.e., 8-18 dmg
  - Dagger **+3** -> 2d7+7, i.e., 9-21 dmg
  - Dagger **+4** -> 2d8+8, i.e., 10-24 dmg
  - Dagger **+5** -> 2d9+9, i.e., 11-27 dmg
  - Dagger **+6** -> 2d10+10, i.e., 12-30 dmg

Example: An attack with a dagger +2 with a character that has single-weapon proficiency rolls an 18, which becomes a critical hit. The damage of this hit is 16. Immediately after, another 2d6+6 will be rolled, adding 8-18 damage to the critical hit, thus making the full damage of the critical hit between 24 and 34 damage.

All these bonuses are additive, which means they are not affected by most effects, or strength, although it also means that they're good weapons for characters with low strength, as when they critically hit, they will have a fairly substantial bonus, regardless of it.

Exceptions: Grave Binder is not affected by these bonuses because it's an oversized dagger. Other unusual daggers will be treated on a case-by-case basis.

**Component 1450:** Make some rogue weapons able to do more damage if wielded by pure thieves (Finesse)

This component is an attempt at making single-classed Thieves more effective with a portion of thief-usable weapons without relying on stats, attacks per round, or proficiency points.

Essentially, when wielding a Thief weapon, they can use what I call "finesse," which is a concept that I borrowed from NWN. In short, they have a chance per attack to deal extra damage, which stacks additively after the direct damage of the weapon is calculated, and it is based on the base attack damage of the weapon used.

You could think of this as a part dirty-fighting combat skills of rogues, or like a minor sneak attack that triggers rarely. This gives pure thieves a slight edge and makes the power gap between them and multiclassed thieves tighter. The chances of triggering are modified by weapon type and the enchantment level (2% per odd enchantment level, 1% for even).

This includes bows, crossbows, clubs, daggers, long swords, scimitars, wakizashis, ninja-tos, katanas, and short swords. The general rule for damage is Dice Number * (Dice size - 1) + Bonus (with exceptions). To be more specific:

- **Long swords, Staves**: 6-15% chance to inflict 1d7/5+bonus of slashing/crushing damage
- **Katanas, Scimitars**: 9-18% chance to inflict 1d9+bonus/1d7+bonus of slashing damage
- **Ninja-tos, Wakizashis, Slings**: 16-25% chance inflict 1d7+bonus/1d3+bonus of slashing/piercing/missile damage
- **Short Swords, Clubs**: 26-35% chance to inflict 1d5+bonus of piercing/crushing damage
- **Bows, Crossbows**: 31-40% chance to inflict 1d5 or 1d7 of missile damage, respectively
- **Darts, Daggers**: 43-52% chance to inflict 2 + bonus / 2 (rounded down), 1d3+bonus of missile or piercing damage, respectively

A counterbalance is also added such that this damage forces a save vs. Breath to take only half of the damage (extra damage dealt, assuming a failed saving throw and before resistances, is *never* lower than 2). This saving throw bonus or penalty depends on the wielder's current dexterity, which improves up to 24 dexterity. This save's penalty increases by the enchantment level as well. For example, if you have a Long Sword +0 that gets a +2 bonus at a particular level of dexterity, using a Long Sword +3 would make it a penalty of -1 instead. More details:

- **Katanas**: +0 katanas at DEX <12 force a save at +7 bonus; progresses up to 0 at DEX >=24
- **Long swords, Scimitars**: +0 weapons at DEX <12 force a save vs. +6; progresses up to -1 at DEX >=24
- **Ninja-tôs and Wakizashis**: +0 weapons at DEX <12 force a save vs. +5; progresses up to -2 at DEX >=24
- **Short Swords, Slings, Clubs, Staves**: +0 weapons at DEX <12 force a save vs. +4; progresses up to -3 at DEX >=24
- **Darts, Bows, Crossbows, Daggers**: +0 weapons at DEX <12 force a save at +3 bonus; progresses up to -4 at DEX >=24

Note that this component does not account (automatically) for special weaponry which may use a different kind of damage-dealing effect than normal or otherwise vary in normal parameters. For example, Voidsword +3 in SoD causes only magic damage and is not part of the damage of the weapon as such, but exists as a separate effect. These have to be added manually (in that example, the extra damage would occur in the same way as the others, but only as magic damage, which is intended). Currently, the following thief-usable items are accounted for:

- Voidsword, Void-arrows, Void-bullets (SoD/BG2, magic damage)
- Fierce Swirl +2 (Lava's Shades of the Sword Coast -- BGEE, magic damage)
- 1d2 Arrows of Antimagic will be skipped (SoD, it's meant to deal almost no damage)
- Arrows of Detonation are also skipped, since they're not designed to pierce
- Broken Spirit Arrow +1 will be skipped (The Calling -- BGEE, it's designed to deal only 1 point of damage)

Finally, the weapon categories affected are optional and can be turned off in the configuration file. As such, you can disable categories if you don't want them affected by the "finesse" effect.

**Component 1533:** Rebalance some wands

- Wand of Magic Missiles: it casts 3 missiles, not 1, which makes it generally useful for the majority of both games, same as casting from a scroll. A single missile is quite often a missed opportunity for an action during your round
- Wand of Fear: Fear effect duration reduced from 15 rounds to 1 turn, undocumented +2 save bonus is eliminated, and as such it will be as effective as the Horror spell or the Warcry HLA (sad, sad, vanilla HLA)
- Wand of Paralysis effect reduced from 1 turn to 7 rounds
- Wand of Sleep: description now notes that it only works for up to 4 HD monsters
- To be continued

**Component 1534:** Rebalance some potions

- Potion of Icedust: instead of providing a set immunity to fire for 1 round, it adds +75% resistance to fire for 3 rounds. I was considering making this effect undispellable but decided against it.
- Potion of healing (basic): these options are generally never used after a while. Therefore, now they heal 12 HP instead of 9 HP, which makes them marginally more useful without breaking balance
- Potion of Heroism: it also prevents morale failure as it increases the confidence of the drinker, and improves damage by 1. The THAC0 bonus it provides is no longer set to 90% of current, but instead improves immediately by 2, which is strictly a better outcome, since there will be no longer diminishing returns. It can also be drunk by any class
- Potion of Invulnerability: it also increases magic resistance by +10%, and it can be used by any class
- Elixir of Health: the HP recovered is now 20 (from 10) and protects against being poisoned (but not to direct poison damage; not dispellable) for 10 seconds. This is added such that when taking heavy damage, if you're poisoned, it's more desirable than just gulping down a better HP potion to ensure survivability
- Potion of Perception: now the proper "detection" thief skills are improved further (find traps and detect illusions): 40%. Additionally, the enhanced perception improves Armor and Saving Throws by 2
- Potion of Power: this makes the potion prevent morale failure like the potion of heroism, it improves all thieving abilities (not just some), it improves casting speed by 1, and it now also grants +10% higher damage output (physical and magical), which makes it useful for any class. Finally, the THAC0 bonus it provides is no longer to 80% of current, but instead improves immediately by 4, which is strictly a better outcome, since there will be no longer diminishing returns. Its rarity and price should be rewarded handsomely
- CHARNAME'S Tankard: now it heals 27 HP three times per day, and it adds +1 Strength and Constitution for 1 turn, since it mentions feeling stronger when holding it.
- All Strength potions: usable by any class

**Component 1535:** Make all potions usable by all classes

Self-explanatory. There's no earthly reason your character can't put that potion up to their mouth and drink it.

**Component 1537:** Make Poison-curing spells an instant cast so attempting to cure poison is less likely to be interrupted

Self-explanatory. It's quite a pain when it's something that is supposed to cut a poison's effect short, but it's almost guaranteed to be interrupted for the caster unless you're extremely precise with casting timing (and you're lucky). This does not fully prevent interruption, but it makes timing the cast far easier.

**Component 1538:** Make jewelry and other items meant to be sold more valuable

This improves the value of all necklaces, rings, and gems that are not magical in nature (no passive or active traits of any sort). The component increases the value of those by 50% by default. However, this is fully customizable. Check the ZSTweaks/**zstweaks.prefs.txt** file if you want to customize this.

**Component 1539:** Make classes other than arcane and divine spellcasters able to use scrolls freely

This component opens up scrolls to others, similar to other game editions. You can think of scrolls as set of instructions to cast a spell, which anyone could use if they have the ability. The options are:

- **Everyone can**: scrolls are usable by anyone at any point, with the vanilla restriction of having 9 intelligence at least
- **Everyone can as long as they have the right stats depending on scroll type**: same as above, but to require more investment to increase your skillset, you need to have an Intelligence of 8 + Spell Level to cast a wizard spell scroll, and a Wisdom of 8 + Spell Level to cast a priest spell scroll. For example, a level 5 priest scroll would require 13 Wisdom, and a level 8 wizard scroll would require 16 intelligence. Note that this restriction applies also to classes that could use scrolls originally.
- **All bards and Thieves can**: this allows only rogues to do this, with the vanilla rules of 9 intelligence. This was added because rogues are the handy jack-of-all-trades types that can "fake" other classes and are generally skillful and always have an ace up their sleeve.
- **All bards and Thieves can as long as they have the right stats depending on scroll type**: Same as the previous option, with the restrictions of the second option. Note that this restriction applies also to classes that could use scrolls originally.

Note that this component differentiates between "wizard scroll" and "priest scroll" by usability flags. If a spell scroll allows priests to use them, they are considered priest spell scrolls.

It's also worth mentioning that ToF's feat to use scrolls will also be rendered useless, where it applies.

**Component 1544:** Make scrolls always cast at the character level regardless of class

This component will process all existing scrolls in the game, vanilla or modded, and make sure they're cast at the character level, no matter what your class is. So if you have a level 16 Thief that can use scrolls by whatever means (like using my previous component), they will be able to cast it as if they had a spellcasting level of 16.

This pairs well with the previous component and greatly increases the usability of scrolls as a general resource for the whole party. I would recommend adding the options to enforce stat requirements so it's a bit more fair, but that's just me.

**Component 1601:** Make potions and food items's effects universally incapable of stacking with themselves

This prevents cheesy stacking of things like Potions of Fire Resistance, Potions of Invulnerability, etc. Applies to food items too, such as apples from Lunia and goodberries.

**Component 1650:** Make mage robes without cloaks (like Robe of Vecna) take on the appearance of robes with cloaks

Purely cosmetic tweak. I've never liked the look of robes without cloaks or without hoods (there's really nothing to look at). Since the hooded version is more involved and many may prefer to see the character's head, the cloaked look is the default one.

**Component 1541:** Make vorpal hits not work if target is under Stoneskin or Ironskins

This component patches all weapons that deal vorpal hits in the vanilla game such that they don't work as long as the target is under the Stoneskin or Ironskins spells, as per the 2nd edition.

This patching is manual, and I'm not too sure I can make a script that does this automatically for any and all sources of vorpal hits installed through other mods, and as such it patches the following vanilla sources of vorpal hits:

- Axe of the unyielding +5
- Ravager +6
- Balor's weapon
- Solar's Bow/Sword
- Planetar's Sword (unless my component for planetars is installed, which already removes the vorpal component)
- Silver sword

If you want this component working for other mod-added weapons that cause vorpal hits (including creature attacks), let me know and I'll make sure this component patches those too.

**Component 1545:** Make the basic benefits and progression of various character stats more streamlined or interesting

This component has a series of optional components that tweak the following (consult the config file to allow or disallow -- all allowed by default):

- **Constitution** bonuses
  - It makes the HP bonus progression more streamlined, similar to NWN and 3.5e. The HP bonus is now 1 HP per 2 levels, starting at 12. It grows up to +7 HP at constitution 24 and 25.
  - Non-fighter classes also get a HP bonus from 12 Constitution, however, it grows less, and less quickly, up to +4 at 20 Constitution. This still improves vanilla, where they can only get +2 at most at Constitution 16. +1 HP is granted at constitution 12-14, +2 at 15-16, +3 at 17-19, and +4 at 20+.
  - Regeneration by constitution starts at 18 constitution but it will be very slow. It starts at 1 HP every 300 seconds at 18, then 240, 180, 160, 140, 120, 90, and finally 60 seconds at 25 constitution.
  - Fatigue bonuses start at constitution 12 but and it only grows above vanilla values at 25 Constitution.
  - HP Penalties for constitution also start at 8 Constitution and increase every 2 Constitution below, except 1 Constitution, where it jumps from -4 to -5 directly.
- **Dexterity** bonuses
  - Progression of Armor Class and missile thac0 follows NWN style as well, with the exception that the +7 bonus is always received at 25 Dexterity. This encourages maxing out dexterity if the maximum bonus is desired.
  - Penalties also start early, at 9 Dexterity. This means for example that Keldorn will have a -1 penalty to ranged thac0 and his Armor Class, since his Dexterity is a terrible 9.
- **Lore** bonuses
  - Per class: Mages now get 5 lore points per level (from 3); Thieves get 4 lore points per level; Clerics, shamans, and druids get 3 lore points per level; paladins and rangers get 2 lore points per level. Fighters and bards are unchanged.
  - Per stats: The benefits and penalties are more streamlined, and the bonuses start at Wisdom or Intelligence 12. The maximum lore bonuses are unchanged, and the penalties increase less harshly, instead of jumping to -10 at 9 Wisdom or Intelligence, it decreases in a more gradual sequence.
- THAC0 bonuses by race: The only change is that dwarves will get a +1 THAC0 bonus with axes.
- **Strength** bonuses
  - THAC0 bonuses and penalties streamlined similar to NWN. Penalties start at 9 Strength, bonuses at 12. From Strength 23, bonuses increase by 1 per increase, up to +7.
  - Extraordinary strength does not add thac0 bonuses anymore.
  - Damage is also streamlined similar to NWN up to 18 strength (+1 at 12 STR, +2 at 14...), with +4 bonus. At 19 Strength, it jumps to +7, similar to vanilla. Extraordinary strength at 18 Strength adds up to +2 damage: 0-24 gives no bonus, 25-75 gives a +1 bonus, and anything above it gives a +2 bonus (overall bonus of +6).
  - Weight allowance was also streamlined and creatures with Strength <10 will be able to carry a bit more. For example, Imoen will now be able to carry 90 lb instead of 50. At much higher strength, the maximum you can carry has been generally decreased, as in vanilla it makes crazy jumps after 18 Strength (jumps from 200 to 500 -- with this tweak, it jumps to 400). Extraordinary strength grants +5 at 0, then +10, and gradually increases in jumps of 10, up to +100 at 18/100.
  - No changes to forcing locks open.
- **Weapon styles**
  - Two-handed
    - +0: -1 to Armor Class (no training means you deflect attacks worse)
    - +1: No Armor class penalty, +1 to damage, +1 to Speed Factor
    - +2: +2 to damage, +4 to Speed Factor, critical rolls are require one point less to happen (i.e. default 19-20)
  - Single weapon
    - +0: -1 to speed factor (no training means you wield with less grace)
    - +1: +1 to damage, Armor Class, and Speed Factor, critical rolls are 1 higher (i.e. 19-20)
    - +2: +2 to damage, Armor Class, and Speed Factor
  - Sword and shield
    - +0: -1 damage, THAC0, and Armor class penalty vs Missile (no training means you can't deflect arrows very well, and can't handle using a weapon without the help of your offhand)
    - +1: All penalties removed, +1 to Armor Class vs. Missiles
    - +2: +1 to Armor Class, +3 to Armor Class vs. Missiles
  - Two-weapon style
    - +0: -2 penalty to Armor Class, -1 to damage with right hand, -2 to damage with left hand, THAC0 for right and left have penalties of -4 and -6, respectively (you don't have any training or using 2 weapons, the left hand suffering the biggest drawback).
    - +1: Damage penalty on left hand reduced to -1, thac0 penalties for right and left hand reduced to -2 and -4, respectively. Armor class penalty decreased to -1.
    - +2: Armor class, and Thac0 and Damage penalty for right hand removed
    - +3: Damage penalty for left hand removed, THAC0 penalty for left hand reduced to -2, Armor Class gets a +1 bonus
  - **Weapon proficiencies**: This tiny overhaul addresses primarily something that has bothered me forever about proficiency progression, which is the weird jump in THAC0 from 2 proficiency points to 3. Therefore:
    - 1 proficiency point: No penalty or bonus (vanilla)
    - 2 proficiency points: +1 THAC0 and +2 Damage (vanilla)
    - 3 proficiency points: +2 THAC0 and +3 Damage (-1 THAC0 compared to vanilla)
    - 4 proficiency points: +3 THAC0 and +4 Damage (same THAC0 as 3 pips in vanilla)
    - 5 proficiency points: +4 THAC0 and +5 Damage (+1 THAC0 compared to vanilla, which caps at +3)

Overall, these changes may change difficulty slightly, since it will affect creatures with player-usable classes. Or maybe not, since the player will also benefit from these changes.

**Component 1546:** Make the different shield types more distinct and optionally change shield usability

(Yet) Another thing that annoys me in the game is that there's not much difference to speak of between the different types of shields. Normally, medium shields provides Armor Class bonus across the board, while Tower Shields add a bonus to missile, small shields lack missile bonus, and bucklers lack missile and piercing. It lacks more nuance that I would prefer and as such it's reworked in the following manner:

- **Tower** Shields: The base armor class is always 1 point above other shields of their class. However, they're big and clunky, which means it also cause a -1 penalty to THAC0 and Saves vs. Breath. It also inflicts a penalty of -2 to Speed Factor and reduces movement speed by 20%.
- **Medium** Shields: Inflict a -1 penalty to Speed Factor and Saves vs. Breath, and reduce movement speed by 10%.
- **Small** Shields: At even enchantment level above 0, they compensate their lack of Armor Class bonus vs. missile by 1. For example, a hypothetical +6 small shield would grant +6 Armor class, but only +3 vs. missile.
- **Bucklers**: At even enchantment level above 0, they compensate their lack of Armor Class bonus vs. piercing by 1. For example, a hypothetical +6 buckler would grant +6 Armor class, but only +3 vs. piercing. Additionally, the shields can be used to **parry** opponents 10% of the time when attacked in close range (even if the attack fails), inflicting if a save vs Breath is failed (enchantment level adds penalties) 1d2+bonus crushing damage, which opponents a -15% damage susceptibility (if they aren't immune to the damage type) and -2 armor class penalty for half a round. This effect will not work if the user is helpless (stunned, held, unconscious...) and will also not apply to foes that are massive or incorporeal. If my finesse component is installed with the buckler component included, single-classed thieves can do this 20% of the time instead. **Warning:** This should be installed after ANYTHING that adds items that add or modify weapon protection effects, including the component in SCS that increases the power from Mantle and Improved Mantle. The reason for this is that the component needs to patch those resources such that they appropriately block the buckler parry effect according to the shield enchantment level.

Optionally, there are also options in the configuration file to achieve the following:

- Make all shields usable by all classes (**off** by default)
- Only single-classed warrior classes can use Tower Shields (**on** by default)
- Only fighter classes (single classed, multiclasses, or dual classed) can use Tower Shields (**off** by default)
- Thieves and bards can use Small Shields (**on** by default)
- Thieves and Bards can use Small and Medium Shields (**off** by default)
- Wizards can use bucklers (**on** by default)

**BIG FAT WARNING:** This component uses the following convention to distinguish between different shields: it must have as an unidentified name either "Buckler", "Small Shield", "Medium Shield", or "Tower Shield". My mod will patch the instances in vanilla where it isn't the case, but it will not be able to detect modded shields that don't follow this convention. If you have a mod that adds shields that don't follow this convention, please let me know and I will add support for it. You could also patch it yourself with NearInfinity before running my mod, and it will work fine.

**Component 1547:** Make Protection from Undead scrolls less overpowered but still invaluable vs. undead

This scroll makes undead completely ignore you, which is frankly quite silly and not very interesting. It's like asking for cheesy gameplay. Instead, it does the following:

- Undead will acknowledge you, but...
- You're immune to vampiric domination attempts
- You're immune to paralytic touches of ghouls, ghasts, and liches
- You're immune to level drain
- +2 bonus to saves vs. Death/Paralysis/Poison
- Undead hitting the user will be rebuked, taking 1d4+1 magic damage (half if saved vs. Spell), and be scared away for 2 rounds if they fail their save. The latter effect can only affect them once per turn.
- Lasts for 12 hours, similar to IWDEE

</details>

---

<details>

<summary><b>Armor/Gear/Misc Items Tweaks</b></summary>

This section includes specific armor and gear tweaks (as well as items that don't fall squarely on any category, like the Rod of Might), and it updates descriptions accordingly in a destructive way (i.e. if previous mods updated the description, it will be overwritten without text surgery).

**Component 1170:** Make Shadow Dragon Scale behave less like a Black Dragon Scale

It seems like a mistake to me that this armor, made from a creature from the plane of Shadow that doesn't even use acid as a breath weapon, grants you acid resistance. Instead of acid resistance, it offers:

- Negative Plane Protection
- Nondetection
- Saves vs. Illusion and Necromancy spells: +4 bonus

**Component 1171:** Make Silver Dragon Scale also grant 40% cold resistance as you would expect

Silver Dragons wield and are resistant to cold, the same as White Dragons. It should grant cold resistance, much like the Fire Dragon Plate does for fire.

**Component 1172:** Make Rings of Elemental Control more likely to charm the elementals and add missing resistances

This improves the power of the charm by making the save against it -2 instead of +2. Additionally, the rings grant 50% resistance to the related element consistently.

**Component 1173:** Make Ring of Gaxx's improved haste last 2 full rounds and not 10 seconds

It's pretty strange to limit it to 10 seconds. It's 2 full rounds now.

**Component 1174:** Make Heartwood Ring add 1 spell slot per level, as well as 1 HP/round regen

This makes this ring significantly more useful for an Archdruid, adding 1 extra spell slot of every level and a slow regeneration effect as the nigh-timeless druidic legend you are.

**Component 1180:** Make Ring of Danger Sense defensively better and protect against backstabs

This component grants the ring:

- +1 bonus to Armor Class
- +1 bonus to saves vs. Breath
- Immunity to backstabs and sneak attacks

Self explanatory and ever useful, for any class. Anti-chunking for mages.

**Component 1316:** Make the Mercykiller Ring more useful for rogues that like killing

This makes the ring also add a +1 damage bonus, +1 THAC0 bonus, and +5% critical hit chances with all weapons, along with the other bonuses, but only to pure, single-classed Thieves (for balance and to encourage commitment). The ring can also be equipped by rangers, but only the vanilla benefits will apply.

**Component 1317:** Make the basic robes and Archmage robes slightly more remarkable

I do not like that most robes except the most powerful ones are largely unremarkable. This is the list of changes:

- **Knave's Robe**
  - +2 Armor Class against Slashing and Piercing (was +1 against Piercing)
  - Save vs. Death +1 (vanilla) and Save vs. Breath +1 (new)
  - +50% Poison damage resistance
  - 5% universal Thief skill boost (you're a knave!)
- **Traveler's Robe**
  - +3 Armor Class against missile (was was +1)
  - +15% Missile damage resistance
  - Save vs. Wand +1 and Save vs. Spell +1 (was Save vs. Breath +1)
  - Movement speed increases by a factor of 4 (you're a traveler, moving from town to town!)
- **Adventurer's Robe**
  - 1 universal Armor Class bonus (the bonus to crushing seems a little weird)
  - Save vs. Petrification +1 (vanilla) and Save vs. Spell +1 (new)
  - +20% Magic damage resistance
  - +10% Elemental damage resistance
- **Elemental resistance robes**: resistance increased to 40%, adds 7% damage bonus in the relevant element and +1 save vs. evocation spells. This also increases the damage resistance of Robe of Red Flames to 50%, and adds the evocation bonus, for consistency (it's a straight upgrade from the Robe of Fire Resistance).
- **Archmage Robes**
  - Armor Class set to 5 (vanilla), and it also improves it by 1 additively (new)
  - Magic resistance increases by 10%, not 5%
  - Magic damage resistance: +25%
  - Casting speed increases by 1
  - Saving throws bonus against Spell at +2, +1 for the rest

**Component 1560:** Make Belt of Skillful Blade also increase piercing damage by 10%

This makes the belt include piercing damage, such that it affects things like daggers, short swords and wakizashis.

**Component 1561:** Make Cloak of the Stars create 30 darts instead of six, and add passive effects

6 darts is really unremarkable for a once-per-day effect. 30 is far more interesting. Additionally, if you wear it, you become specialized in darts immediately (unless proficiency is higher) and gain a Save vs. Spell bonus of +2. Perhaps you don't need to sell it immediately anymore!

**Component 1570:** Make Eyes of the Beholder's skills mirror the power of the spells they're based on

This improves the component slightly such that the Domination power is as powerful as the Domination spell, i.e., a -2 penalty to save vs. Spell, and the Paralyze spell is as powerful as wizard version of Hold Person, i.e., a -1 penalty to save vs. Spell. Additionally, the helmet makes the wearer immune to beholder rays that cause the same effects; that is, you cannot be paralyzed, charmed, or scared by beholder rays.

**Component 1610:** Make Robe of Invocation also improve all elemental damage by 5% and add a +2 bonus against Invocation

This makes this robe improve Invocation wizards in more ways, similarly to my tweaks to elemental robes, but with milder damage bonuses, since it's a more universal bonus:

- 5% elemental damage bonus
- +2 save vs. Invocation

**Component 1620:** Make Vicross' Thayan Circlet more interesting for Wild Mages

This makes the circlet a bit more valuable by making it more effective in controlling Wild Surges. It's a little underwhelming to just have the same bonus as the robe of Hayes.

Additionally, in the same theme of chaos related to wild magic, while wearing the circlet, they get a 15% bonus to a random non-physical type of damage, except poison. So, for example, if you happen to be in a Magic Damage bonus round, a Horrid Wilting that deals 100 damage would deal 115 damage. If not, too bad, try again.

To promote specialization, this also restricts the circlet to Wild Mages.

**Component 1651:** Make Studded Leather of Thorns cause some piercing damage too when being hit

I mean, they're THORNS; the only difference is that they're FIERY. Instead of only inflicting 1d4 fire damage, they also inflict 1d4 piercing damage, making it an overall more useful defensive armor.

**Component 1652:** Make Grandmaster's Armor's movement bonus not affected by Free Action and grant perks to rogues

This component makes the doubled movement of this armor not be affected by Free Action at all, and the following traits are gained:

- Critical misses are no longer possible (Thieves only)
- Different kinds of benefits for backstabs are unlocked depending on the rogue wearing this suit:
  - Crippling Attack: Slow for 1 round, and reduce Strength, Dexterity, and casting speed by 4 for 4 rounds if a Save vs. Death is failed (kitless Thief)
  - Subduing Attack: Render the victim unconscious for 4 rounds if a Save vs. Death is failed. Additionally, 10 extra non-lethal damage will be inflicted. However, further damage will wake the victim up (Bounty Hunter and Stalker)
  - Shadow Attack: Empowers self with shadow magic, increasing damage resistance by 5% for 2 rounds, with a 20% chance of making themselves invisible for 2 rounds, increasing –without stacking– damage by 2, and critical chances by 5% (Shadowdancer)
  - Death Attack: Stun the victim for 1 round if a Save vs. Death is failed. After one round, the victim dies if they're 60 HP or under and a Save vs. Death is failed again. If the victim survives this, they take instead 2d6 poison damage and become more susceptible to the next Death attack, reducing their Saves vs. Death by 4 for 5 rounds (Assassin)
- New charge ability: Expose Weakness (doesn't interrupt invisibility)
  - Special: once per day, target loses immunity to backstabs, if they had it, take 10% more damage from piercing and slashing attacks, suffering additionally a -4 penalty to Armor Class against piercing and slashing
  - Duration: 4 rounds

**Componen 1653:** Make Thieves' Hood protect against critical hits and slightly more advantageous for single-classed thieves: +1 THAC0 and Damage

This improves this item in the following ways:

- Both upgraded and non-upgraded versions now protect against critical hits, essentially giving a Thief access to critical hit protection without requiring fighter levels.
- Single-classed thieves gain +1 THAC0 and Damage (for balance and to promote specialization) in the upgraded version

**Component 1654:** Make Star-Strewn Boots slightly better and favor Inquisitors too (SoD)

This makes these boots improve Magic Resistance by 10% for everyone (from 7%) and Inquisitors and Wizard Slayers by 18%. Inquisitors are added because they fit fairly well in the anti-wizard theme.

**Component 1655:** Make Crown of Lies more consequential when used

-30 lore is generally not very important since it's not used for any game interaction, just for identifying objects, which is ordinarily a mundane and inconsequential task. Therefore now it reduces lore by -20 BUT it also decreases Wisdom by 2 (which would affect Cleric/Mages more), Detect Illusions by 10, and inflicts -2 saving throw penalty vs. Illusion magic. This is compensated slightly such that it provides 2 spell slots for level 4 too (3 and 4).

**Component 1656:** Make the Helmet of Dumathoin very slightly more powerful

This improves the damage resistance it grants to 5%. The reason for this lies in the fact that the game only uses integers for most calculations, including damage. This means that the vanilla 3% damage reduction, for classes that have no other sources to reduce damage, would have to be hit with a physical attack of at least 34 damage to reduce the damage by 1, which is the minimum amount, which oftentimes means you're dealing with an enemy that is about to chunk or delete you anyway.

5% would reduce the threshold before the reduction to 20 points of received damage. It's still mild and shouldn't unbalance anything. For Barbarians, Cleric, Paladins, Shadowdancers (in restricted contexts), and Dwarven defenders, it will provide a juicier bonus since they all have ways to add physical damage reduction.

**Component 1657:** Make The Visage add the capacity to cast Aura of Despair once per day and improve powers slightly

This improves this mask's powers in the following ways:

- Breathe Acid now causes 8d6 acid damage, not 6d6
- May also cast Aura of Despair as a blackguard of the same level once per day, which is fitting considering the description itself talks about how looking into the mask causes feelings of dread.

**Component 1658:** Make Dragon Helm add protection against acid too, as well as +2 saves against breath

Self explanatory. As for the reasoning, because it felt odd leaving acid breath out of it. Saves vs. Breath, because well, dragon breath.

It also tweaks the description slightly, because oddly enough it talks about having red, white, and green scales. I was expecting red, white, and **blue**, since blue dragons are the ones who produce electricity, and green dragons exhale poisonous gas. Now it mentions having red, white, black (dragons with acid breath), and blue scales.

**Component 1659:** Make the Helm of the Rock a bit more protective and commanding

This makes both versions of the helm a truly universal non-physical damage protector by adding a 25% resistance to magic damage. Additionally, the upgraded version gets the following:

- +7% physical damage reduction
- +1 Charisma
- Aura of Command is no longer single-target; it spreads upon impact, similarly to Hold Person, but in a bigger area.

**Component 1661:** Make Cloak of the Sewers also protect against poison

This makes the cloak grant additionally grant a Save vs. Poison bonus of +1, as well as 50% poison damage reduction.

**Component 1662:** Make Montolio's Cloak grant a damage and thac0 bonus to rangers

This makes this cloak more meaningful for rangers, even if they don't focus on dual-wielding combat style. Rangers get a +1 THAC0 and Damage while wearing it.

**Component 1663:** Make the Sandthief Ring in BGEE work as in BG2EE (one use per day)

This makes this ring reusable instead of having limited charges.

**Component 1664:** Make all ioun stones and circlets protect against critical hits

Self-explanatory. This component is in a way softly incompatible with the spirit of other components, because it makes protection against critical hits more pervasive. An example of this is the tweak that makes Thieves' Hood protect against critical hits.

You can choose to affect all, only ioun stones, only circlets, or a selection of those that I deemed more logical or balanced: Pale Green Ioun Stone, Obsidian Ioun Stone, Malla's Stone, Wong Fei Ioun Stone, Circlet of the Lost Souls, Headband of the Devout.

**Component 1665:** Make several basic ioun stones and circlets a bit more interesting or powerful

This modifies a selection of vanilla ioun stones and circlets:

- Dusty Rose Ioun Stone: Inspired by the description, it also protects against berserk and fear. The Armor Class bonus is also now 2. Additionally, it changes the BAM so it has a pinkish hue
- Pearly White Ioun Stone: This improves the trollish regeneration from 1 HP per 5 rounds to 1 HP per round
- Golden Ioun Stone: Makes it more interesting for general use by improving not just intelligence but also saves vs. Spells by 1 and magic resistance by 10%
- Obsidian Ioun Stone: Obsidian is brittle but hard. Other than increasing CON by 1, now it also improves Armor Class against all except crushing by 2, and improves physical damage resistance to everything except crushing by 5%
- Silver Gray Ioun Stone: Now it also improves WIS by 1 and lore by 15. Divine casters get one extra spell slot from level 1 to 5. Finally, druids and clerics get a +1 bonus to casting speed
- Circlet of Netheril: This makes it more useful and final for sorcerous classes by adding one extra spell slot for level 9 as well, as well as a +7%  bonus to magic damage dealt
- Eilistraee's Boon +1: Non-evil elves get +1 DEX

**Component 1666:** Make Bracers of Blinding's Improved Haste effect last 1 turn and improve speed passively

The original lasts 20 seconds. Additionally, it improves weapon speed factor by 2, movement rate by 2, and APR by 1/2.

**Component 1667:** Make Xarrnous's Second Sword Arm (and SoD's version) also add +1 damage (lesser Legacy of the Masters)

This improves the gauntlets such that it also improves damage, not just THAC0, making it a lesser version of Legacy of the Masters.

**Component 1668:** Make The Dale's Protector slightly more powerful and open to all classes

This improves the item such that it's more attractive for ranged weapon users: the thac0 bonus is now +3, and it improves ranged damage as well by +1 (which becomes +2 for Archers, single-classed Thieves, and Bards).

**Component 1669:** Make Gauntlets of Extraordinary Specialization improve THAC0 by 2 and open to all classes

Self explanatory.

**Component 1671:** Make The Eyes of Truth add a bonus to Detect illusions and Find Traps

I decided to take the name of the item more seriously. And let's face it, this item is always an automatic sell. In this state, at least it has some use for Fighter/Thieves or Cleric/Thieves. +10% bonus to both skills

**Component 1672:** Make Stalker Gauntlets also benefit Bounty Hunters and Shadowdancers

It seems obvious that both the Stalker and Bounty Hunter "professions" align with each other, stalking prey and hunting for a bounty. Shadowdancers are masters of stealth via innate shadow magic, so I don't think it's far-fetched either. Both Stalker-only benefits apply, including the enhanced backstab multiplier.

**Component 1673** Make Blessed Bracers more powerful

This makes the bracers far more worth the trouble for paladins. Instead of just letting you cast Resurrection and Cure Critical Wounds, and give you +10 HP:

- You can cast Resurrection once per day
- You can cast Heal once per day (instantly cast)
- You can cast Mass Heal three times per day
- All wearers get a "blessing": +1 THAC0 and Damage (Use Any Item users or good-aligned paladins)
- Paladin-only bonuses: +1 Casting Speed, +1 spell slots (1-4), +1/2 APR, +15 HP

**Component 1674:** Make Whispers of Silence improve Move Silently, and protect vs. detection spells except True Sight and grant a bonus sometimes when going invisible

This makes the cloak more useful for the purposes of avoiding detection, since Nondetection is an unremarkable protection. As such, the wearer is also immune to other invisibility-detecting spells, except True Sight. Additionally, it adds a 10% bonus to Move Silently, and a +5% critical hit chances for 2 rounds while the user is invisible, which is an effect that may trigger once per turn (watch out for the red glow on character).

**Component 1675:** Make Cloak of Displacement add +5% damage resistance

Makes the cloak add "displacement" in the same way as "displacement" is faked with things like Shadow Form and Spirit Form, i.e., damage resistance. In this case, just +5% damage resistance (universal).

**Component 1676:** Make Skull of Death allows casting Finger of Death, and protect against Necromantic instant-death effects

I don't like items that **only** add an ability without any passive benefit. Therefore:

- May cast Finger of Death once per day too
- Saves vs. Necromancy spells: +4 saves
- Immunity to necromantic death effects and vorpal hits. On a technical level, this means immunity to the Slay and Kill Target opcodes, but not to the Power Word Kill, Petrification, or Disintegration opcodes

**Component 1677:** Make Wondrous Gloves Wondrous

In my opinion, these gloves are very, very mundane, and not wondrous. Therefore, the effects of wearing these gloves are now useful for all bards, with specific benefits according to vanilla kits and for bards in general.

- Bards in general get: +2 Armor Class, THAC0, Damage, and Casting Speed, +1 spell slot from level 1 to 6
- Skalds get +1 Strength and +1/2 APR
- Blades get +1 Dexterity and +1/2 APR
- Jesters get immunity to confusion, slow, and unconsciousness, as well as +6 bonus saves vs. Enchantment spells
- Only bards can wear these.

**Component 1678:** Make Senses of the Cat imbue the user of more cat-like features

Cats forever!

- It improves Armor Class by 1 and adds +4 bonus against missiles
- +1 Saves vs. Breath
- Movement rate increased by a factor of 3

**Component 1679:** Make the Horn of Kazgaroth more useful and the self-damage more unique

To me, the duration of the effects is too short. Plus, the "unknown" damage to the user becomes "known" too easily. I slightly tweaked the description, by describing what Kazgaroth is, plus:

- Now it lasts for 5 rounds
- It can be used three times per day instead of 30 times in total before it disappears
- +2 Armor Class, +4 more against Missile
- Immunity to level 1, 2, and 3 spells
- +2 Saving throws (vanilla)
- Physical resistance: +8% resistance
- The Horn now has a 50% chance of causing **ONE** deleterious effect on the user: -10 Max Hit Points, -3 THAC0, -2 Damage, -2 Strength, -2 Constitution, -2 Dexterity, -1 Saving Throws, -4 Saves vs. Death, or -50% movement speed. This penalty persists for 2 turns.

**Component 1190:** Make Rod of Lordly Might usable by any class and more powerful

The rod is conceptually quite interesting but generally underperforming. This component changes the name to "Rod of Royal Might" (even the descriptions mentions royalty):

- **Mace +2** is renamed to Mace of Royal Might +3, becomes a +3 weapon, and the save against panic is now at +2, not +5, and the panic is now instead a 2-round Slow effect.
- **Flaming Long Sword +1** is renamed to Flaming Sword of Royal Might +3, becomes a +3 weapon, causes 1d4 fire damage per hit, and since it's "hypnotic" it has a 50% chance of causing Stun, and 50% change of causing asleep for 1 round. The save against it is now +2 instead of +5. Additionally, it makes it look like an actual flaming sword when held.
- **Spear +3** is renamed to Spear of Royal Might +3, and it is now reworked to have a 10% chance to cause an "Arcane Blast", that causes 2d4+2 magical damage", and it now also causes bleeding if the target fails a Save vs. Death, causing 10 piercing damage over 1 round if the save is failed.

It will also now sport new icon BAMS, which are a massive upgrade from the original ones. All made by zenblack.

**Component 1195:** Make Gloves of Healing worth more than what you get by selling them

This improves the gloves by adding the following:

- +1 Casting level for paladins and clerics
- 1 HP regeneration to the whole party every 5 rounds
- The charge ability is now changed to a combination of Lay On Hands cast at level 10, and Slow Poison

**Component 1997:** Make a number of items without functional use become useful (all are optional)

- Kuo-Toa's Blood: can be consumed to permanently improve THAC0, Armor Class vs. missile, saves vs. Breath by 1
- Eyestalk of an Elder Orb: can be consumed to permanently increase Armor Class and saves vs. Petrification and Death by 1
- Elder Brain's Blood: can be consumed to permanently improve the casting level (arcane and divine) and saves vs. Spell and Rod by 1

**FAIR FAT FABULOUS FULL FIERCE WARNING ABOUT THE FIRST THREE:** Don't eat all three. One of them at least is needed for plot reasons. Otherwise you'll have to fix it with save editing or console commands.

- Mask of King Strohm III: now it protects vs. critical hits, increases Detect Illusion and Find Traps by 10. It has a charge ability to cast Oracle once per day.
- Shadow Dragon Wardstone: It is now an ioun stone which grants immunity to Blindness. Shadow dragons and other shadow creatures incur in a -2 combat roll penalty towards the wearer. 5% hiding skill and shadowdancers are dark soul monks get a +3% damage resistance.

**Component 1198:** Make Ring of the Crusade (SoD) also grant a combat/damage roll bonus vs. demons and devils

Self-explanatory, the wearer will get a +2 bonus to combat and damage rolls vs. demons and devils.

**Component 1206:** Make Ring of Purity (SoD) also grant a combat bonuses vs. evil and grant a spell slot bonus to the good aligned

The ring now adds a +1 bonus to THAC0 and Damage vs. evil creatures, as well as 1 extra spell slot for levels 1 and 2 for the good aligned.

**Component 1203:** Make Girdle of Fortitude set Constitution to 18 on equip, instead of with a charge ability

This makes the belt generally more useful and frankly makes more sense if you consider the description.

**Component 1204:** Make Rhino Beetle Gear (SoD) provide more protection to non-crushing, and rebalance damage resistances

This follows the same philosophy as the tweak to beetle creatures. The armor now provides a 18% resistance to missile, 12% resistance to slashing, and the Armor Class was slightly tweaked to reflect this theme.

The shield does the same, providing a 12% resistance to missile, 8% resistance to slashing, and 5% resistance to piercing. It also provides a +1 Armor Class bonus to piercing.

**Component 1207:** Make Protector of the Second a special leather armor that is more powerful when used by rangers

Following the theme of the description, it provides a bonus to rangers and elves:

- +1 Armor Class if the wearer is a ranger, and also if they are an elf or half-elf. This stacks. This means effectively that an elven ranger would wear the armor as if it was a +4 leather armor.
- +15% to hiding for rangers.

Good choice for early to mid game elven rangers, perhaps even better for stalkers.

**Component 1209:** Make The Night's Gift +5 a bit more interesting as an armor

Heavily leaning on the lore of the item (blessed by Shar):

- Hide in Shadows: +25% (from 20%)
- Immunity to all invisibility-detecting spells, excluding True Sight
- 5% physical damage resistance for all thieves wearing it (single class or not)
- At night, regenerate 1 HP per round, and when you're hit, there's a 12% chance of becoming invisible as per the Improved invisibility spell for 4 rounds. This effect can only trigger once per turn.

**Component 1211:** Make Orc Leathers grant special bonuses to half-orc wearers

The armor now leans more heavily into the orcish theme:

- -2 Charisma (from -1), so it's potentially more meaningful
- Half-orcs only: +1 to inflicted damage, +10 maximum HP, missile resistance is doubled

**Component 1212:** Make Skin of the Ghoul +4 protect against all kinds of paralysis

This includes paralysis from ghouls and magical commands. It's of course inspired by the fact that the skin is made from a ghoul.

**Component 1213:** Make Armor of Deep Night +4 slighty better inspired by the Umberlee's related backstory

Following the Umberlee theme, this armor now provides a 20% resistance to cold and electricity. Additinally, it provides a 18% chance of inflicting 1d4 cold and electric damage with each successful melee or ranged attack the wearer does.

**Component 1214:** Make Armor of the Viper more interesting by offering a few advantages to offset the penalties

Despite the +5 enchantment, I find the armor generally not worth using, especially since it's pretty much always a better idea to use a non-unique armor with an item of protection instead. Therefore:

- Save vs. Death: -3 (from -2)
- Other saves: +1
- -50% poison resistance. **Bear in mind this weakness will likely not work without the fixpack installed**.
- +100% poison damage inflicted. So if you're a vanilla assassin, for example, each poison tick would inflict 2 damage. Same for any kind of poison spell that might be accessible to the wearer.
- Charge ability: Poison Weapon, as per the vanilla assassin ability, once per day.

**Component 1215:** Make Aeger's Hide more powerful when used by Barbarians

Now, since this armor is Hide Armor, and hide armor is usually thematically associated with barbarians, the following is added:

- +2 weapon damage for barbarians when using halberds, staves, and two-handed swords.
- Elemental resistances doubled for barbarians
- Barbarians also get a +3% physical damage resistance

**Component 1216:** Make Ankheg's Plate grant 20% acid resistance

Since Ankhegs actually spit acid, it makes sense that this armor would grant acid resistance. A small buff, especially since the sources of acid damage are limited (at least in BG) but it makes sense thematically.

**Component 1217:** Make Hayes' Robe actually grant +1 to Armor Class, and +1 casting speed for wild mages only

Generally this robe was never very convenient to use, especially considering the alternatives. Even without Chaos Shield. So now it undoes the -1 Armor Class penalty, becoming an actual Armor Class bonus, which could be combined with a good Armor Class bracer, and adds +1 casting speed for wild mages only.

</details>

---

<details>

<summary><b>Dagger Tweaks</b></summary>

**Component 1000:** Make throwing poisoned daggers less rare and more likely to poison enemies

First, this component increases the stock of these throwing daggers. In BG2, they're only increased in the same stores where they're found. There are now exactly 356 poisoned throwing daggers to be bought in the stores, which is more than double the amount available in stores by default. They're also spread more evenly among stores.

In BGEE there are none, even though in SoD there are 800 in Waizahb's stock (halfling thieves' guild merchant in Coalition Camp). A bunch will also be spread to a few other relevant merchants in the main game:

- Silence: 48
- Black Lily: 48
- Ulgoth's Beard innkeeper: 30
- Thalantyr & Halbazzer (not SoD): 30

The quantity can be increased or decreased using the configuration file.

Secondly, this component makes these items force a save vs. Death at -2 to avoid poisoning, which makes them more useful and compensates for their rarity. This save penalty can be overridden in the configuration file too.

**Component 1130:** Make Bone Blade dagger more special and not just a plain +4 dagger

Plain enchanted weapons are boring, and the higher the enchantment level, the more egregious that is, as far as I'm concerned, especially if the description suggests it **is** unique (I'm looking at you too, Cutthroat +4).

Instead of simply giving the usual +4 weapon bonuses:

- Being made partially from the tooth of a black dragon, it causes extra 1d4 acid damage on hit and increases Acid Resistance by 40% for the user
- Being tempered in the blood of the duergar smith, every hit causes +5 extra damage against all elves, including drow, and other inhabitants native to (or frequent inhabitants of) the Underdark: beholders, mind flayers, kuo-toa, hook horrors, driders, spiders, and umber hulks

**Component 1140:** Make Dagger of the Star slightly more powerful.

- Dagger of the Star +4 becomes +5, the chance of invisibility increases to 10%, and it inflicts +1 electric and fire damage each hit.
- Dagger of the Star +5 becomes one of the few privileged +6 weapons and inflicts +2 electric and fire damage per hit
- Star Bolt: Increased the chance to trigger elemental effects to 15%, the difference being, you have equal chances of triggering fire damage, electrical damage, or both (5% chance each).

Finally, it has a charge ability usable twice per day called Heavenly Strike, that causes a lightning bolt to fall from the sky dealing 6d6+24 electrical damage (save vs. Breath at -5 to take three quarters of the damage) followed shortly by a column of fire that deals 6d6+24 fire damage (save vs. Breath at -5 to take three quarters of the damage). The fire damage spreads to enemies that stand too close to the fire, which deals 60% of the potential fire damage. Doing this, also empowers the wielder's attacks for 1 turn, dealing +2 fire and electrical damage per hit.

**Component 1490:** Make Neb's Nasty Cutter have an unlimited amount of poison

The dagger will always cause 20 poison damage over 10 seconds if a save vs. Death is failed and never deplete.

**Component 1630:** Make The Jade's Fang slightly more powerful and improve the lifesteal effect

This component will make the healing per it based on probabilities, such that there is a 50% chance it will heal by 1, 20% chance it will heal by 2, 15% chance it heals by 3, 10% chance it heals by 4, and 5% chance it heals by 5. Additionally, there is a 15% chance the stun effect happens too, but only if a Save vs. Spell is failed (the vanilla 5% chance gives no saving throws). All the effects now bypass Magic Resistance, like the Stupifier in BGEE and Adjatha the Drinker (which is probably an oversight in this case).

**Component 1660:** Make Heart of the Golem +2 get a couple more magic-based features, inspired by the description

This makes the dagger, which is made from arcane metals from a golem, imbued with something more magically golem-like:

- Improves Magic Resistance by 10% when held
- 50% chance of inflicting 1d4 magic damage, no save

**Component 1670:** Make Werebane +1 (Silver Dagger) a bit more effective against Lycanthropes

Werebane's description is a little misleading. It doesn't cause +4 damage against Lycanthropes. The 1d4+1 base damage of the weapon doesn't become 1d4+5. This type of confusing description is common to all weapons that do extra damage to specific creatures. Instead, it causes 1d4+1, and if the target is a Lycanthrope, another tick of 3 piercing damage is inflicted. This improves this extra additive tick of damage so it inflicts 6 instead, and the additional THAC0 is also +6.

**Component 1680:** Make Stiletto of Demarchess +2 a bit more powerful and bleed every hit

This component makes the weapon try to stun the victim with a probability of 25% instead of 20%. Inspired by the sadistic story behind the weapon, it now has +5% higher critical hit chances, and it also causes bleeding every hit, similar to Gnasher, inflicting 2 extra piercing damage, as well as 2 more per round for 3 rounds.

**Component 1681:** Make Elements' Fury +2 slightly more powerful

This component makes this dagger a bit more powerful in the following ways:

- Damage dice number against elementals improved by 1: 2d4
- Elemental resistance improved by 10% while holding it.
- Random elemental damage improved to 2

**Component 1682:** Make Acid-Etched Dagger +2 generally more powerful and act as +3

This component makes this weapon one of the few +3 weapons in the expansion, acting in every way as a +3 weapon, as well as:

- Acid damage on hit increased from 1 to 1d3
- 20% chance of causing 1d3 acid damage per round for 3 rounds (improved from 1, 15% chance), as well as adding an Armor Class penalty of 2 for 3 rounds

**Component 1683:** Make Gemblade +2 more powerful and more worth hanging onto for wizards

This makes Gemblade +2 more worth using. Gemblade is one of those "cool items" design-wise, but functionally, it has nothing that interesting, particularly considering INT bonuses are generally useless in the vanilla game. So now, other than increasing INT by 1:

- Every hit causes an additional 1d2 magic damage
- 33% chances of causing additional 1d4+2 magic damage
- Mages/Sorcerers can cast 2 more spells of levels 1 and 2 while holding it.
- Acts as a +3 weapon for the purposes of what it can hit

**Component 1684:** Make basic throwing daggers usable as melee weapons

This copies the design of SoD's special throwing dagger such that you can use vanilla throwing daggers as melee weapons if desired. The items modified are:

- Throwing dagger (dagg05.itm): Has a melee option that deals 1d3 piercing damage, with a speed factor of 3
- Poisoned throwing dagger (dagg16.itm): Has a melee option that deals 1d3 piercing damage, plus +1 poison damage (no save). The usual poisoning ability does not work in this mode, only in ranged mode. This was done because otherwise using it as a melee weapon is too obvious as a better choice.

**Component 1686:** Make Life-Stealer +4 a more powerful cursed weapon (requires mod to make it available, such as UB)

This component doesn't make the weapon available. Mods such as Unfinished Business, which gives it to Artemis Entreri in Bodhi's Lair can give you access to this. So essentially this component makes the dagger a bit of a SoA powerhouse sort of similar to Blackrazor. Here's the changes:

- BAM changed so its gem on the hilt looks green, like Artemis Entreri's dagger.
- Description changed to something different than Soultaker dagger. Check "unique_descriptions.md"
- Gleams red
- Changes of draining levels is now 18%, and it drains 2 levels. Recover 1d6 HP plus 10% of your max health upon draining levels.
- 1 HP drained per hit; 3 HP when wielded by vampires
- Targets killed while wielding this weapon grant the wielder +1 Strength, +1 Dexterity, 6 HP regenerated over 1 round, and 3 seconds where your HP cannot go below 1.
- Grants 50% resistance to cold and electricity
- Inflicts a -50% penalty to fire
- Infravision
- Character's alignment becomes Chaotic Evil
- Immunity to death magic and level drain
- 1 HP regenerated every 2 rounds
- Cannot be healed by any of the spells in the Cure Wounds family, Heal, and similar, as well as vanilla healing potions.
- Cursed, can only be removed with a Remove Curse spell

**Component 1530:** Moderate the inexplicably double damage magical throwing daggers do, to not make them the obvious choice all the time to maximize damage

This reduces the number of dice thrown of DAGG11 and DAGG12 to 1, so they are not the only good choice for daggers to maximize damage. And for consistency. Generally speaking, I dislike this sort of unbalanced design. DAGG11 specifically, already conforms to this rule in BGEE.

</details>

---

<details>

<summary><b>Two-handed Melee Weapons Tweaks</b></summary>

**Component 1200:** Make Ixil's Spike allow Haste and Improved Haste and improve it slightly

I think everyone agrees that this type of restriction (Free Action) makes the weapon in question immediately less appealing. It will not reset your character's movement speed either. A side effect of this component is that the Free Action spell no longer sets movement speed to the baseline. The description was adjusted to reflect that.

Additionally, the damage when pinned is now 1d8+6 rather than 1d6+5.

**Component 1201:** Make Lilarcor +3 have a chance of causing confusion on hit

It seems appropriate that the talking sword containing the blood-lusting, raving, screaming lunatic can cause confusion on hit. Now it has a 25% chance of causing confusion on hit for 1 round if Save vs. Spell is failed.

**Component 1202:** Make Warblade +4 slightly more unique and more potent when wielded by barbarians

Since this was blessed by northern barbarian gods, the sword now causes 1d4 cold damage on contact, but makes the sword damage actually 1d12+2 (keep reading, don't worry). Barbarians wielding this sword will receive +5% physical resistance, and the sword's bonus damage is increased by 3 (1d12+5). Lastly, it will be renamed to "Barbarian Warblade +4", just because.

**Component 1280:** Make Carsomyr more balanced and affect any kind of evil and not just Chaotic Evil

Not that it needs to be more powerful, but it feels wrong to not be especially effective against non-chaotic evil (but yes, I understand it's because it's the opposite of a paladin's alignment).

Additionally, since the dispel on hit thing is pretty cheesy, a saving throw vs. Spell is added as counterbalance. No penalty with +5, -2 with +6 version. As for the ability to cast Dispel Magic, since level 15 dispel is quite weak, especially for the +6 version, it's now level 20-30 for each version.

**Component 1300:** Make Silver Sword significantly more unique and add a more interesting (IMO) description

This component improves the description to something a bit more interesting than "hey, this sword is evil and can cut heads off." See the file "unique_descriptions.md" for details. Additionally:

- The faulty probabilities for vorpal hit are fixed (true 25%, not 26%)
- The sword acts in **every way** as a +5 two-handed sword **against mind flayers only**, that is, +5 THAC0, +5 enchantment, 1d10+5 damage
- Against other targets, it's still a +3 weapon in terms of damage, thac0 and enchantment level
- Wielding it makes the wielder immune to mind blasts and domination attempts by mind flayers
- Critical hits cause 2d8 psychic (irresistible) damage and causes Confusion for 10 seconds if a Save vs. Spell at -2 is failed. Creatures without minds or brains are unaffected.
- Speed factor of 6

**Component 1318:** Make Flame of the North able to kill trolls, and the extra damage affect all evil, not just Chaotic Evil

Self explanatory. Also, The backstory of the sword heavily implies it was involved in the slaughter of many trolls. Therefore, the sword can completely destroy trolls on hit by causing +2 fire damage on hit to trolls only.

**Component 1390:** Make Staff of the Magi force a saving throw to dispel effects on hits

The dispel on hit thing is pretty cheesy so, yeah. That. Save vs. Spell at -2

**Component 1410:** Make Ir'revrykal dispel magic not depend on probabilities and increase base damage

This essentially is the same tweak to Carsomyr, except the chance of dispelling is also 100%. The saving throw vs. spell has no penalty. It also makes the weapon have 1d12 base damage much like Carsomyr, tightening the resemblance between both swords. Both features are optional.

**Component 1460:** Make Spear of Withering able to poison on contact if save is failed

I feel like this spear should be more withery, especially considering it's a +4 weapon! This makes the spear able to inflict 12 extra poison damage over one round if a save vs. Death at -2 is failed.

**Component 1540:** Make Wave +4 slightly more powerful

This component improves Wave +4 by making it always deal 3 points of cold damage per hit. Giants take 9 cold damage instead, since it was made to fight fire giants. This may make it a fine choice for a weapon for a large portion of ToB.

**Component 1587:** Make Rod of Terror inspire less Terror by how awful it is and more by how effective it is

Panic is very unlikely to happen, and panic is generally not very convenient because it makes it difficult to hit the enemies. Plus, the permanent-until-death penalty discourages pretty much any idea of using this item. Therefore:

- Save vs. Spell for Panic has no penalty now, and it only lasts 2 rounds. On the second round, if the target is still suffering from panic, there's a 20% chance that the affected creature must save vs. Death, or be killed by the shock. Even if they survive, they become rooted in place for the remainder of the round in panic
- The penalty to Charisma is now a penalty to Constitution which is more meaningful and is no longer permanent but lasts 24 hours (2 in-game hours, or 3 full normal 8-hour rests). The chance of this happening is 10% instead of 20%

**Component 1590:** Make Blackmist more powerfully blinding and grant immunity to blindness

This makes Blackmist's blindness power more likely to be effective by adding a -2 save penalty. Additionally, you're immune to blindness while wielding it.

**Component 1591:** Make Soul Reaver slightly more balanced and deal 1d12 damage

Soul Reaver is fairly unbalanced, particularly because it reduces THAC0 by 2 cumulatively for 2 full minutes, and it's fairly easy to make any enemy to not be able to hit anything at all. This tweak reduces this duration to 5 rounds, and requires a Save vs. Spell at -4 to resist.

Also, the sword looks like it's fairly massive. You may disagree, but that's how it comes across to me. So this will also match the dice size of other blades like Carsomyr and Warblade: 1d12 (or 2d6 if the two-handed general tweak was installed).

Both changes are optional.

**Component 1593:** Make Sword of Ruin +2 slightly more powerful

This makes the extra critical damage of the weapon a bit more substantial, 2d5+2 (from 2d4).

**Component 1594:** Make Cleric's staff more unique and actually benefit clerics

I don't like that it's just casually called "cleric's" staff, without anything special added to it beyond the plain enchantment level (what else is new?). Therefore, it gains a few perks:

- +1 Armor Class
- +1 spell slot of level 3, 4, and 5 (clerics only)
- +1 turn undead and casting level (clerics only)
- May cast Mass Cure (at minimum level, 1d8+9 healing) twice per day

**Component 1595:** Make Halcyon +1 a bit more powerful

There aren't many spears in the game. It would be tragic if most were boring. This makes the electrical damage of the weapon random, between 1 and 3 (inclusive):

- 50% chance of causing 1 electrical damage
- 30% chance of causing 2 electrical damage
- 20% chance of causing 3 electrical damage

Every hit has a chance of electrifying the target: 2 electricity damage per round for 2 rounds if Save vs. Spell at +2 is failed.

Hopefully this is slightly less boring!

**Component 1597:** Make the Staff of Rhynn not just unique in name and description, but in function

Another example of a highly enchanted weapon without any special property. I based this tweak on the description, which is frankly horrific but inspiring. Therefore:

- Causes additional +4 fire damage per hit
- +25% fire resistance while holding the staff
- Hits with this weapon reduce Fire Resistance by 25% (doesn't stack) for 2 rounds
- Special ability: **Witch's Wrath** once per day. It works as a Sunfire that causes 8d6+10 fire damage to all enemies around the caster without affecting party members. The damage will be increased by 4d6+10 if the target is affected by Panic. The explosion itself will cause Horror and Slow for 3 rounds unless a Save vs. Spell at -2 is made

**Component 1599:** Make Psion's Blade more offensively powerful against Illithids

I like the idea of the sword, but it's a little too boring beyond the effect of the great +5 enchantment. Now:

- Deals 1d10+5 damage, but against mind flayers, it deals 1d10+7 (as if it were a +7 weapon without being one)
- THAC0 bonus: +5, but against mind flayers, it's +7
- Mind flayers struck with this weapon must save vs. Death at -3 or die instantly. You'll see an "Illithid destroyed" message in the log when it happens. However, this effect can only be attempted on the same mind flayer once per round, and stoneskin / ironskins will stop it

**Component 1602:** Make Dragon's Bane +3 better and act as a +6 weapon in every sense against dragons and wyverns

This makes the weapon act in every way against dragons and wyverns as a +6 weapon (thac0, enchantment, and damage). Otherwise, it acts as a +3 normal halberd.

**Component 1603:** Make Dragon's Breath +4 act damage-wise as a +4 weapon

This weapon, similarly to The Equalizer, deals unenchanted level damage by default and adds additive damage separately. For the purposes of multipliers, it's a fairly less powerful halberd compared to any other +4 halberd, despite the added multi-elemental +5 damage per hit. This makes the weapon damage truly 1d10+4, with the extra damage intact. If it's okay for the Flail of Ages +5, it is okay for this too.

**Component 1604:** Make Duskblade +2 more imbued with the essence of necromancy

This component enhances the weapon a bit, inspired by the description about how it got its powers because of the persistent presence of undeath:

- Other than +2 cold damage, it has a chance to unleash extra 1d6 cold damage if hit target fails a Save vs. Death
- Every hit has a 25% chance of decreasing Strength by 2 for 5 rounds. This can't kill the target. If Strength is less than 3, it drains -2 Constitution instead, which can kill the target (though it would be fairly difficult to pull it off considering the duration of 5 rounds)

**Component 1606:** Make the Ravager's vorpal hit bound by saving throws with harsh penalties and rebalance effects

I hate with passion this 10% chance of killing period-no-questions-asked thing, so:

- The chance of killing (vorpal hit) is now bound to a Save vs. Death at -4 to trigger, similar to Axe of the Unyielding
- Additionally, Cloak of Fear can be instantly cast.
- And the poison damage is set up differently, and brings elements from the Serpent Shaft. Instead of causing 3d6 poison damage instantly, the damage is now reestructured such that it causes 2d6 poison damage instantly AND poisons the target for 1 round (12 poison damage in total). This ensures a minimum dealt damage of 14 within a round and you deal a 1-round annoyance for casters as well.

**Component 1607:** Make Gram, the Sword of Grief able to become +6 and rebalance effects

- Poison is underrepresented and as such, its minimum damage has been risen:
  - Base version: instead of 2d12, it's 2d6+12, with a 10% chance of triggering (vanilla)
  - Upgraded version: same damage, but with a 15% chance of triggering instead of 10%
- Upgraded version now becomes +6, matching therefore the maximum damage of Warblade +4 and becoming the most powerful damaging two-handed sword per hit in the 1d10 range
- Passive +5% MR is now +10% (it has to compete with Carsomyr so 5% for a two-handed weapon is nonsense)
- The 1-level drain per hit with -5 penalty on the upgraded version is fairly inconsequential by the time you get it (from Abazigal's corpse). Instead, it causes affected creatures to deal -20% damage for 2 rounds, aka it's a weakening effect, with a save vs. Death -5 to save against it. This also affects magical and elemental damage. Does not stack.

</details>

---

<details>

<summary><b>One-handed Sword Tweaks</b></summary>

**Component 1125:** Make Ninjato of the Scarlet available for non-monks and improve it slightly, especially for monks

This makes this sword usable by non-monks of any alignment. Additionally, the sword gets the following two traits for every user:

- Inflicts +1 poison damage per hit
- Speed Factor of 0

And for Monks only, additionally:

- +5% critical hit chances while holding this weapon
- +2 THAC0 bonus, +2 extra for off-hand weapons

**Component 1126:** Make Blackrazor able to hit targets immune to +3

This allows this sword to be usable in more cases. Since it's extremely powerful, no other changes are added.

**Component 1127:** Make Peridan more powerful against dragons and wyverns and less misleading in the description

The description of Peridan is slightly misleading because it states that it does "double damage to dragons." You may think that every time you do damage to a dragon with it, you deal the same damage again, or perhaps you think the damage value of every attack is always double of what it would be against other enemies (like a critical hit). Uhh, not quite.

In reality, the sword deals 1d8+2 against all enemies and 1d8+2 again in a second tick of damage that isn't affected by strength modifiers, if the enemy is a dragon. So now the description is a bit more explicit about what it does and:

- Regeneration improved to 1 HP per 5/2 rounds
- Adds 15% resistance to all elements (i.e., the damage type of most dragons)
- THAC0 against dragons and wyverns has a +4 bonus
- +2 Armor Class vs. Dragons and Wyverns (essentially like a "Protection from Dragons and Wyverns" spell)
- Detect Invisibility can be cast three times, not once per day
- Deals an additional tick of 2d8+2 damage if the target is a dragon or wyvern

**Component 1210:** Make The Equalizer slightly more powerful

Honestly, it kind of feels like it's immediately not useful by the time you get it. The description is also slightly misleading because it looks like it will deal, for example, 1d8+6 against some alignments in the same way that a Longsword +6 would, but it's not like that. It actually just inflicts 1d8 (like a normal non-magical sword) and then additively includes the damage, which is generally much less powerful. Therefore the following improvements now exist:

- The sword now has an enchantment of 5 for the purposes of what it can hit and in terms of speed factor.
- The sword acts as a 1d8+3 in all other respects as a baseline.
- The extra damage it deals based on alignment follows the same rules, but is now divided in half slashing, half magical, instead of all slashing. For example, against chaotic evil, you'd deal +3 slashing damage AND +3 magical damage on top of normal damage.
- The sword now also grants passive improvements depending on alignment, benefitting the most those that are neutral:
  - All alignments: +1 Armor Class, +5% Magic Resistance
  - All morally neutral alignments: +1 Damage, +1 Saving Throws, +5% Magic Resistance
  - True Neutral: +1 Armor Class, +1 Saving throws, +5% Magic Resistance, +5% critical hit chances with all weapons

The rest stays the same. Side note: the THAC0 bonuses that it grants towards alignments (this is vanilla behavior) are universal, does not apply only to the equalizer, so if you put the weapon off-hand, and then put something else on your main hand, it shall be affected either way. This can be a way of optimizing THAC0 against, for instance, Chaotic Evil targets, such as Demogorgon, when using a character that can duel wield effectively.

This behavior is present in other weapons that have a thac0 bonus vs. types of enemies, such as the silver dagger. Only two-handed weapons can isolate the thac0 bonus (since you can't use another weapon at the same time).

Hopefully this will make the sword feel more legendary and worth the investment.

**Component 1220:** Make Ras slightly better and the Dancing Blade last for 1 turn instead of 4 rounds

This makes it useful for far longer, and more like the Sword of Mordenkainen. Additionally, drawing inspiration on this "dancing" thing, it has extra features given by the fact that the sword can "dance" on its own while being wielded as if with sentience:

- +1 Armor Class, +2 against piercing and slashing
- Speed Factor: 1
- THAC0: +4
- It's a flashy sword, and kits that are used to flashy fighting get bonus +1/2 APR: Blades, Shadowdancers, and Swashbucklers

**Component 1230:** Make Short Sword of Mask +5 slightly more powerful

Makes the chance-based Level drain take 2 levels instead of just one and the Entangle effect 5% more likely to trigger (20%).

**Component 1240:** Make Purifier's dispel magic much better and damage bonus affect all evil, not just Chaotic Evil

Just as the title says. It's kind of funny considering the description of the weapon mentions Pit Fiends, which are Lawful Evil.

It also makes the dispel magic effect equal to those in the Staff of the Magi and Carsomyr.

Both changes are optional.

**Component 1250:** Make Yamato's passive abilities more substantial

The effect is pretty underwhelming for a +4 weapon. Since it's advertised as a defender weapon, the following is added:

Armor Class bonus improved to 2 (instead of 1) plus 1 against slashing, piercing, and missile weapons. 5% universal damage and magic resistance.

**Component 1260:** Make Usuno's Blade slightly more electrically powerful

The effect is pretty underwhelming for a +4 weapon. Now:

- Chance of dealing 2d10 electrical damage increased to 15% and is now 5d4+1, with a save vs. Spell at -2 for half
- Every hit deals 1d3 electrical damage with no save allowed
- Increases electrical damage resistance by 40%

**Component 1270:** Make Spectral Brand slightly better and make the dancing blade last for 1 turn instead of 4 rounds

This makes it useful for far longer, and more like the Sword of Mordenkainen. Additionally, the Armor Piercing charge ability also improves damage by +4, critical hit chances by +10%, and critically misses become impossible to trigger (effectively impossible unless something is increasing the chances of having critical misses).

**Component 1315:** Make Dak'kon's Zerth Blade behave as a +3 weapon

This makes the katana +3, for consistency with the power level of other WA-weapons.

**Component 1319:** Make Holy Sword of Tyr +3 affect all evil, not just chaotic evil

Self explanatory. I also removed the weird preamble that includes the first sentence of the general description of long swords. Seems lazy, and perhaps a mistake.

**Component 1341:** Make Hindo's Doom a +4 and +5 weapon and inflict extra damage to undead

This allows the game to grant you a +4 and +5 katana, and following the theme of the katana, each strike inflicts +4 or +5 extra magical damage to undead only, depending on upgrade.

**Component 1470:** Make Adjatha the Drinker thirstier

This component will make the healing per it based on probabilities, such that there is a 50% chance it will heal by 1, 20% it will heal by 2, 15% it heals by 3, 10% it heals by 4, and 5% it heals by 5.

**Component 1550** Make Drizzt's weapons slightly more worth stealing in BG2

By the time you get this weapon in BG2, it's generally underwhelming, and you have better weapons already. This improves his weapon in a few ways, trying not to stray too much from the lore:

- Both: Act as a +5 weapon for the purposes of what they can hit and in terms of THAC0
- Icingdeath: It's a "frost" weapon, and as such, it also inflicts 1d3 cold damage per hit, +5 against creatures immune to fire (fire elementals, fire salamanders, fire giants, etc). It's also considered a silver weapon
- Twinkle: It has a defensive theme, therefore: added +2 Armor Class bonus against slashing, piercing and missile, +1 save vs. Spell, +8% physical damage resistance

**Component 1580:** Make Hawksight improve your senses, reflexes, and accuracy more keenly, and give it a more unique description

This component takes the theme of speed and accuracy more seriously, and hence, other than giving +1 Dexterity it also:

- Has +4 THAC0 bonus instead of +2
- Universal +1 saving throw bonus
- +1/2 APR

Optionally, it also adds a description worth-reading (YMMV). I really dislike items with unique names, but with no interesting description or brief backstory. It seems lazy and uninteresting to add a named item without any background. Additionally, it adds a minor power to it, based on this brief backstory. See unique_descriptions.md for details.

**Component 1582:** Make Vexation +2 more powerful

I've always liked this sword conceptually, and it's introduced into the game in a very cool way. This makes this short sword another +3 weapon and additionally improved in the following ways:

- Critical hits inflict 2d4 extra piercing damage
- Bleeding per hit improved to 1d2 from 1

Note that this will make the encounter relatively more difficult, obviously. Protect your mages: they will likely be targeted and promptly chunked.

**Component 1583:** Make Kachiko's Wakizashi more unique and add an optional upgrade path for Cespenar

I really hate unique items with nothing in the description worth reading, so I tried to add something a bit more worth reading and hopefully not too cringy (see unique_descriptions.md for details). For reasons described in the description, it is now called Kachiko's Whisper. The following additions are included:

- Wisdom penalty (which can kill, technically, and I guess remove spell slots from priests) lasts for 6 rounds now as opposed to 2 rounds.
- Shadowdancers receive: +10% Hiding skills and +1 THAC0
- Can cast Shadow Jump three times per day: teleport instantly to a place in sight, becoming invisible for 2 rounds, and becoming unable to critically miss for the duration.

This component also adds a path to be improved by Cespenar, requiring a scroll of Shadow Door and Wail of the Banshee, and 10,000 gold pieces, becoming a +5 weapon. This can be disabled in the configuration files.

**Component 1584:** Make The Brass Blade +5 cast a more powerful Fireball not tied to caster level

The Brass Blade is an unused weapon that allows you to throw a Fireball as per the 3rd level wizard spell, and it's tied to caster level, which means only Fighter/Mages would be able to take advantage of the full power of this -- other classes would throw a much weaker Fireball. This changes the power so it casts instead a Delayed Fireball cast at max level (15d6 fire damage with vanilla values) at a particular target, regardless of the presence or absence of caster level, and adds the power to cast Sunfire too. Next, it also reduces the fire damage per hit from 10 to 5, since that was a little on the overpowered side.

Technical side note: since Type 2 is bugged for op146, as it makes spells cast bypass magic resistance as if the caster targeted themselves, it uses now Type 0, which unfortunately means the spell casting will have the casting speed of the spells in question.

Finally, it fixes two likely bugs: spells cast being set as conjurer spells instead of evocation, and the fire damage of the sword bypassing mirror images.

Note: you need to have a mod installed that restores this weapon in order to get it organically. An example of this is **Convenient Enhanced Edition NPCs** by Argent77.

**Component 1585:** Make Arbane's Sword of Agility's Haste last 1 turn, not 2 rounds

Self explanatory. Additionally, the speed factor of the weapon is now 0.

**Component 1586:** Make Blade of Searing more Searing

This makes this weapon more interesting by replacing the simple +1 fire damage by:

- 1d3+1 fire damage on hit
- Can make the target catch on fire, causing it to receive 1d3 fire damage per round for 3 rounds if a save vs. Spell is failed

**Component 1588** Make Water's Edge not just unique in name and description, but in function

The unique description with no unique functionality bothers me, therefore:

- +20% cold resistance on equipping
- Causes 1d2 cold damage on hit

**Component 1589** Make Rashad's Talon not just unique in name and description, but in function

The unique description with no unique functionality bothers me, therefore:

- Cursed wound: critical hits with this weapon prevent most sources of healing for 2 rounds
- +5% critical hit chances with this weapon

**Component 1596:** Make The Shadow Blade +3 not just unique in name and description, but in function

The sword has the following benefits now:

- +1 Backstab bonus (single-classed thieves only)
- +2 Main Hand THAC0 (single-classed thieves only)

They're relegated to single classed thieves because they need it more, I want to promote specialization, and for balance, since multiclassed Thieves have other alternate means of increasing their THAC0 and general damage.

**Component 1598:** Make Cutthroat +4 not just unique in name and description, but in function

This weapon is not even a normal +4 weapon, since the speed factor is not 0 as it normally would. This is a bug that is fixed by the fixpack, and also by this mod automatically. Therefore:

- Speed Factor: 0
- Critical hit chances: +10%
- Critical hits cause bleeding: 1d6 piercing damage immediately, and again each round for 2 rounds

**Component 1605:** Make The Burning Earth better improve the horrendously misleading description

You get this weapon fairly late in BGEE, and it sucks. Also, "cold-using creatures" only includes WINTER WOLVES. The description is overly generous because there's not much point in calling it "cold-using creatures" if it's only winter wolves. Here are the changes:

- Behaves exactly as a +2 weapon
- Deals by default +2 fire damage on hit
- The following creatures are considered now also "regenerating": planetars, dark planetars, solars, and fallen solars. The sword will act as if it were +3 and +4, respectively, for the purposes of being able to hit these creatures. There may be others that would qualify as "regenerating", but I'm not sure.
- Silver Dragons are included as "cold-using creatures"
- The extra damage will be fire damage, not slashing

</details>

---

<details>

<summary><b>Axes and Blunt Weapon Tweaks</b></summary>

**Component 1310:** Make Defender of Easthaven damage reduction a little more moderate

The bonuses of this weapon are very significant, and it is an infamous tool for powergaming and no-reload runs. I reduced the resistances to 10%. It's still significant, while still reducing the chances of breaking the game.

**Component 1311:** Make Krotan's Skullcrusher +2 slightly less generic

Yet another enchanted, unique weapon without any special trait of any kind. It now possesses the same bonus as Skullcrusher (in the vanilla game), which is a +2 damage bonus to humanoids

**Component 1312:** Make Skullcrusher +3 slightly more crushy

This component improves the extra damage against humanoids to +4.

**Component 1313:** Make Gnasher +2 slightly more painful

This component makes the "pain" that the description talks about manifest as a non-stackable 2-round weakness: -2 penalty to Armor Class, THAC0, and Damage.

**Component 1314:** Make Jerrod's Mace +2 behave as a +3 weapon

This makes the mace +3 for consistency with the power level of other WA-weapons. It also improves the damage and thac0 bonuses against fiends by 1.

**Component 1320:** Make Flail of Ages +5 allow Haste and Improved Haste and improve it slightly

I think everyone agrees that this type of restriction (Free Action) makes the weapons immediately less appealing. It will not reset your character's movement speed either. A side effect of this component is that the Free Action spell no longer sets movement speed to the baseline. The description was adjusted to reflect that.

**Component 1321:** Make Bone Club +2, +3 against undead's effect reflect the description better and improve it slightly

This makes the club slightly more powerful (+3 in all respects), more shamanic, and more damaging to undead: acts as +5 against them, with THAC0 bonus of +5 against undead, undead take +4 damage, and spectral undead take +8.

**Component 1323:** Make Azuredge act properly as a +3 weapon and make the disruption effect more balanced

The original hits in terms of extra damage and thac0 like an unenchanted weapon. This component makes the weapon match the basic stats of a +3 weapon. Additionally, it fixes the usual misleading bits in the description for extra damage, and the extra damage to undead was adjusted from 1d6+4 to 1d6+3.

Finally, and more importantly, it makes the axe balanced, since anyone can Whirlwind a lich to death with this way too easily. Following a close-ish PnP version, the weapon has different degrees of effectiveness depending on the target (which now also includes fiends, as per PnP). Any creature that applies for the axe's disruption effect must save vs. Death at -2, except:

- Fiends: 95% chance of resisting it without having to save against it.
- Liches and demiliches: 80% chance
- Vampires and vampyres: 50% chance
- Spectres, ghosts, and other spectral creatures: 35% chance
- Mummies and revenants: 20% chance
- Wraiths: 5% chance
- Other lesser undead creatures, such as Skeletons, Shadows, and Ghouls have no chance of resisting it and must therefore save against it every time.

**Component 1324:** Make Wyvern's Tail +2 cause poison damage on hit and have a chance of poisoning

This improves this item in the following ways:

- Causes 2 poison damage per hit with no save allowed
- If save vs. Poison is failed, it deals 5 poison damage over 5 seconds. There's a 4% chance that this poison will be as lethal as that of an adult wyvern, becoming instead 25 poison damage over 5 seconds. The save vs. Death is at -2 in this case.

**Component 1325:** Make Borok's Fist +2 different from Ashideena +2

This exists simply because I hate that it's identical to Ashideena. So, inspired by the description, it has a neat bonus against giant humanoids: on hit, they get Stunned for 1 round if they fail a save vs. Spell at +2. Additionally, the electrical damage on hit is 1d2 and not 1, so it is very slightly more effective as a general use weapon compared to Ashideena.

**Component 1326:** Make Maces of Disruption more balanced when fighting the undead and improve misleading description

Refer to component 1323. The upgraded Mace of Disruption +2's only difference as far as disruption goes is that the save vs. Death improves from -2 to -4.

Additionally, the extra damage applied to the undead is always the base damage of the weapon, instead of 1d6+2 for the first, and 1d6+1 for the second.

Finally, this also modifies the deva's Mace of Disruption such that it follows the same rules.

**Component 1327** Make Club of Detonation's Fireball not tied to wizard level and improve it slightly

The club of detonation is a fairly inconvenient weapon to use, as the fireball is presented as a detriment, and the upgrade to it reduces its chances to trigger. It was reworked as follows:

- The fireball is no longer the wizard spell, tied to wizard spell levels, but a custom fireball that will deal no damage to the user and allies, and deal always 8d6+12 fire damage (Save vs. Spell for half). The fireball will also bypass magic resistance as it is no longer considered a wizard spell, but fire, so to speak, coming from the demon.
- Speed factor was also modified to take into account enchantment levels, as generic enchanted weapons do
- The chances of triggering on the +5 version were increased from 5% to 10%, as the club is no longer conceived as something that may inconvenience the user randomly with a fireball. It's just good news now for your party and bad news for your enemies.
-
**Component 1328:** Make Storm Star slightly more electrifying and improve the chances of the chain lightning part

This makes the weapons more interesting in this way:

- +4 version will improve electric resistance by 20%, the +5 version by 40%
- +4 version will increase electric damage output by 5%, the +5 version by 7%
- +5 version will deal +1 more electric damage on hit
- +5 version chain lightning effect will have a 12% chance of triggering instead of 5%
- Whosoever holds this mace, if they be worthy, will have their body crackling with electricity, causing 1d2 electric damage to any who dare hit them, with a 15% chance of stunning them for 1 round if they fail a save vs. Spell at -4

**Component 1329:** Make Runic Hammer's undead disruption more balanced

This applies the same rules as the Mace of Disruption tweak (component 1326), and also merges bits of the description in the non upgraded version with the upgraded one.

</details>

---

<details>

<summary><b>Ranged Weapon Tweaks</b></summary>

**Component 1010:** Make Asp's Nest darts much more likely to poison, to compensate for the rarity and cost

This makes those very expensive darts much more likely to affect characters, which is a fair compensation for their rarity and huge monetary cost. Save vs. Death is now at -4 (unless overriden in the configuration file). Additionally, 1d2 poison damage is caused on contact.

**Component 1330:** Make Darkfire Bow slightly more remarkable

Makes the elemental resistances against fire and frost increase to 15%, 30% at +5. Additionally, the +4 version makes all arrows deal extra 1 cold and fire damage (2 damage at +5).

**Component 1340:** Make Taralash slightly more remarkable

The +5 version literally just increases the THAC0 bonus by 1. That's a bit too boring for a +5 weapon. I'm not saying these changes are much better—but slightly better? Absolutely!

- Makes the movement bonus increase to 5.
- Adds a damage bonus of 1 like a regular composite bow
- Animals and other kinds of unintelligent beasts, magical or not, take +2 and +5 extra damage added on top of the arrow's normal damage (+4 and +5 version respectively). The list of such creatures includes: anything tagged as animal, ankhegs, carrion crawlers, chimeras, ettercaps, gibberlings, hook horrors, otyughs, spiders, trolls, umber hulks, wyverns, and basilisks.

**Component 1342:** Make Protector of the Dryads deal +2 damage to orcs, ogres, gnolls, and goblinoids

Inspired by the description, it deals +2 damage to orcs... as well as some groups of similar monsters that would band together to spread evil on the Sword Coast: ogres, gnolls, goblinoids (goblins, hobgoblins, and bugbears).

**Component 1343:** Make Mana bow more magical and more deadly against arcane casters

This follows the theme of the description, which is an anti-wizard theme, and thus the following changes were added:

- Magic damage resistance: 33% (from 20%)
- Magic Resistance: 5%
- Arrows force a Save vs. Spell at -2 or the target suffers 1d4+1 magic damage and 10% cumulative arcane casting failure for 4 rounds (which can be dispelled)

**Component 1344** Make Arrows of Biting apply poison faster and improve the misleading description

The description states that 30% of the health of the target will be lost by the time the poison is done, but that's not actually true. Therefore, now it deals 30 points of poison damage over 30 seconds, similar to Bolts of Biting, but slower. Additionally, these arrows will have a 5% higher chance of critically hitting.

This will in turn make Hobgoblins and Sirenes in BGEE significantly more dangerous if they get the poison off on you, since -30 HP is a big deal in BGEE. Keep the antidotes and healing ready (my potion, cure poison spells, and healing spell overhauls help wink wink).

**Component 1345:** Make Arrows of Fire cause fire damage always, same as Arrows of Ice

This removes the save from the damage effect, therefore 1dx fire damage will always be inflicted.

**Component 1346:** Make Arrows of Piercing always cause at least half of the extra piercing damage

This makes the arrows cause at least 3 extra piercing damage when save succeeds. This should make these expensive arrows feel like less of a waste when used, especially against targets with good saves. Additionally, these arrows will have a 10% higher chance of critically hitting.

**Component 1347:** Make Bolts of Biting have an inherent +5% extra critical hit chance, and deal +1 poison damage on hit

This improves the bolts slightly by causing direct poison damage, which may be useful for caster interruption, and it helps compensates the lack of enchantment or thac0 bonus. Additionally, these bolts will have a 5% higher chance of critically hitting, since I envision these as assassin's tools.

**Component 1348:** Make projectiles from Shortbow of Gesen as fast as regular arrows

Self explanatory, the normal projectiles are way too slow.

</details>

---

<details>

<summary><b>NPC Tweaks</b></summary>

**Component 1380:** Make Chaos and Entropy grant 1/2 APR each and improve them slightly.

My first move whenever I used Haer'Dalis was to give him swords that granted him extra attacks. These are his personal swords, so it feels wrong to not use them. This makes it more appealing to use them since now he will have 3 APR when dual wielding by default. Both have a speed factor of 0.

Additionally, it makes Entropy cause 6 poison damage, on a Save vs. Death at -1 instead of 3 with a save without penalties or bonuses, and it makes Chaos reduce the struck opponent's Save vs. Death by 1 for 2 rounds. They both gain a speed factor of 0 and can hit targets immune to +2 weapons, like balors.

Chaos is also now similarly restricted to Tieflings, much like Entropy and according to the description.

This component is compatible with Improved Haer'Dalis Swords mod, which makes the weapons +4 after upgrading. The benefits in the upgraded version will mirror the baseline, except:

- Save vs. Poison penalty for Entropy is -2, 9 poison damage
- Save vs. Poison debuff in Chaos is -2 and lasts for 3 rounds
- Act as +5 weapons
- Can only be wielded by Haer'Dalis

**Component 1480:** Make Yoshimo's Katana slightly more unique and powerful

This component keeps to the idea that it is only lightly enchanted, but it also offers a few advantages to Yoshimo only:

- Speed factor reduced to 1 from 3
- THAC0 bonus increased to 3.
- Sets proficiency with katanas to 2, unless it's higher.
- +10% critical hit chance

**Component 1500:** Make Mazzy's weapons slightly more powerful

Come on, Arvoreen! Be more generous to your most faithful holy warrior.

- Bow of Arvoreen grants extra 1/2 APR to Mazzy, +3 THAC0, and +1 damage
- Sword of Arvoreen grants extra 1/2 APR to Mazzy, +4 THAC0, and becomes in most respects a +3 weapon, except it can hurt enemies immune to +3 weapons.
- Only Mazzy can wield these

This component will patch Item Upgrade's upgraded versions of these weapons as well.

**Component 1510:** Make Delryn's family shield become a +2 shield

Just a simple buff to make the shield a good option for longer. This also applies automatically the changes to this item in **Component 1644**

**Component 1520:** Make Hallowed Redeemer able to hit enemies immune to +2 weapons

This extends the usability of the weapon, despite the lower damage, if the constant shield the weapon grants is desired. This also applies automatically the changes to this item in **Component 1644**

**Component 1640:** Make Abyssal Blades more powerful (Dorn's Quest)

This improves the blades such that they have an enchantment of 5 (only for the purposes of what they can hit!), and thus their usability is extended until the end of the game, if so desired.

Additionally, the versions that have one fiend in them deal +1 fire damage compared to baseline. The version that has two deals +2.

**Component 1641:** Make the item creation abilities of vanilla NPCs slightly better

This makes these skills generate more items. Jan Jansen will create 10 Bruiser Mates. Eldoth will create 15 poisoned arrows. Additionally, his poisoned arrows will deal 20 poison damage over 40 seconds instead of 13.

**Component 1642:** Make Nalia's ring slightly more powerful

Equipped items that you cannot remove from NPCs are quite inconvenient, since they prevent your character from being upgraded in the ways you desire. This component makes the ring more powerful, relatively diminishing this annoyance. Specifically, other than improving Armor Class and saving throws by 2, and granting 50% fire resistance, it also adds:

- +20% bonus to Pick Locks and Find Traps (compensates fewer Thief levels compared to Imoen)
- 1 extra spell slot from level 1 to 5

**Component 1643:** Make Corthala family blade more powerful and more effective against wizards

This makes the blade grant Valygar the following perks:

- +1 backstab multiplier (this will ignore the backstab multiplier tweak and behave as you would expect)
- Total bonus of +6 THAC0 against wizards and sorcerers

It also applies automatically the changes to this item in **Component 1644**

**Component 1644:** Remove the unnecessary stat restrictions in NPC's gear

The stat restrictions are a remnant of an older, inferior way of making the gear usable only by THEM... Unless, of course, you happen to have the exact same stats as them. This removes these restrictions, though only in the items that seem too arbitrary:

- Cernd's gear
- Valygar's gear
- Keldorn's gear
- Anomen's shield (requires 13 Charisma, removes this requirement only)

The rest seem less arbitrary: Jan Jansen's special gear requires 17 dexterity (i.e., ability to handle it), Mazzy's (no special restrictions), Haer'Dalis' (no special restrictions), and Yoshimo's (no special restrictions).

**Component 1645:** Make Cernd's cloak more powerful

This component makes Cernd's cloak more worth hanging onto. As it stands, it is like a +1 cloak of protection, with the bonus that it can be worn with other magically protective items. Now it's more unique and seems more significant for our druidic lupine sensei. Additions (saving throws stay as they were):

- +2 Armor Class (from +1)
- Physical damage resistance: +10%
- Elemental damage resistance: +15%
- Regeneration: 1 HP / 2 rounds

Overall, this will complement his werewolf shapes and druidic traits. Obviously this was made with the assumption he's a shapeshifter and not any other kind of druid (though it's unlikely it will break anything -- unless he's a fighter/druid perhaps, due to the stacking of physical resistances).

It will also remove the needless stat restrictions from the item.

**Component 1646:** Make Sarevok's Deathbringer assault a bit more balanced

Deathbringer assault is a bit stupid. Yes, it's very cool. Yes, big ToB bosses are not affected. Yes, it triggers only 3% of the time. But it's still 200 slashing damage, without even a save to take only half. Sarevok also causes stun (even though it's supposed to be a fear-induced state) 11% of the time when he hits for 2 rounds, which is almost always a death sentence when it happens, and cannot be dispelled, as it is a natural effect. The following changes are applied:

- The damage part of the assault is now 120 (overridable in the config file), and allows a save vs. Death at -5 to take half. 60 damage is still a BIG FAT hit, which is added on top of a regular hit, so... You'll be fine
- Golems, other constructs, slimes, spiritual beings, spectral undead, and dragons are all immune to the damage no matter what
- The stun is meant to be an effect of fear, not a "stun" per se, and as such, it's no longer a stunning effect, but a fear effect that roots the enemy in place and lowers their Armor Class by 10. As such, only creatures that are not immune to fear will be affected by this.
- The probability of stun (now a special type of fear) is a proper 10% chance
- For flavor, Sarevok will also use his "Die!" line when a Deathbringer Assault happens

This component contains the same fixes as Tresset's deathbringer assault component. No need to use both.

**Component 1647:** Make Shar-Teel especially effective when fighting male-gendered opponents

This component makes Shar-Teel's effectiveness vs. males fit her hate and boasting. A bit gimmicky, but it's very amusing to me:

- +1 to THAC0 and Damage vs. males (of any race)
- +2 Armor Class vs. males (essentially as if she had a Protection from Men spell on her)

Note that this means she has a bonus against things that _may_ make no sense they're set as "male", like battle horrors. My mod, however, fixes this whenever a component is installed, ensuring sexless and genderless creatures are set as such. Creatures of that nature includes angels, demons, elementals, mind flayers, golems, battle horrors, beholders, and others. All those instances will be fixed so this component and any other that targets gender directly works more consistently. This fix can be disabled in the configuration file, but it's not recommended to install this component without it. Final note: summoned creatures have a special "gender" set to them which marks them as summoned creatures, so they will not be affected by this component, even if their normal version would routinely be considered "male". Not my fault they used "gender" as a weird mark for various purposes, blame Bioware!

</details>

---

<details>

<summary><b>Wizard Spell Tweaks</b></summary>

**Component 140:** Standardize Finger of Death magical damage on a successful save

This component matches the magic damage inflicted by the wizard version of Finger of Death so it's as powerful as the priest version.

**Component 145:** Make Luck last for 1 turn and add 5% critical hit chances, 2 Armor Class, 5% more to thieving

The bonus that Luck provides really doesn't justify such a short duration. Now it lasts 1 turn instead of 3 rounds (i.e., 18 seconds) and makes it generally more useful by adding also a 5% critical hit chance boost, 10% total bonus thief skill bonus, as well as 2 Armor Class. The rest is unchanged. You can choose which parts of the component you want to install in the configuration file.

**Component 160:** Make Black Blade of Disaster and golem iron fist unsuitable for backstabs (optional, see config)

This exists simply to destroy any temptation to use these as cheesy ways to get insane numbers with backstabs that would instakill most things with HP and normal damage resistances in one hit. So now they should not be able to trigger backstabs. You can disable either case in the configuration file.

**Component 161:** Make Phantom Blade scale in duration up to level 20, instead of to level 18

Only fixes damage waking sleepers issue in IWDEE, as the duration scales fine in IWDEE.

**Component 170:** Make Wail of the Banshee inflict some magical damage and deafness on a successful save

This exists because I personally dislike using spells, especially high level spells, which are powerful but unpredictable, so that there is a benefit to using them regardless. Therefore, on a successful save (or if the targe is simply immune to the slaying effect), it will cause 3d6+3 magic damage and cause deafness for 2 rounds.

**Component 180:** Make Meteor Swarm more likely to do more damage, and bypass magic resistance like Fire Storm

The problem with Meter Swarm is that the likelihood of doing very low damage is quite high, which is pretty bad for a level 9 spell. To make it worse, it doesn't bypass Magic Resistance either. Now it will instead do it like Fire Storm, causing 2d10 + 1 point/level (i.e, 22-40 fire damage per round instead of 4-40 damage per round), and no Magic Resistance will apply.

**Component 210:** Make Horror an Enchantment spell

This mod simply changes the school to Enchantment, which is probably more accurate for a mind-altering spell.

**Component 220:** Make Ice Storm do more damage, including piercing damage

I think the damage is a little low for a 4 round static effect (2-16 cold damage per round). Now the damage will be 2d8+2 cold damage plus 1d6+2 piercing damage. Piercing was added because the animation indicates pointy ice is what falls down upon your foes.

**Component 370:** Make Ray of Enfeeblement a Necromancy spell

It probably makes more sense to make this spell a Necromancy spell like in NWN and NWN2.

**Component 380:** Make Contagion cause 4 points of Strength and Dexterity damage

2 points of damage for STR, DEX and CHA is underwhelming, and CHA reduction is irrelevant unless using particular mods. Now it reduces 4 STR and DEX, which should be a little more meaningful and more worth the level 4 slot.

**Component 390:** Make Death Fog inflict 1d8+8 acid damage and optionally bypass Magic Resistance

Improves the usability of Death Fog as a "general purpose" damage dealer instead of just a stationary lingering anti-summon spell. The options for acid spells are very lacking in the game anyway. So instead of 8 acid damage per round now it will be between 9 and 16 per round with no save. Optionally, magic resistance will be bypassed. You can undo this in the configuration file.

**Component 400:** Make Energy Drain drain 6 levels instead of 2

2 levels of drain is unremarkable and a waste of a spell slot, particularly when the likely enemies to fight by the time you get this spell are fairly high level. Additionally, this makes the spell behave similarly to IWD, where outsiders, undead, and constructs are ensured to be immune to it.

**Component 405** Make Maze bypass Magic Resistance, like Imprisonment, and make Minotaurs immune to it

I think this makes this spell quite more useful, although perhaps it's too powerful like that if used against some enemies. I like this tweak, but I'll use the spell judiciously (perhaps not mazing dragons, for example). Additionally, Minotaurs are immune to it, same as IWDEE.

**Component 407** Make base Imp Familiars have 12/24 HP like the other familiars

This allows you to be Lawful Evil and enjoy the same amount of HP bonus as other alignments. I see no reason there should be a bias against the Imp familiar.

**Component 410:** Make Horrid Wilting actually more effective against plants and Water Elementals and increase minimum damage

This makes the spell mirror the behavior in 5E/BG3, where plant and water-based creatures always take maximum damage with a Save vs. Spell at -2 (this penalty is missing in vanilla), halved on a save. Additionally, enemies that are not damaged by draining moisture are unaffected (undead, golems, and non-water elementals).

Finally, it modifies the dice size and damage bonus, such that instead of dealing (Level * 1d8), it deals (Level * 1d7 + 1). Ultimately, it deals the same maximum damage. The difference is that the minimum damage dealt will be higher, such that the damage range will be 40-160 at max level (vanilla is 20-160).

**Component 430:** Make Grease bypass Magic Resistance, apply a Fire Resistance debuff to affected characters, and reduce movement speed regardless, as per the description

A very cool part of other games using the Grease spell is that it actually primes the area for extra fire damage. This component emulates that behavior by causing character in the Grease field a 6-second -25% weakness to fire and also makes part of the speed reduction unavoidable. Failing the save will simply increase the slowdown significantly.

**Component 440:** Make Comet bypass magic resistance and apply a mix of cold, fire, and crushing damage

As others have noted, this spell is generally just less powerful than Dragon Breath (the latter also is not affected by Magic Resistance). This is an attempt at making it more unique. As for the rationale, comets are cold and icy, hence the cold damage, but burn when in a collision path, hence the fire damage, and are big rocks, hence the crushing damage. The breakdown of damage is: 2d10+10 cold, 2d10+10 fire, 3d10+10 crushing.

**Component 441:** Make Tenser's Transformation grant a THAC0 of 0 at max level and APR at the appropriate levels

Makes this spell achieve a THAC0 of 0 at max level, since the description clearly states "fighter of the same level." They also get 1/2 APR at levels 7 and 13. This APR does not stack with the one provided by Holy Power (component 190).

Finally, by default, it will only grant APR to non-fighter casters, as fighters already have the APR they need. This can be disabled in the configuration file.

**Component 444:** Make Flesh to Stone use Petrification saves and optionally make some creatures immune to it like in IWD

This makes this spell force a save vs. petrification instead of a save vs. spell. I think Flesh to Stone and Disintegrate are way too similar functionally, and it's almost always a better idea to use Flesh to Stone over Disintegrate (they're both even boosted equally if cast by a Transmuter). This affects the version that beholders use.

This will also make the wizard spell not affect golems, spectres, and other creatures that are immune to petrification according to IWDEE.

**Component 445:** Make Bigby's spells more powerful

Bigby's spells are generally a pretty poor choice for levels 8 and 9: low damage and a high chance of either spell doing nothing. This tweak improves those two spells such that they do more damage and are more likely to be effective, bypassing magic resistance as well (but can still be dispelled):

- Clenched fist:
  - 1st round: 4d6+6 crushing damage (originally 3d6, no save)
  - 2nd round: 6d6+4 crushing damage if save vs. Paralysis at -4 is failed (originally 4d6, save vs. Paralysis at -2 )
  - 3rd round: 8d6+4 crushing damage if save vs. Paralysis at -2 is failed (originally 6d6, save vs. Paralysis, no penalty)
- Crushing hand:
  - 1st round: 6d6+6 crushing damage (originally 2d10, no save)
  - 2nd round: 8d6+8 crushing damage if save vs. Paralysis at -6 is failed (originally 3d10, save vs. Paralysis at -4)
  - 3rd round: 10d6+10 crushing damage if save vs. Paralysis at -4 is failed (originally 4d10, save vs. Paralysis at -2)

**Component 446:** Make Fireball, Sunfire, and Delayed Blast Fireball scale slightly more up to level 20

Fireball is such a ubiquitous spell in D&D and generally considered like a great spell to clear out groups of enemies. I felt that it could use some extra help at higher levels.

- Fireball: After level 10, when damage is 10d6, an extra point of fire damage will be gained, up to 10d6+10.
- Sunfire: After level 10, when damage is 10d6, an extra point of damage will be gained, up to 15d6+5. After level 15, 2 points of fire will be gained per level, up to 15d6+15.
- Delayed Blast Fireball: now it will start off at 13d6 (level 7 spells are gained at level 13) and then grow by 1d6+2 per level, up to 18d6+10, which then increases by +5 each level until level 20, becoming 18d6+20.

If you think this is overpowered, consider these damage range values:

- Skull Trap deals 20d6 at level 20 (14d6 with SCS), which is significantly more than the bonus in this component. Comparison:
  - Skull Trap (no SCS): 20-120 damage
  - Skull Trap (SCS): 14-84 damage
  - Fireball (with component): 20-70 damage
  - Fireball (without component): 10-60 damage
- Cone of Cold, another damaging spell of level 5, deals up to 20d4+20 damage too. Comparison:
  - Cone of cold: 40-100 cold damage
  - Sunfire (with component): 30-105 fire damage
  - Sunfire (without component): 15-90 fire damage
- Horrid Wilting deals 20d8 and it's an ubiquitous spell for players because of the huge damage potential, and Delayed Blast Fireball is an unimpressive contender comparatively (despite the spell level difference). Comparison:
  - Horrid Wilting deals 20-160 damage (40-160 with my HW tweak)
  - Delayed Blast Fireball (with component): 38-128 damage
  - Delayed Blast Fireball (without component): 15-90 damage

Also, Delayed Blast Fireball no longer has a markedly smaller explosion radius compared to Sunfire and Fireball, but the exact same as those.

Lastly, this patches the Fireball explosions such that the god-awful EE explosion is substituted by something much more epic looking in my view. This behavior can be disabled in the configuration file. It's also possible to install **only** the animation change if you like.

**Component 447:** Make Melf's Acid Arrow have a chance of splashing enemies and optionally bypass magic resistance

This makes this spell more similar to the 5E behavior, where the acid creates a splash zone. The splash zone will affect immediately adjacent enemies if they fail a save vs. Breath, without affecting the primary target, or allies, for convenience and to avoid modifying the normal strategy in the game when using this spell or meddling with enemy AI. The splash damage is equal to the base immediate damage of the spell, and it does not persist over time, only the primary target gets damage over time. This splash can be avoided with an Evasion check if this feature exists in the game.

Additionally, the spell will bypass magic resistance, as it is conceived as conjured acid, not a magical effect. This behavior can be disabled in the configuration file.

**Component 448:** Make Decastave at least grant proficiency with staff while it's held

Self-explanatory. Small quality of life change.

**Component 449:** Make Otiluke's Freezing Sphere deal half damage on save

Self-explanatory. Most spells that deal damage only on a failed save are not very attractive. This will make it a better choice.

**Component 451:** Make Chain Lightning scale more strongly and spread faster to enemies

This modifies the projectile so it spreads faster, making it less annoying. Additionally, the starting damage is now 8d6, increasing to 12d6 with with the same scaling as vanilla. Both things can be freely allowed or disallowed through the configuration file. Not available for IWDEE.

**Component 452:** Make Icelance upgrade damage every 2 levels up to 10d6

Self explanatory.

</details>

---

<details>

<summary><b>Cleric/Druid Spell Tweaks</b></summary>

**Component 100:** Make Glyph of Warding do damage on a failed save and extend damage up to level 20, and not 18

Generally, I do not believe in damaging spells that can be avoided completely with Saving Throws, at least in this game, because, for the most part, they constitute, sooner or later, a waste of a spell slot.

Therefore, it will always cause half damage. Additionally, it extends the headers up to level 20, such that the damage grows up to 20d4 instead of 18d4.

**Component 101:** Make Flame Blade be more effective vs. undead, and last for as long as it does in IWDEE

This is essentially how it works in IWDEE, except the +2 enchantment bonus, which is an addition to make it an effective tool against undead. This also fixes the inaccurate description in IWDEE (it's +4 fire damage, not +2). Note that this will mark the weapon as magical due to technical reasons, which will make the weapon not effective against something that is protected against magical weapons but not normal ones.

Finally, it also makes the spell scale duration-wise like in IWDEE. Now it follows the usual convention.

**Component 110:** Make Bless and Curse last longer and increase the casting speed from 6 to 3

I don't think 36 seconds with a very long casting makes this spell desirable in most situations. Therefore, now the duration is 36 seconds plus 1 round per 2 levels up to level 19, and the casting speed is increased. Curse will also be affected if the spell is present in the game, such as with SCS and IWDification. For obvious reasons, if you're planning to use IWD spells, install after any mod that inserts them.

Finally, it fixes in passing a bug in Curse, which is that instead of decreasing the morale of enemies by 1, it increases it by 10 (the curse of overconfidence?). This will be addressed eventually by the fixpack, if installed.

**Component 130:** Standardize Hold Person's saving throw penalties

This component equalizes the saving throw penalty in the cleric version of Hold Person so it has the same as the wizard one, which is -1.

**Component 190:** Make Holy Power grant a THAC0 of 0 at max level and APR at the appropriate levels

Makes this spell achieve a THAC0 of 0 at max level, since the description clearly states "fighter of the same level."

And it further tightens the gap between the cleric and the fighter they want to emulate, getting 1/2 APR at levels 7 and 13. This APR does not stack with the one provided by Tenser's transformation (component 441). By default, non-fighter classes are the only ones getting the extra APR. This can be disabled in the configuration file.

**Component 230:** Make Cloak of Fear work as a temporary aura of fear, like in IWDEE

For the most part, I don't think this spell is worth memorizing. Now instead of being a one-off horror effect, it creates an "aura" that triggers once per round for 3 rounds, with the same specifications as the original spell.

This uses the same filename and the same effect as in IWDEE, and attempts to patch known spells that remove fear effects. Might need to be updated if new ways to remove fear are introduced.

**Component 240:** Make Goodberries generate six berries, each healing 2d4 instead of 1 point of damage and granting very slow regeneration for 8 hours

Conceptually, I think it's a cool spell for druids and rangers, and it might be a teensy bit useful perhaps for the beginning of BGEE, but generally not useful after that. Now it will heal 2d4 immediately and add a regeneration of 1 HP per turn for 20 turns. Now it also generates six berries because I like the idea of having enough to give one to every party member.

Additionally it allows stacks of 12 berries.

**Component 250:** Make Earthquake more effective and disable annoyances

Earthquake is generally very inconvenient to be cast at any point because of how it affects your whole party. This disables that behavior, and in case you don't enjoy feeling like casting it might give you a tiny seizure, it also disables the screen shake.

It also makes it more effective, by making the saves and damage decay less harshly:

1st round: vanilla, 6d6 damage, -6 save to avoid unconsciousness
2nd round: 5d6 damage, -4 save
3rd round: 4d6 damage, -2 save

Additionally, it fixes the likely incorrect probability of 3% to summon a hostile elemental, so it is 2% instead.

These three tweaks (party-friendly, no shake, effectiveness) are all optional, to honor the previous design that divided them in three components and can be disabled in the configuration file (all enabled by default).

**Component 260:** Make Negative Plane Protection's duration increase somewhat as you level up

It only lasts 30 seconds, which might be insufficient for fights with vampires. Since it's a very powerful effect, the increases in duration are moderate, one round per 2 levels after level 7, up to 11 rounds at level 19.

**Component 270:** Make Entangle's saving throws improve slightly at higher levels so it remains relevant for druids

Entangle saves are quite generous and, as such, very difficult to pull off at higher levels. It's such a stereotypical staple ability for druids that it feels wrong to leave druids without them because it becomes very quickly useless.

Therefore, it starts with a +2 bonus (from +3), which improves to +1 at level 5, 0 at level 10, -1 at level 15, and -2 at level 20.

**Component 280:** Make Poison (cleric spell) do half damage on a failed save (without poisoning them)

See component 100 for reasoning.

**Component 300:** Make Iron Skins cast as fast a Stoneskin

This component reduces the need to use them only in pre-fight buffing rituals, due to the extremely long casting time.

**Component 310:** Make Fire Seeds create more persistent seeds that do slightly more damage, with an enchantment of 2

Not enough seeds and too little damage. From 4 seeds that do 2d8 to 12 that do 3d8+5. The original is way too unremarkable for a level 6 spell. Additionally, the description will mention the fact that they are thrown with a +2 THAC0 bonus, and the seeds no longer bypass most physical protections due to an enchantment level of +6, so now they will be considered +2. Finally, they will persist for 5 turns instead of 3 (1 in-game hour).

**Component 320:** Make Nature's Beauty a bit more likely to kill humanoid enemies and make blinded enemies immune to it

Nature's beauty is the druidic Wail of the Banshee (only for humanoids anyway), but it is fairly unlikely to kill (especially considering druids cannot have a Necromancy bonus to spells—without save editing or special kits, that is). Save bonus is now +2 instead of +3.

Additionally, much like IWDEE, blinded enemies are not affected, which is to be expected given the nature of the spell.

**Component 330:** Make Cleric's level 7 version of confusion act like Chaos (-4 saving throw penalty)

It was always a fairly odd choice of level 7 spell. Some mods resolve this by moving it to lower levels. This is another way of resolving it. It will behave like Chaos, having a save penalty of -4 instead of -2.

**Component Armor Class** Make Armor of Faith also add a +2 AC bonus to make it useful at low levels

At the beginning of BGEE this spell is largely unremarkable and provides no protection of note to the cleric. Now it will at least provide a minor Armor Class bonus by default, which makes this spell the only one in vanilla BG that improves the Armor Class of the cleric other than Defensive Harmony (IIRC).

**Component 450:** Make healing spells other than Heal more worth using

Healing spells are infamously bad in BG/BG2, they heal too little for such a slow cast, and they don't improve with level. With this tweak:

- Cure Light Wounds: Heals 8 points plus 1 more point per level, up to 12
- Cure Moderate Wounds: Heals 13 points plus 2 points the first 2 levels, and 1 point on the next 2, up to 19 (requires IWDEE's spell present)
- Cure Medium Wounds: Heals 20 points plus 2 more points per level, up to 28
- Cure Serious Wounds: Heals 30 points plus 3 more points in the next two levels, 2 on the next two, up to 40
- Cure Critical Wounds: Heals 42 points plus 3 more points per level, up to 54
- Mass Cure: improves the power of this spell as a combat spell by improving the casting speed to 2 (from 5), and it improves the healing slightly from 1d8 + 1/level (max of 21-28) to 4d3 + 1/level (24-32)
- Mists of Eldath: Heals 40 points, regenerates 1 HP/s for 2 rounds and prevents poisoning for that ime

Also they will no longer be stopped by spell deflection.

All of these specific tweaks to these spells may be disabled or enabled in the config file.

**Component 461:** Make Bolt of Glory slightly better

This makes the Bolt of Glory generally more effective and rearranges the damage such that outsiders and undead are always ahead in potential damage compared to Prime Material creatures. Additionally, the description accurately notes other less-known characteristics of this spell, such as how it has no effect on celestial beings (planetars, devas, solars, aasimar) and how it bypasses Magic Resistance. Here's the damage distribution now:

- Prime Material Plane creatures: 4d4+6 magic damage
- Outsiders (except fiendish and celestials; elementals, genies, gith...): 6d6+6 magic damage
- Undead: 8d6+6 magic damage
- Fiendish outsiders (demons, devils, evil planetars, and fallen solars): 8d8+6

**Component 462:** Make Magical Stone bypass Magic Resistance and deal both magic and missile damage

Generally, this spell is pretty worthless and barely even worth thinking about. This improves its usability by making it bypass Magic Resistance, since it is essentially a pebble enchanted to be thrown at an enemy. Now it deals 1d4 missile damage and 1d4 magic damage.

**Component 463:** Make Dolorous Decay more powerful

This component improves the spell in the following ways:

- It causes 2d10 poison damage immediately on contact, as well as the usual 2-round slow effect
- Saving Throw against the poison effect is now -3
- The poison duration is now 1 full turn. The description will be more accurate
- For the poison's duration, target takes 8% more physical damage and gets a -2 penalty to THAC0, Damage, and Armor Class

**Component 464:** Make Wondrous Recall also recall wizard spells, and a higher number of them

This component allows cleric/mages to benefit more by allowing arcane spell recalling. The spell now functions as follows:

- Guarantees the recall of 2 level-1 wizard **and** cleric spells
- Up to 4 spells will be recalled additionally of up to level 5

However, the casting time is very high now (2 full rounds), which makes it less convenient to cast in the middle of combat and serves more as a recovery after combat spell, unless triggered by contingencies or sequencers. Bear in mind that if this spell is cast through scripts, the caster might have a lapse in judgment and stop the casting after only one round of casting to do something else, because it seems the engine doesn't ever expect casting times over just below 1 full round (i.e., casting speed of 9).

**Component 465:** Make Nature's Beauty blocked by True Sight

This component allows creatures that have True Sight or True Seeing active to automatically resist the effects of Nature's Beauty since the spell is effectively an illusion that kills and blinds.

**Component 466:** Make Shield of Archons absorb more spell levels (equivalent to cleric level)

This component improves this spell such that it has equal level of spell absorption as that of the cleric level (20 for BG, 30 for IWDEE).

**Component 467:** Make Sunray and False Dawn less OP and/or more balanced

Sun-based spells in the game are a bit unbalanced in my opinion. Let's start with the main problems I see with False Dawn:

- Casting speed of 9, compared to 4 in Sunray (very strange)
- 6d6 damage to undead for a level 6 spell (you might as well use Sunfire if available, it causes more damage, even if it doesn't cause Confusion for 12 seconds)

The solution I propose:

- Casting speed is now 4, equal to Sunray
- The damage is no longer defeated by magic damage resistance, and deals 5d6 fire damage and 5d6 magic damage (originally it was 6d6 fire damage)

And now with the problems of Sunray, which are similar to the problems I see with Disruption weapons (see components for mace of disruption):

- You can cheese the hell out of incredibly powerful creatures like liches easily. It's stupidly powerful, even if liches are cadaverous undead that are not actually sensitive to sunlight and cannot be destroyed by it.
- Exposure to sun can be stopped by magic damage resistance, which is stupid.

Solution:

- Blindness works as usual
- The damage to non-undead is 4d6 (half fire, half magic), blindness is still 1 turn as usual
- The damage inflicted is half fire, half radiant for undead (radiant cannot be resisted)
- Undead take 1d6 fire and radiant damage per level up to:
  - Vampires and Vampyres: 20d6 and must save vs. Spell or be utterly destroyed
  - Spectral undead: 15d6, and weakens them, causing Slow or Confusion for 2 rounds
  - Other cadaverous undead: 10d6, no other side effects

This solution follows the 2nd edition more closely, where only undead who are specifically sensitive to light may be destroyed by it. Spectral undead are generally weakened, but not destroyed, vampires, vampyres, and vampire spawn can be utterly destroyed, and other cadaverous undead aren't weakened or destroyed (including liches and demiliches -- the latter is immune to essentially all spells though, including Sunray).

**Component 468:** Rebalance Call Lightning's damage and scaling

This spell is quite powerful, up to 4 bolts dealing 20-160 (or half when saved) damage each. I am bothered it doesn't scale up to level 20, it stops at level 18 (dealing 20d8 for bolt), which is understandable for balance reasons (unlike other spells where it makes little sense like Glyph of Warding or Phantom Blade—wink wink I have components to fix that).

Therefore, I rebalanced it so it starts out dealing a bit less damage, and it builds up until 20 until it deals a similar amount of damage as vanilla at level 18. It will also bypass Magic Resistance because this spell is simply the result of a druid beckoning the skies to throw lightning bolts at something, not magical energy coming out from the druid. Specifics:

- It starts out dealing 7d6+7 electric damage (from 7d8)
- Every level thereafter up to level 18, the dice number thrown increases by 1 and the extra damage increases by 1. For example, at the next level, you would deal 8d6+8 electric damage (from 8d8).
- When reaching level 18, the maximum damage would be 20d6+20 electric damage (from 20d8), i.e., 40-140 vs. 18-144.
- After level 18, only the extra damage will increase, improving by 2 at level 19, and by 3 at level 20, ending with a maximum damage of 20d6+25 electric damage.
- Final comparison of maximum possible damage (with save failed and no resistances) at level 20: 45-145 vs. 20-160

In summary, higher minimum damage, more moderate scaling, bit lower maximum damage, and magic resistance has no effect.

Additionally, it is possible to make the lightning bolts look like they do in IWDEE, which is a bit more impressive than the vanilla version. Both the boost and the animation can be disabled in the configuration file, thus allowing you to install only the animation part, if you prefer.

**Component 501:** Make Chaotic Commands' duration extend up to level 20 instead of only 18

Simply fixes the weird inconsistency of some spells where they only scale up to 18, even if the only change is duration, which is this case.

**Component 505:** Make Repulse Undead more useful by causing damage and Slow when they're repulsed

This improves the spell in the following ways:

- Each round the effect triggers, it pushes creatures away in the same way
- Each time they're repulsed, they take 4 points of magic damage, and 4 points of "radiant" damage that is irresistible, even if they're immune to magic damage
- After being pushed, they suffer the effects of Slow for half a round.

None of these effects are subject to magic resistance though it's a level 5 effect, and thus liches are unaffected.

**Component 506:** Make Wall of Moonlight more effective

This spell is thematically beautiful but very underperforming, especially due to how it only works once per turn. This improves the spell in the following ways:

- The damage from the spell can now affect a target once per round instead of per turn. It's up to you how much you want to exploit the enemy's AI with this.
- The damage is the same, but the minimum damage has been increased: evil targets take 2d8+4 (from 2d10) magic damage, and undead take additionally 3d8+6. This damage is no longer resistable by magic resistance
- The spell also causes enemies blindness for 1 round, with a 40% chance of pushing them back away **from the original caster** and knocking them prone for half a round, unless they save vs. Spell. This effect is not resistable by magic resistance either.

**Component 507:** Make Aid a party buff and optionally disable the character glow

This makes the spell generally more useful by making it a party buff. To avoid issues with combat scripts, the targetting is vanilla, that is, Aid is cast on a target, and then it spreads to nearby targets. Also, for convenience, the range of the spell is no longer melee, but equivalent to the range of the spell Poison.

Optionally, the character glow can be disabled in the configuration file.

**Component 508:** Make Restoration-type spells restore stat draining and make Greater version an area of effect spell

Self-explanatory, plus it makes sense that these spells should be able to restore the damage done by these creatures. Currently there is no way to cure this other than by waiting. The Greater version of the spell, in its Wish form, will no longer cause fatigue as well.

Optionally, it can overhaul the greater restoration spell so it's more worth the slot (with some disadvantages, for balance):

- It spreads on impact, granting the effects to every party member except the priest
- The priest is only healed by half their total health.
- Still causes deep fatigue on the caster, and worsens the casting speed, Thac0, damage, and armor class of the priest by 2 for 2 turns. Their movement speed is also reduced by 35%. Both these effects can be removed by Unfailing Endurance.
- The casting duration is tripled (9 from 3)

**Component 509:** Make Silence 15ft Radius party-friendly

Self-explanatory. This will make it easier to manage.

**Component 510:** Make Righteous Wrath of the Faithful only cause some fatigue, instead of guaranteeing it, similar to Haste and restore the attack damage bonus

The attack damage bonus is missing for same-alignment allies, unlike what the description says. This fixes that. Additionally, it only causes 4 points of fatigue, similar to Haste, so it's a bit less inconvenient to use. Finally, this fatigue can no longer be dispelled, same as Haste, which is a likely bug not yet addressed by the devs or the fixpack.

**Component 511:** Make Unfailing Endurance an area spell that cures the fatigue of the whole party

This simply makes the spell more useful and worth the memorization slot.

**Component 512:** Make Alicorn Lance more effective by increasing damage by 1 dice every 2 levels, up to 8d6

Alicorn Lance is not powerful and doesn't scale well. This will make it feasible at higher levels.

</details>

---

<details>

<summary><b>Class/Kit-related Tweaks</b></summary>

**Component 2100:** Make Sun Soul Ray and Sun Soulbeam Sun Soul Monks scale further and/or do more damage to undead

- Sun Soul Ray: The maximum damage normally grows up to 6d8 at level 12, adding 6 damage to undead, which is a very small bonus that doesn't scale. Now this bonus against undead increases by 2 points every time the power is upgraded.
- Sun Soulbeam: The difference in damage between non-undead and undead in vanilla is 9d6 vs. 9d6+3. It's really not a meaningful difference. Therefore, the damage to undead will now be 12d6+3, i.e., up to 75 damage instead of 57, which I think is okay for a once-per-day ability anyway.

Both tweaks can be enabled or disabled in the configuration file.

**Component 360:** Make Shaman's unique spells more powerful

- Ethereal Retribution: Three rounds of 3d8 for a Quest/level 10 spell is hilariously bad, despite the possibility of sapping some Strength with a save vs. Spell that doesn't even have a penalty. Now it does 6d6 magic damage per round at least, and the Strength-sapping effect has a -2 penalty now.
- Writhing Fog: This improves this spell by making it cause 1d3+1 cold damage, whose dice size improves by 1 every level after level 3, until it becomes 1d10+1. The Slow effect, additionally, triggers with a 50% chance, not a 20% chance.
- Spirit Fire: This makes the damage of this spell scale better: it deals 1d4+1/level, up to 12d4+12 magic damage (24-60 damage). Additionally, the 33% Doom effect no longer requires a saving throw, it's based on probability only.
- Spiritual Clarity: Induces more clarity, removing berserk and intoxication too. Additionally, it improves the speed of the spell from 9 to 6.

All these tweaks can be enabled or disabled in the configuration file.

**Component 2120:** Make War Cry inflict fear with a -2 Saving Throw penalty and rally the allies

This increases the chances of causing panic on enemies. Additionally, since panic is usually not liked because it's difficult and tedious to attack running targets, it also halves their movement speed by 50%, which makes it far less inconvenient.

The war cry also rallies the allies now, causing the following effects:

- The warrior and their allies are healed by 12 HP, their morale is restored to their maximum, preventing and removing morale-based panic, and for 3 rounds, they get a +2 bonus to THAC0 and Damage.
- The warrior also gets for the same duration a +5% bonus chance to critically hit.
- None of these effects stack with themselves

This should make this HLA more generally useful no matter the situation and perhaps next time it won't be an automatic skip.

**Component 2130:** Make some Thief HLAs more effective

- Spike trap: Because it's rather strange that it does magic damage and makes you wonder why the thief would have the ability to do this, it now deals heavy piercing damage. (To be fair, the same could be said for the Time Stop trap). Rogue Rebalancing, SCS, and ToF also do this.
- Exploding trap: I feel like 10d6, which is the same damage of the Fireball spell at max level, is very low for an HLA, so now it's 15d6. Also, the knockdown effect doesn't admit a saving throw anymore (undocumented in vanilla somehow!).
- Assassination: This improves this power in the following ways:
  - Lasts 7 seconds, so it can forgive an extra second of delay to take advantage of the backstab-every-hit effect
  - It disables critical misses for the duration, and one round after
  - It improves critical hit chances by +10% for the duration, and one round after
  - For single-classed thieves, there are more benefits: +2 Damage, +2 THAC0, +1 APR, net +15% critical hit chance improvement
  - Benefits other than backstabbing every hit will last one round longer (that is, 7 seconds + 1 round, aka 13 seconds). This won't stack if there's more than one casting of Assassination available.
  - Overall, this will make the power less likely to be a waste by removing critical misses, increasing the chances of critical hits, which benefits the character even when facing a foe immune to backstabs, and rewarding specialization of Thieves to make them more combat ready.
- Avoid Death: This improves this ability such that it prevents rogues from dying from Health damage for 3 seconds, and all saving throws succeed as well. This essentially makes the ability an "panic button" that you can select to survive most things during those three seconds that can be saved against, including physical damage. It's a small timeframe, but I think it's long enough to be useful, and short enough to not be overpowered. Other than those 3 seconds, the ability functions as normal. This additionally documents in the description the fact that it also protects against level drain, which is missing in the original description.

**Component 2150:** Make selected HLAS unable to be breached

I do not find abilities that tap into "inner strength" or pure skill-based physical abilities a candidate for breach. If they're not dispellable, then they're not breachable either. What exactly is the spell supposedly dispelling?

One concern could be that for balance purposes, some of these should be breachable, but I do not believe this is warranted in this case.

The following abilities are no longer breachable:

- **Evasion and Improved Evasion:** You're concentrating on your epic dodging skills as a rogue, using your training and experience. Can you "breach" reflexes and experience? NO!
- **Assassination:** You're using your training in hitting on weak points unexpectedly in a superior manner, exerting such an amazing ability, you always succeed, even if the target is not hit unexpectedly. Can you breach assassination skills? NO!
- **Avoid Death:** You're using your training and nigh-preternatural roguish luck to escape terrible odds and stubbornly survive. Can you breach luck and survival skills? NO!
- **Hardiness:** The warrior is concentrating on defending, bearing blows and the pain, to survive the punishment inflicted upon them, using their training and experience. Same as before.
- **Resist Magic:** Same as Hardiness. This one I find harder to rationalize in an earthly way, but regardless, it's a warrior-borne ability, so I see no need to effectively consider it magical (aka breachable).

Side note: things like Critical Strike and Power Attack are already not breachable. It's a nonsensical inconsistency. If it's not mentioned here but seems like my argument would apply, it means it's already not breachable.

**Component 2160:** Make Quivering Palm slightly more powerful at high levels

I really dislike things that scale poorly or not at all. This makes Quivering Palm saving throw penalty improve to -1 at level 16 and to -2 at level 24. Additionally, the effect lasts 7 seconds, up from 5 seconds, to give more leeway.

**Component 2170:** Make the THAC0 progression of Thieves better and more streamlined, so they improve up to 6, like clerics

Among many of the manifestations of the Baldur's Gate series' undying hatred for thieves is that their THAC0 sucks. A LOT. Barely better than wizards. This improves the progression such that it can reach 6, like clerics. The progression per level follows this sequence: 20-19-19-18-17-17-16-15-15-14-13-13-12-11-11-10-9-9-8-7-7-6.

This component will update the thac0 of Thieves and Mage/Thieves in the game depending on their level, but only if it's not better already. This will ignore the few dual-classed NPCs in the game. Regardless, if they're joinable, their thac0 will update appropriately upon leveling up.

**Component 2171** Fix Swashbuckler's incorrect THAC0 when Thief THAC0 improvement is installed (only use if no Swashbuckler overhaul is installed!)

Normally, vanilla Swashbuckler gets to a THAC0 level of 2, because every 5 levels, it gets a +1 bonus to both thac0 and damage inflicted. This hinges on the assumption that the maximum thac0 attainable is 10. Changing the maximum THAC0 improvement to 6 means they would achieve, inappropriately, -2 **base** THAC0. This component addresses this inconsistency.

Therefore, at levels 35 and 40, the swashbuckler will not get thac0 bonuses, only the damage bonus, which should allow them to reach a THAC0 of 0 while still retaining the remaining damage bonuses (+8 in total). This way they will still be more distinguishable from regular thieves despite the THAC0 improvement and generally more useful. If other mods that overhaul the swashbuckler exist, you may request compatibility, as long as this causes actual problems.

**Component 2180:** Make the THAC0 progression of Bards better and more streamlined, so they improve up to 6, like clerics

Refer to component 2170 for reasons. Applies the same bonus to Bards, who also have had their power sucked away by the game.

This component will update the thac0 of Bards in the game depending on their level, but only if it's not better already.

**Component 2190:** Make Poison Weapon improve a couple of times more every 4 levels (level 17, and 21)

This makes Poison Weapon more powerful and reliable at high levels. At level 17, the save penalty improves to -3, lasts for 27 seconds, and the immediate poison damage increases to 8. At level 21, the save penalty improves to -4, lasts for 30 seconds, and the immediate poison damage increases to 10.

Don't use this if you're using another overhaul for this ability, or an Assassin or Blackguard overhaul that changes this ability. If they use a separate ability and leave the original intact, this component will change the original, which might or might not be useful in your game—it all depends on whether there's any other class, kit, or NPC left that might use it and are high-level enough to benefit.

**Component 2200:** Allow Blackguards to perform backstabs as if they had a 2x backstab multiplier

Self explanatory. It depends on the spell granting negative plane protection. As such, if different blackguard variants exist, as long as they use the same spell that grants them this passive feature, they will be affected by this.

Additionally, it allows a certain enemy blackguard in SoD to perform backstabs on you if the conditions are met, even if a component in this mod is reducing the backstab damage to their weapon.

It will also patch any blackguards in the game such that they are guaranteed to be able to backstab.

**Component 3500:** Make Shadowstep impossible to use while in the Shadow Plane

This seems more a bugfix than a tweak, but it bothers me and it's not tackled anywhere else so here it is. No one can cast Shadowstep during those sequences, since those abilities rely on a brief plane shift to the Prime's parallel plane: the Plane of Shadow. This needs to be patched manually, and only the following areas are targetted:

- Rasaad's ToB quest areas in the SP
- Lava's Shade of the Sword Coast SP in Gnoll Stronghold

This is compatible with my Shadowdancer overhaul.

**Component 2230:** Make RR's Crippling strike no longer able to increase Strength; instead it reduces STR to half its current value

RR's implementation of Crippling Strike can actually increase Strength if dealing with something that has 9 strength or less, and the lower the strength the less benefit you get. I changed this by making it instead reduce the strength by half its current value, which allows it to generally stay relevant no matter what you face.

**Component 2231:** Give Dragon Disciples (Red) automatic access to all fire-based wizard spells and optionally increase fire damage by 5%

This component gives Red Dragon Disciples access to all fire-based wizard spells by default. Additionally, it increases the damage of all fire-based spells by 5% for the Red Dragon Disciple. The latter is optional and can be disabled in the configuration file.

Fair warning: the spell selection when creating the dragon disciple WILL NOT tell you that the spells are available already or otherwise offer any feedback. Just make sure if you use this component that you know that the spells are available already.

Lastly, this will patch any dragon disciples that may exist in the game, adding these spells to their repertoire. Currently it only supports the dragon disciples that exist in vanilla (even if they were overhauled). Support for specific colors and metals of dragon disciple, such as the ones offered by ToF, might be added in the future. Most likely I only need to know the kit id of those kits to offer compatibility.

**Component 2232** Make Called Shot directly increase ranged weapon damage, instead of adding 2 damage after the initial hit

Self explanatory. Generally speaking it's more powerful to directly increase the base damage.

</details>

---

<details>

<summary><b>Creature Tweaks</b></summary>

**Component 3010:** Make inappropriately aligned creatures in BG2 more correct

This is a more correct alignment revision compared to Oversight's component, specifically aimed at the state of this problem in the latest version of BG2EE. A huge chunk of the alignment corrections in that component no longer apply, and some of them differ from BeamDog's correction. I left BD's corrections as long as they made sense, and I did not include edits that made no sense to me. For example:

- Making Cowled Enforcers evil
- Making some Amnian Guards evil
- Making the Spectator beholder evil. They're supposed to be Lawful Neutral. BD's corrections show that.
- I didn't make Melissan evil before the plot reveals her nature. It defeats the purpose of the deception and the twist.

I also added other creatures that I spotted that seem to be problematic too. For example, the skin dancer version of Rejiek is... Neutral Good. Ooookay.

It preserves the most egregious fixes for errors that still exist. Like Tolgerias being Chaotic Good. Yeah, right.

**Component 3020:** Make summoned demons grant XP to the party when they kill something

This makes summoned demons grant party XP. It may not catch all instances of deaths (when killed in groups with fireballs and things like that) because their combat script might not be able to cope with it. Obviously, don't install with fiend overhauls that add this.

Also, pay attention to any mods that modify the behavior of summoned demons, especially if they replace the script. Might or might not work. Please test and report.

**Component 3030:** Make Devas hasted, same as Planetars

I was always annoyed at how immensely more powerful Planetars are compared to Devas. Haste is just too good not to use. Devas will be permanently hasted now, same as planetars.

**Component 3040:** Make the planetar more balanced and allow it to grant allies passive partial spell invulnerability

Planetars have a 25% of dealing a vorpal hit with a -4 save penalty, which is even more powerful than the silver sword. It's a common source of cheese. The following changes are in:

- Weapon are considered +5 for the purposes of what they can hit, and THAC0 bonus (weapon damage unchanged)
- Weapon no longer vorpal, and the chances of dispel lowered to 20%
- Dispel on hit level is now 25 instead of 10. Level 10 is unlikely to ever be useful by the time you get to summon planetars, and it matches their levels.
- Deals on hit +2 cold and fire damage
- Fiends and celestials take 4 divine (irresistible) damage on a successful hit
- Inspired by NWN2, it also grants the planetar partial invulnerability to magic as per the Minor Globe of Invulnerability spell. This effect is granted to all allies near the planetar. That is, while the planetar is around, your party is immune to spell levels from 1 to 3.

**Component 3050:** Make the Balor's vorpal attack not guaranteed to succeed but be affected by a saving throw too

I don't like being killed without any reasonable chance to defend against the killing blow other than luck or Death Ward. Especially with demons, who are very capricious about who to target. The Balor's vorpal attack has a 16% chance of killing anything forever (no resurrection allowed), and only by equipping something that grants immunity against death effects, or using Death Ward, can you avoid it. Therefore:

- Probability of triggering adequately brought down to 15% chance, as intended
- It still forces a Save vs. Death at -4 to trigger (this penalty can be overridden in the config file).

**Component 3060:** Make Mencar Pebblecrusher a fair fighter for his level

I hate his guts. He's a level 14 fighter with 200 health and 4.5 Attacks per round. This makes him fair by simply:

- Removing artificial health for a fighter of his level. Health will now be 105 plus the constitution bonus, which unless a mod changes it, it will be 105 + 45 = 150
- Removes the extra APR, so he will have 2.5 APR, as expected for a level 14 fighter according to his proficiency and fighter levels. This of course may vary if mods change the fighter classes

**Component 3070:** Make lions and other cat creatures not slow as molasses

Lion and other feline animations are stupidly slow. I don't know why they didn't patch this along with bears. You could outrun them with a snail. This component makes them move at a more reasonable speed. Essentially, it will search for creatures with a cat-like animation and if they don't have a moment rate modifier already, it adds a movement rate 2 opcode modifier of 6, which makes them move at a reasonably fast pace.

**Component 3080:** Make creature on-hit effects that should be natural not behave as magical attacks that can be dispelled or magically resisted

There are several creatures whose effects when they hit don't seem to make much sense to treat as magical effects that can be resisted by magic resistance or dispelled with Dispel Magic. This component makes the following changes:

- Ghouls, Ghasts, Liches, Shadow Fiends, and Vampiric Wolves: Their paralysis can no longer be dispelled or resisted by magic resistance. It's a natural effect and thus may only be resisted with saving throws and removed with spells such as Remove Paralysis or Free Action.
- Spirit Trolls: their strength sapping is not considered magical anymore, same as other shadow creatures and wraith spiders. It doesn't seem to make sense that it would be magical compared to other shadows. Therefore it may only he cured with Restoration spells or by resting / waiting.
- Carrion Crawlers: The paralysis is no longer considered magical. In fact, in the lore, it's not magical at all, it's a paralytic toxin spread with their tentacles. There's even a paralytic poison made from their brain juices.

**Component 3090:** Make Shadow creatures slightly harder to damage, and make strength sapping last much longer so it's an actual inconvenience

This component makes the following changes:

- All creatures of the shadow race will have at least a 30% physical damage resistance
- And a +2 bonus to their Armor Class, whatever that is
- Strength sapping from shadows, spirit trolls, spider wraiths and the like always lasts for 8 hours, making it more than an inconvenience. It's a real problem now if you get hit too often.

**Component 3100:** Make Beetles more resistant to non-crushing weapons

This component makes the beetles generally more resistant to anything that doesn't crush them. Arrows and bolts bounce off more often, and attempts to slash or pierce their caparaces are not very effective. Their resistances follow this pattern:

- 60% resistance to missile damage, +3 Armor class bonus modifier
- 45% resistance to slashing damage, +2 Armor class bonus modifier
- 30% resistance to piercing damage, +1 Armor class bonus modifier
- No resistance to crushing damage
- Armor class vs. missile damage gets a -2 modifier

</details>

---

<details>

<summary><b>End-of-install-order components </b></summary>

**Component 1531:** Make all divination spells and a few spells ignore magic resistance, where it makes sense

This component makes divination spells that are affected by Magic Resistance (which seems odd) lose that restriction and also cannot be dispelled by Dispel Magic, unless noted. Affected spells include: Detect Evil, Know Alignment.

Additionally, a few spells also bypass magic resistance, because it makes sense in my judgment. My rationale:

- Stinking Cloud: It's a fart cloud that smells so awful, it can make you lose consciousness. Puh-lease
- Entangle, Grease & Web (and other web spells used by creatures): It's physical webs, grease, and animated vegetation, so I think it makes sense
- Summon Cow: Because it's a cow falling on you, duh
- Glitterdust: It's just a ton of conjured sparkly dust that blinds and makes enemies visible. Can be dispelled
- Magical Stone: because you're just hurling a stone magically
- Call Lightning: because the druid is beckoning the skies to shoot lightning onto your foes, which means it's not exactly the same as Lightning Bolt, which is generated directly from the wizard
- Summon Insects/Insect Plague/Creeping Doom: It's conjured insects doing damage. Can be dispelled though.
- Nature's Beauty: You're blinding or killing others by the shock, which is something that is the result of plain perception, so I don't think it makes much sense to be affected by magic resistance
- Storm of Vengeance: Because it's a spell that causes the skies and the earth to go crazy. It might make it more useful in some instances, and not just as a way to kill <=8 HD or to interrupt spellcasters

Overall this should make all these spells more usable throughout the trilogy of games, especially against enemies such as drow, who have a very high chance of resisting magic.

Please bear in mind that this component should be installed after tweaks that affect these spells, especially if they add new effects to them; otherwise, this tweak will only work partially, and inconsistent results could ensue. For this reason, this component is not included as part of the component that installs the whole group of components.

**Component 1532:** Make all bracers, belts and boots grant +1 HP, so unenchanted variants aren't just garbage

I do not like gear that you can wear without any effect whatsoever. I can live with rings that don't do that, because there's no reasonable benefit to just wearing a ring. Therefore, wearing unenchanted belts, boots, and bracers will grant the wearer +1 HP which I think is reasonable enough, and it doesn't change balance much.

For consistency, all of the enchanted belts, boots and bracers will also grant this. The unenchanted items will still be a bottom-of-the-barrel choice, but at least they don't exist just as unglorified decoration and will provide some use, especially at the beginning of BGEE (and IWDEE?), which should encourage filling all the gear slots.

Side effect to take note: if a joinable character joins while having any such item equipped, you must re-equip it in order to benefit from this effect, as the newly available effect will not be re-evaluated otherwise.

WARNING: Install this component DEAD LAST after ANY mod that modifies items, including any other component in this mod that modifies such items. When in doubt, just make it your last.

**Component 1548:** Make Void-weapons strength-sapping not affect undead, and able to critically hit to deal double damage

Void-weapons are supposed to be the bane of the living, not the dead. Therefore, the on-equip strength-sapping effect will no longer affect undead (such as with Hexxat).

Additionally, the weapons will be able to critically hit, dealing double damage, which is a feature that was missing from the original implementation. That is, on a critical hit they will deal double their magic damage, similar to other weapons, instead of doing nothing.

This component should be installed after any other tweak that may change void weapons, or their weapon groups in general. Note that my backstab multiplier tweak will not affect the voidsword, so you can install it before or after this component, it doesn't matter, as backstab multipliers don't apply to those weapons (for now wink wink).

**Component 1360:** Make Light Crossbows get +1/2 more APR

Just a small bonus to make it more interesting and different compared to heavy crossbows. It's not too far-fetched anyway to think smaller crossbows can be reloaded faster. This will affect crossbows that have an APR bonus already, i.e., 1/2 APR will be added.

</details>

---

<div align="center">

## [Back to top](#components)

</div>
