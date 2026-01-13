# Components

<details>

<summary>

## General

</summary>

### Make conjured magical weapons grant 2 APR by default (120) (IWDEE BGEE BG2EE EET)

These spells promise power, but your little wizard is not a good fighter at all. Thus, by default, they grant 2 APR if the caster has no fighter levels (otherwise, 1.5).

### Make "Symbol, X" spells slightly more powerful and rebalance the enemy versions (443) (IWDEE BGEE BG2EE EET)

The following changes are enabled by default but can be configured individually:

- **Symbol, Death**: Since it's difficult to know an enemy's exact health, this spell is often wasted on targets with more than 60 HP. This allows the spell to affect targets above the 60 HP threshold, but with a +6 bonus to their saves.
- **Symbol, Pain**: No longer allows a saving throw. It also reduces the target's damage output by 10%, and its duration is reduced from 11 turns to a more reasonable 11 rounds.
- **Nerf enemy symbol spells**: Enemy-cast Symbol spells now have the same duration as player-cast versions, removing an artificial disparity.

### Make some weapon categories suffer penalties to backstabbing for balance (1120) (IWDEE BGEE BG2EE EET)

This component reduces the backstab multiplier for weapons that are ill-suited for backstabbing, such as the Staff of the Ram. The tweak is fully configurable, allowing you to choose which weapon categories are affected and their respective penalty levels. The default penalties are:

- **No penalty**: Daggers, Clubs, Ninjatôs, Short Swords, and Rapiers from my Item Pack.
- **-1 multiplier**: Long Swords, Scimitars, and Katanas, and Estocs from my Item Pack.
- **-2 multiplier**: Staves.

Other weapon types are not affected by default, as they cannot normally be used for backstabbing.

**Note**: Due to an engine limitation, penalties from dual-wielding affected weapons will stack. For example, an Assassin with a x7 backstab multiplier wielding two long swords (-1 penalty each) will have their multiplier reduced to x5.

### Make flails and morning stars always inflict some piercing damage (1121) (IWDEE BGEE BG2EE EET)

Both types of weapons have piercing parts; that's why. Enchantment level:

- +0, +1 ⇾ 1 point of piercing damage
- 2+, +3 ⇾ 1d2 points of piercing damage
- +4, +5 ⇾ 1d2+1 points of piercing damage
- +6 ⇾ 1d3+1 points of piercing damage

### Make some weapon categories adjust their baseline damage (1150) (IWDEE BGEE BG2EE EET)

This component adjusts the base damage of several weapon categories to make them more distinct or viable. All changes are enabled by default but can be configured individually.

- **Spears**: Base damage is increased from 1d6 to 1d8. This also affects javelins from Project Javelin, increasing their damage die thrown by 2.
- **War Hammers**: Base damage is increased from 1d4+1 to 1d5+1. This does not affect special hammers like `Crom Faeyr` that have a 2d4 base damage.
- **Ninjatôs, Wakizashis, and Katanas**: Kara-Turan blades now deal 2d4 (Ninjatôs/Wakizashis) and 2d5 (Katanas) base damage, increasing their minimum damage. Additionally, Wakizashis become piercing/slashing weapons (this can be configured separately).
- **Bastard Swords**: Maximum damage is increased from 2d4 to 1d8+1, placing them in between long swords and two-handed swords in terms of damage.
- **Two-handed Swords**: Base damage is now 1d9+1, increasing minimum damage, and those that deal 1d12 will deal 2d6, raising the minimum damage for all by 1.

### Make axes or halberds deal extra damage on critical hits (1361) (IWDEE BGEE BG2EE EET)

Functionally, the difference between axes and swords is their Speed Factor. To create a more meaningful distinction, this component gives axes and halberds a bonus to critical hit damage, inspired by their implementation in *NWN*.

On a critical hit, affected weapons deal extra damage in a separate damage tick:

- **One-handed Axes**: 1d8 + Enchantment
- **Two-handed Axes & Halberds**: 1d10 + Enchantment
- **Throwing Axes**: 1d6 + Enchantment

For example, a critical hit with a +3 one-handed axe that deals 20 damage will inflict an additional 1d8+3 damage, for a total of 24-31. This component can be configured to affect axes and halberds independently.

### Make maces, clubs, and hammers damage the target's AC temporarily (1362) (IWDEE BGEE BG2EE EET)

This component introduces the concept that blunt weapons are effective at damaging armor. While most armors in the game already have penalties against blunt weapons, this tweak extends a similar effect to creatures with natural armor.

Maces, clubs, and hammers will apply a non-stacking Armor Class debuff on hit. The effect lasts for 2 rounds, is refreshed with each hit, and does not allow a saving throw. More powerful debuffs will always override weaker ones.

- **+0, +1**: -1 AC
- **+2, +3**: -2 AC
- **+4, +5**: -3 AC
- **+6**: -4 AC

This provides a tactical advantage when using blunt weapons, but be aware that enemies wielding these weapons will also benefit from this effect.

An optional setting in the configuration file can restrict this effect to only apply to creatures without wearable armor (e.g., dragons, umber hulks). This option is **disabled** by default.

### Make darts faster and with longer range (1435) (IWDEE BGEE BG2EE EET)

Self-explanatory. It's the lightest weapon, realistically. It also makes them slightly less inconvenient by making them have a range equivalent to those of arrows and bolts.

### Make daggers get extra features to compensate for low damage (1440) (IWDEE BGEE BG2EE EET)

Daggers are often overlooked due to their low damage output. This component aims to make them more appealing by adding the following traits:

- **+1 THAC0**: A Dagger +2 will grant a +3 THAC0 bonus.
- **-2 Speed Factor**: Most daggers will have a Speed Factor of 0.
- **+5% Critical Hit Chance**: This bonus stacks with any existing critical chance on the dagger.
- **Deadly Critical Hits**: On a critical hit, daggers deal extra damage in a second damage tick. The formula for this bonus damage is `2d(Max_Weapon_Damage) + Max_Weapon_Damage`. For example, a critical hit with a Dagger +2 that deals 16 damage will inflict an additional 2d6+6 (8-18) damage, for a total of 24-34 damage.
- **Kukris** from my **Item Pack** are affected differently:
  - **-1 Speed Factor**
  - **No THAC0 bonus**
  - **Base damage increased to 1d4+1** instead of an extra critical hit chance.
  - **Reduced critical hit bonus damage**, with the formula `1d(Max_Weapon_Damage) + Max_Weapon_Damage`. For example, a critical hit with a kukri +2 that deals 16 damage will inflict an additional 1d6+6 (7-12) damage, for a total of 23-28 damage.

**Exceptions**: Oversized daggers like Grave Binder are not affected. Other unusual daggers are handled on a case-by-case basis.

### Make thief weapons able to do 'Finesse' damage when used by pure rogues (1450) (IWDEE BGEE BG2EE EET)

This component aims to make single-classed Thieves (and optionally Bards) more effective with certain weapons by introducing a "Finesse" mechanic, inspired by *NWN*.

When wielding an eligible weapon, they have a chance on each attack to deal extra damage. This can be thought of as a minor sneak attack or a dirty fighting trick that triggers occasionally, helping to narrow the power gap between pure rogues and their multiclassed counterparts.

The chance to trigger Finesse depends on the weapon type and its enchantment level (+2% for odd enchantment levels, +1% for even). The bonus damage is based on the weapon's base damage and is applied additively.

- **6-15% Chance**: **Long Swords** (1d7+bonus), **Staves** (1d5+bonus).
- **10-19% Chance**: **Katanas** (1d9+bonus), **Scimitars** (1d7+bonus), **Estocs** (ZS_ItemPack, 1d6+2+bonus)
- **16-25% Chance**: **Ninjatôs / Wakizashis** (1d7+bonus), **Slings** (1d3+bonus)
- **21-30% Chance**: **Rapiers** (ZS_ItemPack, 1d5+bonus)
- **26-35% Chance**: **Short Swords** (1d5+bonus), **Clubs** (1d5+bonus)
- **31-40% Chance**: **Bows** (1d5), **Crossbows** (1d7)
- **36-45% Chance**: **Kukris** (ZS_ItemPack, 1d3+bonus)
- **43-52% Chance**: **Daggers** (1d3+bonus), **Darts** (2+bonus divided by 2)

As a counterbalance, the target can make a Save vs. Breath to take only half of the finesse damage. The saving throw is modified by the wielder's Dexterity and the weapon's enchantment level. For example, a Long Sword +0 at a certain DEX might force a save at +2, while a Long Sword +3 would force a save at -1. Dexterity bonuses may improve this save penalty by up to -6 at 24 DEX.

- **+7 to 0**: Katanas
- **+6 to -1**: Long Swords, Scimitars, Estocs (ZS_ItemPack)
- **+5 to -2**: Ninjatôs, Wakizashis
- **+4 to -3**: Short Swords, Slings, Clubs, Staves, Rapiers (ZS_ItemPack)
- **+3 to -4**: Darts, Shurikens (ZS_ItemPack), Bows, Crossbows, Daggers, Kukris (ZS_ItemPack)

This component does not automatically account for special weapons with unusual damage effects (e.g., Voidsword +3, which deals only magic damage). These are handled manually. Currently, supported items include:

- Voidsword, Void-arrows, Void-bullets (SoD/BG2)
- Fierce Swirl +2 (Shades of the Sword Coast)

The following items are intentionally skipped:

- Arrows of Antimagic (SoD)
- Arrows of Detonation
- Broken Spirit Arrow +1 (The Calling)

All weapon categories are enabled by default but can be individually disabled in the configuration file.

### Make some wands more balanced (1533) (IWDEE BGEE BG2EE EET)

- Wand of Magic Missiles: it casts 3 missiles, not 1, which makes it generally useful for the majority of both games, same as casting from a scroll. A single missile is quite often a missed opportunity for an action during your round
- Wand of Fear: Fear effect duration reduced from 15 rounds to 1 turn, undocumented +2 save bonus is eliminated, and as such it will be as effective as the Horror spell or the War Cry HLA (sad, sad, vanilla HLA)
- Wand of Paralysis effect reduced from 1 turn to 7 rounds
- Wand of Sleep: description now notes that it only works for up to 4 HD monsters
- To be continued

### Make some potions more balanced or useful (1534) (IWDEE BGEE BG2EE EET)

This component includes two optional, universal changes: making all potions usable by any class and preventing potions from stacking with themselves. Both are enabled by default and can be configured.

- **Potion of Icedust**: Grants +75% Fire Resistance for 3 rounds, instead of immunity for 1 round.
- **Potion of Healing**: Heals 12 HP instead of 9.
- **Potion of Heroism**: Now usable by any class. Grants immunity to morale failure, +1 damage, and a flat +2 THAC0 bonus (instead of a percentage-based one).
- **Potion of Invulnerability**: Now usable by any class and grants an additional +10% Magic Resistance.
- **Elixir of Health**: Heals 20 HP (up from 10) and grants immunity to being poisoned for 10 seconds (does not affect direct poison damage).
- **Potion of Perception**: Now grants a +40% bonus to Find Traps and Detect Illusions, and a +1 bonus to Armor class, THAC0, and all saving throws.
- **Potion of Power**: Now usable by any class. Grants immunity to morale failure, improves all thieving skills, grants +1 Casting Speed, +10% to all damage output, and a flat +4 THAC0 bonus.
- **Potion of Regeneration**: Heals 3 HP per round for 3 turns (up from 2 HP/round for 2 turns).
- **CHARNAME'S Tankard**: Heals 27 HP (3/day) and grants +1 Strength and Constitution for 1 turn.
- **All Strength Potions**: Usable by any class (this is a separate option from the universal one).

### Make poison-curing spells cast instantly & protect vs. poison briefly (1537) (IWDEE BGEE BG2EE EET)

Self-explanatory. It's quite a pain when it's something that is supposed to cut a poison's effect short, but it's almost guaranteed to be interrupted for the caster unless you're extremely precise with casting timing (and you're lucky). This does not fully prevent interruption, but it makes timing the cast far easier.

Additionally, these spells provide a very short immunity to poison effects after ingestion. Half a round for Slow Poison, and 1 round for Neutralize Poison.

### Make jewelry more valuable (1538) (IWDEE BGEE BG2EE EET)

This improves the value of all necklaces, rings, and gems that are not magical in nature (no passive or active traits of any sort). The component increases the value of those by 50% by default. However, this is fully customizable. Check the ZSTweaks/configurations/**zstweaks.prefs.txt** file if you want to customize this.

### Make more classes able to use scrolls freely (1539) (IWDEE BGEE BG2EE EET)

This component removes class restrictions from scrolls, allowing non-spellcasters to use them. It offers several options:

- **Everyone can use scrolls**: Any character with at least 9 Intelligence can use any scroll.
- **Everyone can use scrolls (with stat requirements)**: Any character can use scrolls, but doing so requires an attribute score of `8 + Spell Level`. Wizard scrolls require Intelligence, and priest scrolls require Wisdom. This restriction also applies to classes that could normally use scrolls.
- **Bards and Thieves can use scrolls**: Only Bards and Thieves gain the ability to use any scroll, requiring at least 9 Intelligence. This reflects their nature as resourceful jack-of-all-trades.
- **Bards and Thieves can use scrolls (with stat requirements)**: Same as the above, but with the attribute requirements (`8 + Spell Level` in INT/WIS).

This component identifies a scroll as a "priest scroll" if it is usable by any priest class; otherwise, it is considered a "wizard scroll."

### Make scrolls always cast at the character level regardless of class (1544) (IWDEE BGEE BG2EE EET)

This component will process all existing scrolls in the game and make sure they're cast at character level, no matter what your class is. So if you have a level 16 Thief that can use scrolls by whatever means, they will be able to cast it at level 16. This pairs well with the previous component and greatly increases the usability of scrolls as a general resource for the whole party. I would recommend enforcing stat requirements too to make it fairer.

### Make mage robes without cloaks cloaked (1650) (IWDEE BGEE BG2EE EET)

I've never liked the look of robes without cloaks or without hoods (there's really nothing to look at). Since the hooded version is more involved and many may prefer to see the character's head, the cloaked look is the default one.

### Make vorpal hits fail if target has stoneskins (1541) (BG2EE EET)

Inspired by 2nd Edition rules, this component prevents vorpal hits from affecting targets protected by Stoneskin or Ironskin.

This component manually patches the following vanilla sources of vorpal hits:

- Axe of the Unyielding +5
- Ravager +6
- Silver Sword
- Balor's vorpal attack
- Solar's Bow/Sword
- Planetar's Sword (unless the Planetar component is installed, which already removes the vorpal effect)

Support for mod-added items with vorpal effects can be added upon request. Additionally, an option in the configuration file allows you to prevent vorpal hits from chunking targets. This is disabled by default.

### Make character stats more streamlined or interesting (1545) (IWDEE BGEE BG2EE EET)

This component overhauls character stats for a more streamlined progression and interesting choices. All tweaks are enabled by default.

- **Constitution**:
  - **HP Bonus**: Progression is streamlined. Starts at 12 CON and grants +1 HP every 2 points, up to +7 HP at 24/25 CON. Non-Fighters benefit more slowly, gaining up to +4 HP at 20 CON. HP penalties start at 8 CON.
  - **Regeneration**: Starts at 18 CON (1 HP / 300s) and improves to 1 HP / 60s at 25 CON.
  - **Fatigue**: Fatigue bonuses start at 12 CON.
- **Dexterity**: AC and Ranged THAC0 bonuses are streamlined. The +7 bonus is now only achieved at 25 DEX. Penalties now begin at 9 DEX.
- **Lore**:
  - **By Class**: Mages get +5/level, Thieves +4/level, Clerics/Shamans/Druids +3/level, and Paladins/Rangers +2/level. Fighters and bards are unchanged (1 and 10, respectively)
  - **By Stat**: Bonuses from INT/WIS start at 12, with a more gradual progression for both bonuses and penalties. Bards get a reduced 8 lore per level.
- **Racial THAC0**: Dwarves gain a +1 THAC0 bonus with axes.
- **Shorty Saves**: The saving throw bonus from Constitution for shorty races can be configured:
  - **Nullify**: Removes the bonus entirely.
  - **Tone Down (Default)**: Slower progression, starting at +1 (12 CON) and capping at +3 (21+ CON).
  - **Standardize**: A flat +2 bonus, regardless of Constitution.
- **Strength**:
  - THAC0 and Damage bonuses are streamlined. Penalties start at 9 STR, bonuses at 12 STR. Exceptional Strength (18/xx) no longer provides a THAC0 bonus. Its damage bonus is now +0 (18/01-24), +1 (18/25-75), or +2 (18/76+).
  - Weight allowance is adjusted to be more gradual, increasing capacity at low STR and decreasing it at very high STR.
- **Weapon Styles**: This part of the component tries to make every point valuable by adding to having low or no points, and making each point truly rewarding to hopefully avoid any point where adding another one seems pointless. This encourages investing on it.
  - **Two-Handed Style**:
    - **0 Pips**: -1 to Armor Class
    - **1 Pip**: +1 Damage, +1 Speed Factor.
    - **2 Pips**: +2 Damage, +4 Speed Factor, critical threat range increased by 1.
  - **Single-Weapon Style**:
    - **0 Pips**: -1 to Speed Factor
    - **1 Pip**: +1 Damage, +1 AC, +1 Speed Factor, critical threat range increased by 1.
    - **2 Pips**: +2 Damage, +2 AC, +2 Speed Factor.
  - **Sword and Shield Style**:
    - **0 Pips**: -1 damage, THAC0, and AC penalty vs. Missiles.
    - **1 Pip**: No penalties, +2 AC vs. Missiles.
    - **2 Pips**: +1 AC, +4 AC vs. Missiles.
  - **Two-Weapon Style**:
    - **0 Pips**: -2 AC; THAC0: -4 (main-hand) / -6 (off-hand); Damage: -1 (main-hand) / -2 (off-hand).
    - **1 Pip**: -1 AC; THAC0: -2 (main-hand) / -4 (off-hand); Damage: -1 (main hand) / -1 (off-hand)
    - **2 Pips**: No AC penalty; THAC0: -1 (main hand) / -3 (off-hand); Damage: No penalty (main hand) / -1 (off-hand)
    - **3 Pips**: THAC0: -2 (off-hand); Damage: No penalties
- **Weapon Proficiencies**: THAC0 progression is smoothed out, gaining 1 THAC0 at 2 pips, and then another one per pip up to +4 at 5 pips.

### Make shield types more distinct and change shield usability (1546) (IWDEE BGEE BG2EE EET)

This component reworks shields to make each type more distinct, adding unique benefits and drawbacks.

- **Tower Shields**: Provide +1 AC over other shields of the same enchantment but are clunky, incurring a -1 penalty to THAC0 and saves vs. Breath, and a -2 penalty to speed factor. An optional setting can also reduce movement speed by 20%.
- **Medium Shields**: Inflict a -1 penalty to Speed Factor and Saves vs. Breath. An optional setting can also reduce movement speed by 10%.
- **Small Shields**: At even enchantment levels, their AC penalty vs. Missiles is offset by 1
- **Bucklers**: At even enchantment levels, their AC bonus vs. piercing is offset by 1. Additionally, bucklers have a 10% chance to **parry** frontal melee attacks. A successful parry inflicts 1d2+bonus crushing damage and applies a -2 AC penalty and -15% damage vulnerability to the attacker for half a round (save vs. Breath negates, improves with enchantment level).

The configuration file provides several options to change shield usability:

- Allow all classes to use all shields (**off** by default).
- Restrict Tower Shields to single-classed warriors (**on** by default).
- Restrict Tower Shields to any class with a fighter level (**off** by default).
- Allow Thieves and Bards to use Small Shields (**on** by default).
- Allow Thieves and Bards to use Small and Medium Shields (**off** by default).
- Allow Wizards to use Bucklers (**on** by default).

Important notes:

- **Buckler parry**: This component should be installed **after** any mods that add or modify weapon protection effects (e.g., SCS's Mantle tweaks) to ensure the parry is correctly blocked by those protections.
- **Mod compatibility**: This component identifies shield types by their unidentified name (e.g., "Buckler", "Small Shield"). While vanilla items are patched to conform to this schema, mod-added shields not following this convention will not be affected. Please report any incompatible mods.

### Make Protection from Undead more balanced (1547) (IWDEE BGEE BG2EE EET)

This component rebalances the scroll, replacing its "invisibility to undead" effect with a suite of powerful defensive bonuses. For 12 hours, the user gains:

- Immunity to level drain, vampiric domination, and paralysis from undead.
- A +2 bonus to saves vs. Death, Paralysis, and Poison.
- A retaliatory effect: Undead that attack the user are rebuked, taking 1d4+1 magic damage and are feared for 2 rounds (Save vs. Spell for half damage and to negate fear).

### Make everyone able to perform omnidirectional backstabs (1600) (IWDEE BGEE BG2EE EET)

This allows player-created characters as well as all joinable characters to backstab from any angle. Optionally, there is an option to make them able to backstab without invisibility instead, but with the angle requirement intact.

### Make disrupt undead weapons more balanced and closer to PnP rules (1329) (BG2EE EET)

This component rebalances disruption weapons to be more balanced when slaying undead, following a PnP inspired formula. No longer will it nearly as feasible to whirlwind attack a lich to death (not impossible mind you). The weapons that are affected are Shining Light of Lathander (upgraded) from my Item Pack, Azuredge, maces of disruption, runic hammer, and deva weapons.

Slayable creatures must make a save vs. Death at -2. However, some creatures have a chance to resist the effect before a save is rolled:

- **95% Resistance**: Fiends
- **80% Resistance**: Liches, demiliches
- **50% Resistance**: Vampires, vampyres
- **35% Resistance**: Spectres, ghosts
- **20% Resistance**: Mummies, revenants
- **5% Resistance**: Wraiths
- **No resistance**: Lesser undead (skeletons, ghouls, etc.)

Other details:

- Azuredge is now fully a +3 weapon and bonus damage against undead is adjusted to 1d6+3.

### Make rangers, thieves, and monks hit harder with ranged weapons if invisible (1397) (IWDEE BGEE BG2EE EET)

This component enables combat bonuses from invisibility for ranged attacks, focusing on Rangers, Thieves, and Monks. This is to simulate a ranged sneak attack of sorts.

- **THAC0 Bonus**: Grants a +4 THAC0 bonus when attacking from invisibility, mirroring melee bonuses.
- **Ranged Damage Bonus (from invisibility)**: +1 damage, scaling up to +5 at level 17 (double for thieves and monks).
- **Applicability**: Applies to all Thief kits (except Swashbuckler), all Ranger kits (except Archer), and all Monk kits.
- **Thieves with Fighter Class**: Their damage bonus is reduced to match that of Rangers.

**Important Notes**:

- This effect is implemented using timers, which may result in minor, momentary delays in application or removal when entering/exiting invisibility.
- Only player and joinable characters benefit; enemies are unaffected.

### Make all bracers, belts and boots grant +1 HP, so unenchanted variants aren't just garbage (1532) (IWDEE BGEE BG2EE EET)

I do not like gear that you can wear without any effect whatsoever. I can live with rings that don't do that, because there's no reasonable benefit to just wearing a ring. Therefore, wearing unenchanted belts, boots, and bracers will grant the wearer +1 HP which I think is reasonable enough, and it doesn't change balance much. For consistency, the magical variants also grant that. The unenchanted items will still be the worst choice, but should encourage filling all the gear slots.

### Make Void-weapons slightly more effective and logical (1548) (BGEE BG2EE EET)

- On-equip strength-sapping effect will no longer affect undead (such as with Hexxat).
- The weapons will be able to critically hit, dealing double damage, which is a feature that was missing from the original implementation.

### Make Light Crossbows get +1/2 more APR (1360) (IWDEE BGEE BG2EE EET)

Just a small bonus to make it more interesting and different compared to heavy crossbows. It's not too far-fetched to think smaller crossbows can be reloaded faster. This will affect crossbows that have an APR bonus already, such as crossbows of speed.

</details>

---

<details>

<summary>

## Gear

</summary>

### Make Shadow Dragon Scale behave less like a Black Dragon Scale (1170) (BG2EE EET)

This is clearly a mistake since Shadow Dragons don't use acid as breath weapon. Instead, it offers Negative Plane Protection, Non-Detection, and +4 bonus to saves vs. Illusion and Necromancy spells.

### Make Silver Dragon Scale also grant 40% cold resistance (1171) (BG2EE EET)

The reason is that Silver Dragons wield and are resistant to cold.

### Make Rings of Elemental Control more powerful (1172) (BG2EE EET)

This improves the power of the charm by making the save against it -2 instead of +2. Additionally, the rings grant 50% resistance to the related element consistently.

### Make Ring of Gaxx's improved haste last 2 rounds (1173) (BG2EE EET)

Just because it feels odd to make it precisely 10 seconds.

### Make Heartwood Ring grant spell slots and regeneration (1174) (BG2EE EET)

This makes this ring significantly more useful for an Archdruid, adding 1 extra spell slot of every level and a slow regeneration effect as the nigh-timeless druidic legend you are.

### Make Ring of Danger Sense grant defensive traits (1180) (BGEE BG2EE EET)

- +1 bonus to Armor Class
- +1 bonus to saves vs. Breath
- Immunity to backstabs

### Make Mercykiller Ring more useful for pure thieves and rangers (1316) (BG2EE EET)

Adds a +1 damage and THAC0 bonus, and +5% critical hit chances, along with the other bonuses, but only to single-classed Thieves (for balance and to encourage commitment). The ring can also be equipped by rangers.

### Make the basic arcane robes more remarkable (1317) (IWDEE BGEE BG2EE EET)

- **Knave's Robe**
  - +2 Armor Class against Slashing and Piercing (was +1 against Piercing)
  - Save vs. Death +1 (vanilla) and Save vs. Breath +1 (new)
  - +50% Poison damage resistance
  - 5% universal Thief skill boost (you're a knave!)
- **Traveler's Robe**
  - +3 Armor Class against missile (was +1)
  - +15% Missile damage resistance
  - Save vs. Wand +1 and Save vs. Spell +1 (was Save vs. Breath +1)
  - Movement speed increases by a factor of 4 (you're a traveler, moving from town to town!)
- **Adventurer's Robe**
  - 1 universal Armor Class bonus (the bonus to crushing seems a little weird)
  - Save vs. Petrification +1 (vanilla) and Save vs. Spell +1 (new)
  - +20% Magic damage resistance
  - +10% Elemental damage resistance
- **Elemental resistance robes**: resistance increases 20→40%, adds 7% damage bonus in the relevant element and +1 save vs. evocation spells. This also increases the damage resistance of Robe of Red Flames to 50%, and adds the evocation bonus, for consistency (it's a straight upgrade from the Robe of Fire Resistance).
- **Archmage Robes**
  - Armor Class set to 5 (vanilla), and it also improves it by 1 additively (new)
  - Magic resistance increases by 10%, not 5%
  - Magic damage resistance: +25%
  - Casting speed increases by 1
  - Saving throws bonus against Spell at +2, +1 for the rest

### Make Belt of Skillful Blade also improve piercing damage (1560) (BG2EE EET)

This makes the belt include piercing damage, such that it affects things like daggers, short swords and wakizashis.

### Make Cloak of the Stars more useful (1561) (BG2EE EET)

Creating 6 darts is really unremarkable for a once-per-day effect. 30 is far more interesting. Additionally, if you wear it, you are granted one extra proficiency point in darts immediately and a Save vs. Spell bonus of +2.

### Make Eyes of the Beholder better and grant immunity to matching rays (1570) (BG2EE EET)

This improves the helm slightly such that the Domination power is as powerful as the Domination spell, i.e., a -2 penalty to save vs. Spell, and the Paralyze spell is as powerful as wizard version of Hold Person, i.e., a -1 penalty to save vs. Spell. Additionally, the helmet makes the wearer immune to beholder rays that cause the same effects; that is, you cannot be paralyzed, charmed, or scared by beholder rays.

### Make Robe of Invocation increase elemental damage and defense (1610) (BG2EE EET)

This makes this robe improve Invocation wizards in more ways, similarly to my tweaks to elemental robes, but with milder damage bonuses, since it's a more universal bonus: 5% elemental damage bonus and +2 save vs. Invocation.

### Make Thayan Circlet more interesting for wild mages (1620) (BG2EE EET)

This component reworks the Thayan Circlet, restricting it to Wild Mages and granting them improved control over Wild Surges. It also provides a rotating 15% damage bonus to a random non-physical damage type (excluding poison).

### Make Studded Leather of Thorns cause some piercing damage too (1651) (BG2EE EET)

I mean, they're THORNS; the only difference is that they're FIERY. Instead of only inflicting 1d4 fire damage, they also inflict 1d4 piercing damage, making it an overall more useful defensive armor.

### Make Grandmaster's Armor's better and grant perks to backstabbers (1652) (BG2EE EET)

This component overhauls the Grandmaster's Armor, making its movement bonus immune to Free Action and adding several new passive perks for single-classed thieves:

- **Passive Bonuses (Thieves only)**: Grants immunity to critical misses.
- **Special Backstab Attacks**: Each rogue kit gains a unique on-backstab effect:
  - **Kitless Thief**: Crippling Attack - Slows and reduces STR, DEX, and casting speed by 4 for 4 rounds (save vs. Death).
  - **Bounty Hunter/Stalker**: Subduing Attack - Knocks the target unconscious (save vs. Death), +10 non-lethal damage.
  - **Shadowdancer**: Shadow Attack - A 2-round non-stacking self-buff that grants 5% total damage resistance, a +2 bonus to damage, +5% to critical chances, and a 20% chance for invisibility.
  - **Assassin**: Death Attack - Stuns the target for 1 round (save vs. Death), and they die if they have 60 HP or less and fail another save vs. Death after that round; otherwise they take 2d6 poison damage and their saves vs. Death are damaged by 4 for 5 rounds.
- **New Charge Ability**: Expose Weakness (1/day), which removes the target's backstab immunity and lowers their defenses to piercing and slashing damage by 10% for 4 rounds. Can be cast invisibly.

### Make Thieves' Hood better and grant perks to single-classed thieves (1653) (BG2EE EET)

This improves this item in the following ways:

- Both upgraded and non-upgraded versions now protect against critical hits, essentially giving a Thief access to critical hit protection without requiring fighter levels.
- Single-classed thieves gain +1 THAC0 and Damage (for balance and to promote specialization) in the upgraded version

### Make Star-Strewn Boots better and favor Inquisitors too (1654) (BGEE BG2EE EET)

This makes these boots improve Magic Resistance by 10% for everyone (from 7%) and Inquisitors and Wizard Slayers by 18%.

### Make Crown of Lies more consequential when used (1655) (BGEE BG2EE EET)

Now it reduces lore by -20 (from 30) BUT it also decreases Wisdom by 2 (which would affect Cleric/Mages more), Detect Illusions by 10, and inflicts -2 saving throw penalty vs. Illusion magic. This is compensated by providing 2 spell slots for level 4 too.

### Make the Helmet of Dumathoin slightly more powerful (BGEE BG2EE EET)

This component increases the damage resistance granted by the helm from 3% to 5%. Due to the way the game engine rounds damage calculations, the original 3% is often ineffective. The new 5% value provides a small but more consistent benefit, especially for classes that already have other sources of damage reduction.

### Make The Visage grant Aura of Despair once per day and improve powers (1657) (BG2EE EET)

This component improves The Visage by increasing its `Breathe Acid` damage to 8d6 (from 6d6) and adding the ability to cast Aura of Despair once per day. The component will be skipped if Forgotten Armaments is installed.

### Make Dragon Helm add protection against acid and saves vs. breath (1658) (BG2EE EET)

Self-explanatory. As for the reasoning, because it felt odd leaving acid breath out of it. Saves vs. Breath, because well, dragon breath.

It also tweaks the description slightly, because oddly enough it talks about having red, white, and green scales. I was expecting red, white, and **blue**, since blue dragons are the ones who produce electricity, and green dragons exhale poisonous gas. Now it mentions having red, white, black (dragons with acid breath), and blue scales.

### Make the Helm of the Rock more protective and commanding (1659) (BG2EE EET)

This makes both versions of the helm a truly universal non-physical damage protector by adding a 25% resistance to magic damage. Additionally, the upgraded version gets the following:

- +7% physical damage reduction
- +1 Charisma
- Aura of Command is no longer single-target; it spreads upon impact, similarly to Hold Person, but in a bigger area.

### Make Cloak of the Sewers also protect vs. poison (1661) (BG2EE EET)

This makes the cloak grant a +1 bonus to save vs. Death and 50% poison damage reduction.

### Make Montolio's Cloak grant extra perks to rangers (1662) (BG2EE EET)

This makes this cloak more meaningful for rangers, being granted a +1 bonus to THAC0 and Damage.

### Make Sandthief Ring consistently grant one use of invisibility per day (1663) (BGEE EET)

This makes this ring reusable instead of having limited charges.

### Make ioun stones and circlets protect vs. critical hits (1664) (BGEE BG2EE EET)

Self-explanatory. You can choose to affect all, only ioun stones, circlets, or a selection of those that I deemed more logical or balanced: Pale Green Ioun Stone, Obsidian Ioun Stone, Malla's Stone, Wong Fei Ioun Stone, Circlet of the Lost Souls, and Headband of the Devout.

### Make ioun stones and circlets a bit more interesting or powerful (1665) (BGEE BG2EE EET)

- Dusty Rose Ioun Stone: Inspired by the description, it also protects against berserk and fear. The Armor Class bonus is also now 2. Additionally, it changes the BAM so it has a pinkish hue
- Pearly White Ioun Stone: This improves the trollish regeneration from 1 HP per 5 rounds to 1 HP per round
- Golden Ioun Stone: Makes it more interesting for general use by improving not just intelligence but also saves vs. Spells by 1 and magic resistance by 10%
- Obsidian Ioun Stone: Obsidian is brittle but hard. Other than increasing CON by 1, now it also improves Armor Class against all except crushing by 2, and improves physical damage resistance to everything except crushing by 5%
- Silver Gray Ioun Stone: Now it also improves WIS by 1 and lore by 15. Divine casters get one extra spell slot from level 1 to 5. Finally, druids and clerics get a +1 bonus to casting speed
- Circlet of Netheril: This makes it more useful and final for sorcerous classes by adding one extra spell slot for level 9 as well, as well as a +7% bonus to magic damage dealt
- Eilistraee's Boon +1: Non-evil elves get +1 DEX

### Make Bracers of Blinding's more generally useful for everyone (1666) (BG2EE EET)

Improved Haste charge ability now lasts 40 seconds more (1 full turn). Additionally, it improves weapon speed factor by 2, movement rate by 2, and APR by 1/2.

### Make Xarrnous's Second Sword Arm also add +1 damage (1667) (IWDEE BGEE BG2EE EET)

This improves the gauntlets such that it also improves damage, not just THAC0, making it a lesser version of Legacy of the Masters.

### Make The Dale's Protector slightly more powerful and open to all classes (1668) (BGEE BG2EE EET)

This improves the item such that it's more attractive for ranged weapon users: the THAC0 bonus is now +3, and it improves ranged damage as well by +1 (which becomes +2 for Rangers, single-classed Thieves, and Bards).

### Make Gauntlets of Extraordinary Specialization improve THAC0 by 2 and open to all classes (1669) (BG2EE EET)

Self-explanatory.

### Make The Eyes of Truth add a bonus to Detect illusions and Find Traps (1671) (BGEE BG2EE EET)

I decided to take the name of the item more seriously. And let's face it, this item is always an automatic sell. In this state, at least it has some use for Fighter/Thieves or Cleric/Thieves. +10% bonus to both skills

### Make Stalker Gauntlets also benefit Bounty Hunters and Shadowdancers (1672) (BGEE BG2EE EET)

It seems obvious that both the Stalker and Bounty Hunter "professions" align with each other, stalking prey and hunting for a bounty. Shadowdancers are masters of stealth via innate shadow magic, so I don't think it's far-fetched either. Both Stalker-only benefits apply, including the enhanced backstab multiplier.

### Make Blessed Bracers more powerful (1673) (BG2EE EET)

This makes the bracers far more worth the trouble for paladins. Instead of just letting you cast Resurrection and Cure Critical Wounds, and give you +10 HP:

- You can cast Resurrection and Heal once per day, and Mass Heal three times per day
- All wearers get a "blessing": +1 THAC0 and Damage
- Paladin-only bonuses: +1 Casting Speed, +1 spell slots (1-4), +1/2 APR, +15 HP

### Make Whispers of Silence improve stealth and damage from stealth (1674) (IWDEE BGEE BG2EE EET)

This makes the cloak more useful for the purposes of avoiding detection, since Non-Detection is an unremarkable protection. As such, the wearer is also immune to other invisibility-detecting spells, except True Sight. Additionally, it adds a 10% bonus to Move Silently, and a +5% critical hit chances for 2 rounds while the user is invisible, which is an effect that may trigger once per turn (watch out for the red glow on character).

### Make Cloak of Displacement add +5% damage resistance (1675) (IWDEE BGEE BG2EE EET)

Makes the cloak add "displacement" in the same way as "displacement" is faked with things like Shadow Form and Spirit Form, i.e., damage resistance. In this case, just +5% damage resistance (universal).

### Make Skull of Death add casting of Finger of Death and protect vs. necromantic death effects (1676) (BG2EE EET)

I don't like items that **only** add an ability without any passive benefit. Therefore:

- May cast Finger of Death once per day too
- Saves vs. Necromancy spells: +4 saves
- Immunity to necromantic death effects and vorpal hits. On a technical level, this means immunity to the Slay and Kill Target opcodes, but not to the Power Word Kill, Petrification, or Disintegration opcodes

### Make Wondrous Gloves Wondrous (1677) (BG2EE EET)

In my opinion, these gloves are very, very mundane, and not wondrous. Therefore, the effects of wearing these gloves are now useful for all bards, with specific benefits according to vanilla kits and for bards in general.

- Bards in general get: +2 Armor Class, THAC0, Damage, and Casting Speed, +1 spell slot from level 1 to 6
- Skalds get +1 Strength and +1/2 APR
- Blades get +1 Dexterity and +1/2 APR
- Jesters get immunity to confusion, slow, and unconsciousness, as well as +6 bonus saves vs. Enchantment spells
- Only bards can wear these.

### Make Senses of the Cat imbue the user of more cat-like features (1678) (IWDEE BGEE BG2EE EET)

Cats forever! Now it improves Armor Class by 1 and adds +4 bonus against missiles, gives a +1 Saves vs. Breath, and movement rate increases by a factor of 3.

### Make the Horn of Kazgaroth more useful and unique (1679) (BGEE BG2EE EET)

To me, the duration of the effects is too short. Plus, the "unknown" damage to the user becomes "known" too easily. I slightly tweaked the description, by describing what Kazgaroth is, plus:

- Now it lasts for 5 rounds
- It can be used three times per day instead of 30 times in total before it disappears
- +2 Armor Class, +4 more against Missile
- Immunity to level 1, 2, and 3 spells
- +2 Saving throws (vanilla)
- Physical resistance: +8% resistance
- The Horn now has a 50% chance of causing **ONE** deleterious effect on the user: -10 Max Hit Points, -3 THAC0, -2 Damage, -2 Strength, -2 Constitution, -2 Dexterity, -1 Saving Throws, -4 Saves vs. Death, or -50% movement speed. This penalty persists for 2 turns.

### Make Rod of Lordly Might usable by any class and more powerful (1190) (BG2EE EET)

The rod is conceptually quite interesting but generally underperforming. This component changes the names to `<item_type> of Royal Might` and all become +3 at least:

- **Mace +2**, save vs. effect is made at +2, not +5, and the panic is now instead a 2-round Slow effect.
- **Flaming Long Sword +1**, causes 1d4 fire damage per hit, and since it's "hypnotic" it has a 50% chance of causing Stun, and 50% change of causing asleep for 1 round. The save against it is now +2 instead of +5. Additionally, it makes it look like an actual flaming sword when held.
- **Spear +3** has a 10% chance to cause an "Arcane Blast", that deals 2d4+2 magical damage, and it now also causes bleeding if the target fails a Save vs. Death, causing 10 piercing damage over 1 round.

It will also now sport new icons, which are a massive upgrade from the original ones. All made by zenblack.

### Make Gloves of Healing worth more than what you get by selling them (1195) (BG2EE EET)

This improves the gloves by adding the following:

- +1 Casting level for paladins and clerics
- Party regeneration of 1 Hit Point every 5 rounds
- The charge ability is now changed to a combination of Lay On Hands cast at level 10, and Slow Poison

### Make a number of quest items functionally useful (1997) (BG2EE EET)

- Kuo-Toa's Blood: can be consumed to permanently improve THAC0, Armor Class vs. missile, saves vs. Breath by 1
- Eyestalk of an Elder Orb: can be consumed to permanently increase Armor Class and saves vs. Petrification and Death by 1
- Elder Brain's Blood: can be consumed to permanently improve the casting level (arcane and divine) and saves vs. Spell and Rod by 1

**FAIR FAT FABULOUS FULL FIERCE WARNING ABOUT THE FIRST THREE:** Don't eat all three. One of them at least is needed for plot reasons. Otherwise, you'll have to fix it with save editing or console commands.

- Mask of King Strohm III: now it protects vs. critical hits, increases Detect Illusion and Find Traps by 10. It has a charge ability to cast Oracle once per day.
- Shadow Dragon Wardstone: It is now an ioun stone which grants immunity to Blindness. Shadow dragons and other shadow creatures incur in a -2 combat roll penalty towards the wearer. 5% hiding skill and shadowdancers and dark moon monks get a +3% damage resistance.

### Make Ring of the Crusade grant combat bonuses vs. demons and devils (1198) (BGEE BG2EE EET)

Self-explanatory, the wearer will get a +2 bonus to combat and damage rolls vs. demons and devils.

### Make Ring of Purity benefit the good-aligned more (1206) (BGEE BG2EE EET)

The ring now adds a +1 bonus to THAC0 and Damage vs. evil creatures, as well as 1 extra spell slot for levels 1 and 2 for the good aligned.

### Make Girdle of Fortitude set Constitution to 18 on equip (1203) (IWDEE BGEE BG2EE EET)

This makes the belt generally more useful and frankly makes more sense if you consider the description.

### Make Rhino Beetle Gear have a more balanced set of resistances (1204) (BGEE BG2EE EET)

This follows the same philosophy as the tweak to beetle creatures. The armor now provides 18% resistance to missile, 12% to slashing, and the Armor Class was tweaked to reflect this theme.

The shield does the same, providing a 12% resistance to missile, 8% to slashing, and 5% to piercing. It also provides a +1 Armor Class bonus to piercing.

### Make Protector of the Second more powerful when used by rangers (1207) (BGEE BG2EE EET)

Following the theme of the description, it provides a bonus to rangers and elves:

- +1 Armor Class if the wearer is a ranger, and also if they are an elf or half-elf. This stacks. This means effectively that an elven ranger would wear the armor as if it was a +4 leather armor.
- +15% to hiding for rangers.

Good choice for early to mid-game elven rangers, perhaps even better for stalkers.

### Make Karajah's Life and Death more unique inspired by the description (1208) (BGEE BG2EE EET)

This component blends the two flavors of descriptions in BGEE and BG2EE and makes it more unique, granting the following traits:

- Movement rate increases by 3
- Crushing damage resistance increases by 10%
- Crushing damage dealt increases by 8%

### Make The Night's Gift +5 a bit more interesting as an armor (1209) (BG2EE EET)

Heavily leaning on the lore of the item (blessed by Shar):

- Hide in Shadows: +25% (from 20%)
- Immunity to all invisibility-detecting spells, excluding True Sight
- 5% physical damage resistance for all thieves wearing it (single class or not)
- At night, regenerate 1 HP per round, and when you're hit, there's a 12% chance of becoming invisible as per the Improved invisibility spell for 4 rounds. This effect can only trigger once per turn.

### Make Orc Leathers grant special bonuses to half-orc wearers (1211) (BG2EE EET)

The armor now leans more heavily into the orcish theme:

- -2 Charisma (from -1), so it's potentially more meaningful
- Half-orcs only: +1 to inflicted damage, +10 maximum HP, missile resistance is doubled
  
### Make Skin of the Ghoul +4 protect against all kinds of paralysis (1212) (BG2EE EET)

This includes paralysis from ghouls and magical commands. It's of course inspired by the fact that the skin is made from a ghoul.

### Make Armor of Deep Night +4 more unique inspired by the backstory (1213) (BG2EE EET)

Following the Umberlee theme, this armor now provides a 20% resistance to cold and electricity. Additionally, it provides an 18% chance of inflicting 1d4 cold and electric damage with each successful melee or ranged attack the wearer does.

### Make Armor of the Viper more interesting (1214) (BG2EE EET)

Despite the +5 enchantment, I find the armor generally not worth using, especially since it's pretty much always a better idea to use a non-unique armor with an item of protection instead. Therefore:

- Save vs. Death penalty: -3 (from vanilla -2)
- Other saves: +1
- -50% poison resistance. **Bear in mind this weakness will likely not work without the fixpack installed**.
- +100% poison damage inflicted. So if you're a vanilla assassin, for example, each poison tick would inflict 2 damage. Same for any kind of poison spell that might be accessible to the wearer.
- Charge ability: Poison Weapon, as per the vanilla assassin ability, once per day.

### Make Aeger's Hide more powerful when used by Barbarians (1215) (BG2EE EET)

Now, since this armor is Hide Armor, and hide armor is usually thematically associated with barbarians, the following is added:

- +2 weapon damage for barbarians when using halberds, staves, and two-handed swords.
- Elemental resistances doubled for barbarians.
- Barbarians also get a +3% physical damage resistance.

### Make Ankheg's Plate grant 20% acid resistance (1216) (IWDEE BGEE BG2EE EET)

Since Ankhegs actually spit acid, it makes sense that this armor would grant acid resistance. A small buff, especially since the sources of acid damage are limited (at least in BG) but it makes sense thematically.

### Make Hayes' Robe grant +1 to Armor Class and casting speed to wild mages (1217) (BG2EE EET)

Generally this robe was never very convenient to use, especially considering the alternatives. Even without Chaos Shield. So now it undoes the -1 Armor Class penalty, becoming an actual Armor Class bonus, which could be combined with a good Armor Class bracer, and adds +1 casting speed for wild mages only.

### Make the Plate of the Dark not just a generic +1 full plate (1218) (BGEE BG2EE EET)

This improves the unremarkable +1 full plate armor (yet bears a unique description and name -- I hate this so much), so it's at least remarkable if not powerful:

- Provides immunity to panic and morale failure
- 15% chance to curse living targets when you hit them for 6 rounds, imposing a -1 penalty to all rolls, luck, Armor Class, and morale, and increasing their chances of critical misses by 5%. No saving throw is allowed and it does not stack.
- May cast Horror twice per day

### Make the belt of gender inversion give a bonus vs. the original gender (1271) (BGEE BG2EE EET)

This makes the belt provide a functional utility in combat, providing a +1 bonus in combat rolls vs. those of the gender you originally had. For example, if your character is a man, becoming a woman with the belt will allow you to perform better in combat against men.

### Make Shakti Figurine last longer and more powerful (1291) (BG2EE EET)

This improves this item's utility such that you can shapeshift into a short sword wielding warrior with the following improvements:

- Attack three times per round (2 per round, hasted)
- Short sword has a speed factor of 0 and acts as +4
- Short sword is 5% more likely to critically hit than a normal sword
- Lasts for 1 turn (from 4 rounds)

### Make Doomplate an armor for those that want to RIP. AND. TEAR. (1331) (BG2EE EET)

I couldn't resist, considering the name of this armor, especially considering that the unique description has no yield at all as far as how it works. Therefore, this armor now provides:

- Armor Class vs. demonic: +2
- Damage vs. demonic: +2
- THAC0 vs. demonic: +2
- +20% resistance to fire
- Fiends must save vs. Death of have their magic resistance nullified when hit for 2 rounds

A new original description is also provided, inspired, of course, by Doom.

### Make the Robe of Vecna the Robe of Larloch (1333) (BG2EE EET)

This will probably not be a favorite since the robe is effectively "the best", and what you want for powergaming, but I decided to make it more nuanced, with some inspiration from NWN functionally. It's now the Robe of Larloch, not Vecna, since it's probably much more lore-appropriate to begin with, and Larloch is also a lich of immense power anyway. So here are the changes (sorry, some nerfs are involved):

- Armor Class: 5 (vanilla)
- Casting Speed: +2 (down from +4)
- Magic Resistance: +10% (vanilla)
- +2 to all saving throws against spells of all schools of magic (specifically the schools of magic, it won't be reflected in the character summary, but it will affect saves vs. spells of every school magic either way)
- Enemies in the field of vision of the wearer suffer a -1 penalty to all saving throws against spells of all schools of magic

### Make Ashen Scales more unique beyond enchantment level (1334) (BG2EE EET)

Yay, I love me another item with a unique description but no unique function. This armor now provides something beyond the enchantment level:

- +20% fire resistance
- Immunity to Poison
- +2 Armor Class vs. wyverns and dragons
- Wearable by rangers and druids

### Make Crimson Chain more unique beyond enchantment level (1335) (BG2EE EET)

Yay, I love me another item with a unique description but no unique function. This armor now provides something beyond the enchantment level:

- +12% piercing damage resistance
- +2 damage while wielding daggers
- Enemies killed while wearing the armor grant the wearer +1 THAC0 and damage for 7 seconds
- May be worn by thieves and bards, and does not disable thieving abilities

### Make Cowl of the Stars more generally useful (1336) (BG2EE EET)

I don't like wearable items that *only* give charged abilities, generally. The following improvements were made:

- +20% resistance to fire
- Creates 20 meteors once per day, regardless of wizard level
- Additionally it gives Sun Soul monks and Priests of Lathander a 20% chance of inflicting extra 2d4 fire damage with all their melee attacks.

### Make Tzu-Zan's bracers a better competitor to Gauntlets of Crushing (1351) (BG2EE EET)

These gauntlets are not a very interesting reward for monks. Gauntlets of Crushing are a better option. You only miss out on them, I believe, if you start a ToB playthrough directly without importing. And who does that?

- Armor Class: +1 (vanilla)
- Hit Points: +15 (vanilla)
- Protects against critical hits
- THAC0: +1 (new)
- Damage: +1 (new)
- On a critical miss, the monk gains 1 extra attack per round, critical misses are no longer possible, and the next hit will become a critical hit. This lasts for 3 rounds and may not happen again during these 3 rounds. (new)

### Make Shield of Balduran less of an auto-win item (1365) (BG2EE EET)

It's basically a way to skip the difficulty of beholders fairly easily. It's now a bit more nuanced:

- Armor Class: +3, down from +4, but now with a +2 bonus vs. beholders, mind flayers, kuo-toa, driders, umber hulks, and hook horrors (Underdark theme). This is equivalent to a "protection vs. `<creature>`" effect, and does not stack with others that target the same.
- No longer reflects all beholder rays. It now only grants immunity to those that instantly kill: death rays, and petrification and disintegration rays.

</details>

---

<details>

<summary>

## Daggers

</summary>

### Make throwing poisoned daggers less rare and more likely to poison enemies (1000) (BGEE BG2EE EET)

This component makes Poisoned Throwing Daggers more available and effective.

- **Availability**: Sharply increases the stock in BG2 stores and adds them to several merchants in BGEE. The quantity is configurable.
- **Effectiveness**: The poison now forces a Save vs. Death at -2, making it harder to resist. This penalty is also configurable.

### Make Bone Blade not just a plain +4 dagger (1130) (BG2EE EET)

- Being made partially from the tooth of a black dragon, it deals 1d4 acid damage on hit and increases Acid Resistance by 40%
- Being tempered in the blood of the duergar smith, every hit causes +5 extra piercings damage vs. elves, and other inhabitants of the Underdark: beholders, mind flayers, kuo-toa, hook horrors, driders, spiders, and umber hulks.

### Make Dagger of the Star more powerful (1140) (BG2EE EET)

- Dagger of the Star +4 becomes +5, the chance of invisibility increases to 10%, and it inflicts +1 electric and fire damage each hit.
- Dagger of the Star +5 becomes one of the few privileged +6 weapons and inflicts +2 electric and fire damage per hit
- Star Bolt: Increased the chance to trigger elemental effects to 15%, the difference being, you have equal chances of triggering fire damage, electrical damage, or both (5% chance each).

Finally, it has a charge ability usable twice per day called Heavenly Strike, that causes a lightning bolt to fall from the sky dealing 6d6+24 electrical damage (save vs. Breath at -5 to take three quarters of the damage) followed shortly by a column of fire that deals 6d6+24 fire damage (save vs. Breath at -5 to take three quarters of the damage). The fire damage spreads to enemies that stand too close to the fire, which deals 60% of the potential fire damage. Doing this, also empowers the wielder's attacks for 1 turn, dealing +2 fire and electrical damage per hit.

### Make Neb's Nasty Cutter never run out of poison (1490) (BG2EE EET)

Self-explanatory.

### Make The Jade's Fang more powerful (1630) (BG2EE EET)

This component will make the healing per it based on probabilities, such that there is a 50% chance it will heal by 1, 20% chance it will heal by 2, 15% chance it heals by 3, 10% chance it heals by 4, and 5% chance it heals by 5. Additionally, there is a 15% chance the stun effect happens too, but only if a Save vs. Spell is failed (the vanilla 5% chance gives no saving throws). All the effects now bypass Magic Resistance, which is probably an oversight.

### Make Heart of the Golem +2 more unique based on the description (1660) (BGEE BG2EE EET)

- Improves Magic Resistance by 10% when held
- 50% chance of inflicting 1d4 magic damage, no save

### Make Werebane more effective vs. lycanthropes (1670) (BGEE BG2EE EET)

Werebane's description is a little misleading. It doesn't cause +4 damage against Lycanthropes. The 1d4+1 base damage of the weapon doesn't become 1d4+5. This type of confusing description is common to all weapons that do extra damage to specific creatures. Instead, it causes 1d4+1, and if the target is a Lycanthrope, another tick of 3 piercing damage is inflicted. This improves this extra additive tick of damage so it inflicts 6 instead, and the additional THAC0 is also +6.

### Make Stiletto of Demarchess more sadistically powerful (1680) (BG2EE EET)

This component makes the weapon try to stun the victim with a probability of 25% instead of 20%. Inspired by the sadistic story behind the weapon, it now has +5% higher critical hit chances, and it also causes bleeding every hit, similar to Gnasher, inflicting 2 extra piercing damage, as well as 2 more per round for 3 rounds.

### Make Elements' Fury more powerful (1681) (BGEE BG2EE EET)

- Damage dice number against elementals improved by 1: 2d4
- Elemental resistance improved by 10% while holding it.
- Random elemental damage improved to 2

### Make Acid-Etched Dagger a more powerful +3 weapon (1682) (BGEE BG2EE EET)

- Weapon is now +3
- Acid damage on hit increased from 1 to 1d3
- 20% chance of causing 1d3 acid damage per round for 3 rounds (improved from 1, 15% chance), as well as adding an Armor Class penalty of 2 for 3 rounds

### Make Gemblade more worth hanging onto for wizards (1683) (BGEE BG2EE EET)

Gemblade is one of those "cool items" that are functionally not interesting, particularly considering INT bonuses are generally unimportant in vanilla game. So now, other than increasing INT by 1:

- Every hit causes an additional 1d2 magic damage
- 33% chances of causing additional 1d4+2 magic damage
- Mages/Sorcerers can cast 2 more spells of levels 1 and 2 while holding it.
- Acts as a +3 weapon for the purposes of what it can hit

### Make basic throwing daggers usable as melee weapons (1684) (IWDEE BGEE BG2EE EET)

This copies the design of SoD's special throwing dagger such that you can use vanilla throwing daggers as melee weapons if desired. The items modified are:

- Throwing dagger `dagg05.itm`: Has a melee option that deals 1d3 piercing damage, with a speed factor of 3
- Poisoned throwing dagger `dagg16.itm`: Has a melee option that deals 1d3 piercing damage, plus +1 poison damage (no save). The usual poisoning ability does not work in this mode, only in ranged mode. This was done because otherwise using it as a melee weapon is too obvious as a better choice.

### Make Life-Stealer +4 a more powerful cursed weapon (1686) (BG2EE EET)

This component overhauls the unused Life-Stealer +4 dagger, turning it into a powerful cursed weapon. Note this does not add the weapon to the game; a mod like Unfinished Business is required to obtain it.

- **Appearance**: The dagger's appearance is changed to resemble Artemis Entreri's iconic green-jeweled dagger, and it now gleams red.
- **On Hit**: Drains 1 HP (3 HP if the wielder is a vampire) with 18% chance to drain 2 levels, healing the wielder for 1d6 HP + 10% of their max HP.
- **On Kill**: Grants the wielder +1 STR, +1 DEX, 6 HP regeneration over 1 round, and prevents their HP from dropping below 1 for 3 seconds.
- **Passive Effects**:
  - Grants +50% Cold/Electricity Resistance, -50% Fire Resistance, Infravision, and immunity to death magic and level drain.
  - Regenerates 1 HP every 2 rounds.
- **Curse**:
  - Changes the wielder's alignment to Chaotic Evil.
  - The wielder cannot be healed by most conventional healing spells or potions.
  - Can only be unequipped with a Remove Curse spell.

### Make throwing dagger's damage standardized (1530) (BGEE BG2EE EET)

This reduces the number of dice thrown of `dagg11` and `dagg12` to 1, so they are not the only good choice for daggers to maximize damage. And for consistency. Generally speaking, I dislike this sort of unbalanced design. `dagg11` specifically, already conforms to this rule in BGEE.

</details>

---

<details>

<summary>

## Two-handed

</summary>

### Make Ixil's Spike allow Haste and Improved Haste and improve it slightly (1200) (BG2EE EET)

I think everyone agrees that this type of restriction (Free Action) makes the weapon in question immediately less appealing. It will not reset your character's movement speed either. A side effect of this component is that the Free Action spell no longer sets movement speed to the baseline. The description was adjusted to reflect that. Additionally, the damage when pinned is now 1d8+6 rather than 1d6+5.

### Make Lilarcor have a chance of causing confusion on hit (1201) (BG2EE EET)

It seems appropriate that the talking sword containing the blood-lusting, raving, screaming lunatic can cause confusion on hit. Now it has a 25% chance of causing confusion on hit for 1 round if Save vs. Spell is failed.

### Make Warblade slightly more unique and potent when used by barbarians (1202) (BG2EE EET)

Since this was blessed by northern barbarian gods, the sword now causes 1d4 cold damage on contact, but makes the sword damage actually 1d12+2 (keep reading, don't worry). Barbarians wielding this sword will receive +5% physical resistance, and the sword's bonus damage is increased by 3 (1d12+5). Lastly, it will be renamed to "Barbarian Warblade +4", just because.

### Make Carsomyr more balanced and affect all evil (1280) (BG2EE EET)

Not that it needs to be more powerful, but it feels wrong to not be especially effective against non-chaotic evil (but yes, I understand it's because it's the opposite of a paladin's alignment).

Additionally, since the dispel-on-hit thing is pretty cheesy, a saving throw vs. Spell is added as counterbalance. No penalty with +5, -2 with +6 version. As for the ability to cast Dispel Magic, since level 15 dispel is quite weak, especially for the +6 version, it's now level 20-30 for each version.

### Make Silver Sword more unique (1300) (BG2EE EET)

This component improves the description to something a bit more interesting than "hey, this sword is evil and can cut heads off". Additionally:

- The faulty probabilities for vorpal hit are fixed (true 25%, not 26%)
- The sword acts in **every way** as a +5 two-handed sword **against mind flayers only**, that is, +5 THAC0, +5 enchantment, 1d10+5 damage
- Against other targets, it's still a +3 weapon in terms of damage, THAC0 and enchantment level
- Wielding it makes the wielder immune to mind blasts and domination attempts by mind flayers
- Critical hits cause 2d8 psychic (irresistible) damage and causes Confusion for 10 seconds if a Save vs. Spell at -2 is failed. Creatures without minds or brains are unaffected.
- Speed factor of 6

### Make Flame of the North able to kill trolls and affect all evil (1318) (BG2EE EET)

Self-explanatory. Also, The backstory of the sword heavily implies it was involved in the slaughter of many trolls. Therefore, the sword can completely destroy trolls on hit by causing +2 fire damage on hit to trolls only.

### Make Staff of the Magi more balanced (1390) (BG2EE EET)

Staff of Magi is a little silly for two main reasons:

- Always-dispel every hit
- Automatic invisibility on equipping the weapon, leading to enough cheese to kill a lactose-intolerant elephant

This rebalances and enhances the staff in the following manner:

- The dispel on-hit only works if the target hit fails a save vs. Spell at -2
- Makes the invisibility on equip only affect a specific user once per turn at most
- Now has a charge ability that lets the wizard cast any *known* spell the user has once per day
- Since this tweak also allows someone to turn the whole party invisible by passing the staff around, as balance change, it now also can only be used by wizards. A configuration option can constrict this balance further, making it accessible only to pure mages, only to non-fighter mages (which includes cleric/mages and mage/thieves), otherwise, all sorcerers and mages can use it.
- Additionally, the silly fireball/lightning bolt combination is now replaced by a double-strength Sunfire (aka cast twice).

### Make Ir'revrykal more powerful (1410) (BG2EE EET)

This essentially is the same tweak to Carsomyr, except the chance of dispelling is also 100%. The saving throw vs. spell has no penalty. It also makes the weapon have 1d12 base damage much like Carsomyr, tightening the resemblance between both swords. Both features are optional.

### Make Spear of Withering able to poison on contact (1460) (BG2EE EET)

I feel like this spear should be more withering, especially considering it's a +4 weapon! This makes the spear able to inflict 12 extra poison damage over one round if a save vs. Death at -2 is failed.

### Make Wave +4 slightly more powerful (1540) (BG2EE EET)

This component improves Wave +4 by making it always deal 3 points of cold damage per hit. Giants take 9 cold damage instead, since it was made to fight fire giants. This may make it a fine choice for a weapon for a large portion of ToB.

### Make Rod of Terror inspire less Terror by not just being awful (1587) (BG2EE EET)

Panic is very unlikely to happen, and panic is generally not very convenient because it makes it difficult to hit the enemies. Plus, the permanent-until-death penalty discourages pretty much any idea of using this item. Therefore:

- Save vs. Spell for Panic has no penalty now, and it only lasts 2 rounds. On the second round, if the target is still suffering from panic, there's a 20% chance that the affected creature must save vs. Death, or be killed by the shock. Even if they survive, they become rooted in place for the remainder of the round in panic
- The penalty to Charisma is now a penalty to Constitution which is more meaningful and is no longer permanent but lasts 24 hours (2 in-game hours, or 3 full normal 8-hour rests). The chance of this happening is 10% instead of 20%

### Make Blackmist more blinding and grant immunity to blindness (1590) (BG2EE EET)

This makes Blackmist's blindness power more likely to be effective by adding a -2 save penalty. Additionally, you're immune to blindness while wielding it.

### Make Soul Reaver more balanced and deal 1d12 damage (1591) (BG2EE EET)

Soul Reaver is fairly unbalanced, particularly because it reduces THAC0 by 2 cumulatively for 2 full minutes, and it's fairly easy to make any enemy to not be able to hit anything at all. This tweak reduces this duration to 5 rounds, and requires a Save vs. Spell at -4 to resist. And it now also deals 1d12 slashing damage (or 2d6 if the two-handed general tweak was installed). Both changes are optional.

### Make Sword of Ruin slightly more powerful (1593) (BGEE BG2EE EET)

This makes the extra critical damage more substantial, 2d5+2 (from 2d4).

### Make Cleric's staff more unique and benefit clerics (1594) (BG2EE EET)

I don't like that it's just casually called "cleric's" staff, without anything special added to it beyond the plain enchantment level (what else is new?). Therefore, it gains a few perks:

- +1 Armor Class
- +1 spell slot of level 3, 4, and 5 (clerics only)
- +1 turn undead and casting level (clerics only)
- May cast Mass Cure (at minimum level, 1d8+9 healing) twice per day

### Make Halcyon a bit more powerful (1595) (BG2EE EET)

This makes the electrical damage random, between 1 and 3, with higher chance to cause less. Every hit also has a chance of "electrifying" the target: 2 electricity damage per round for 2 rounds if Save vs. Spell at +2 is failed.

### Make Staff of Rhynn actually unique (1597) (BG2EE EET)

Another example of a highly enchanted weapon without any special property. I based this tweak on the description, which is frankly horrific but inspiring. Therefore:

- Causes additional +4 fire damage per hit
- +25% fire resistance while holding the staff
- Hits with this weapon reduce Fire Resistance by 25% (doesn't stack) for 2 rounds
- Special ability: **Witch's Wrath** once per day. It works as a Sunfire that causes 8d6+10 fire damage to all enemies around the caster without affecting party members. The damage will be increased by 4d6+10 if the target is affected by Panic. The explosion itself will cause Horror and Slow for 3 rounds unless a Save vs. Spell at -2 is made

### Make Psion's Blade more powerful vs. illithids (1599) (BG2EE EET)

- Deals 1d10+5 damage, but against mind flayers, it deals 1d10+7 (as if it were a +7 weapon without being one)
- THAC0 bonus: +5, but against mind flayers, it's +7
- Mind flayers struck with this weapon must save vs. Death at -3 or die instantly. You'll see an "Illithid destroyed" message in the log when it happens. However, this effect can only be attempted on the same mind flayer once per round, and Stoneskin / Ironskin will stop it

### Make Dragon's Bane act as a +6 weapon vs. dragons and wyverns (1602) (BG2EE EET)

This makes the weapon act in every way against dragons and wyverns as a +6 weapon (THAC0, enchantment, and damage). Otherwise, it acts as a +3 normal halberd.

### Make Dragon's Breath act damage-wise as a +4 weapon (1603) (BG2EE EET)

This weapon, similarly to The Equalizer, deals unenchanted level damage by default and adds additive damage separately. For the purposes of multipliers, it's a fairly less powerful halberd compared to any other +4 halberd, despite the added multi-elemental +5 damage per hit. This makes the weapon damage truly 1d10+4, with the extra damage intact. If it's okay for the Flail of Ages +5, it is okay for this too.

### Make Duskblade more imbued with the essence of necromancy (1604) (BG2EE EET)

This component enhances the weapon a bit, inspired by the description about how it got its powers because of the persistent presence of undeath:

- Other than +2 cold damage, it has a chance to unleash extra 1d6 cold damage if hit target fails a Save vs. Death
- Every hit has a 25% chance of decreasing Strength by 2 for 5 rounds. This can't kill the target. If Strength is less than 3, it drains -2 Constitution instead, which can kill the target (though it would be fairly difficult to pull it off considering the duration of 5 rounds)

### Make the Ravager halberd more balanced (1606) (BG2EE EET)

I hate with passion this 10% chance of killing period-no-questions-asked thing, so:

- The chance of killing (vorpal hit) is now bound to a Save vs. Death at -4 to trigger, similar to Axe of the Unyielding
- Additionally, Cloak of Fear can be instantly cast.
- And the poison damage is set up differently, and brings elements from the Serpent Shaft. Instead of causing 3d6 poison damage instantly, the damage is now restructured such that it causes 2d6 poison damage instantly AND poisons the target for 1 round (12 poison damage in total). This ensures minimum damage dealt of 14 within a round, and you deal a 1-round annoyance for casters as well.

### Make Gram, the Sword of Grief able to become +6 and rebalance effects (1607) (BG2EE EET)

- Poison is underrepresented and as such, its minimum damage has been risen:
  - Base version: instead of 2d12, it's 2d6+12, with a 10% chance of triggering (vanilla)
  - Upgraded version: same damage, but with a 15% chance of triggering instead of 10%
- Upgraded version now becomes +6, matching therefore the maximum damage of Warblade +4 and becoming the most powerful damaging two-handed sword per hit in the 1d10 range
- Passive +5% MR is now +10% (it has to compete with Carsomyr so 5% for a two-handed weapon is nonsense)
- The 1-level drain per hit with -5 penalty on the upgraded version is fairly inconsequential by the time you get it (from Abazigal's corpse). Instead, it causes affected creatures to deal -20% damage for 2 rounds, aka it's a weakening effect, with a save vs. Death -5 to save against it. This also affects magical and elemental damage. Does not stack.

### Make Aule's Staff more effective for non-fighter wizards and sorcerers (1608) (BGEE BG2EE EET)

This makes the weapon not just another silly instance of a unique +3 weapon without a single remarkable feature. So it's now a solid staff for wizards and sorcerers, inspired by the description. Specifically, it affects mages, mage/thieves, cleric/mages, and sorcerers. They will get an extra attack per round. Other classes will use it as a regular +3 staff.

### Make the Impaler slightly more scary (1609) (BG2EE EET)

The weapon now has +5% higher chance to critically hit, and critical hits add +5 piercing damage.

### Make Harbinger more convenient (1696) (BGEE BG2EE EET)

- Fireball now no longer depends on wizard level, it will deal 10d6 fire damage, and behaves otherwise like a normal wizard fireball spell
- For convenience, the fireball now does not damage the wielder, but can damage the allies
- The ogre petrification effect is now set up so non-ogres don't have to save vs. spell when hit, polluting the console log for no reason
- "Restored" a sound effect on the fireball that was pointing to an invalid resource, and added one similar that makes the fireball have a new snappy sound

</details>

---

<details>

<summary>

## One-handed Swords

</summary>

### Make Ninjatô of the Scarlet Brotherhood better and more available (1125) (BG2EE EET)

This makes this sword usable by non-monks of any alignment. Additionally, the sword has now a speed factor of 0 and inflicts 1 poison of damage on hit. And for Monks only, additionally, it gives a +5% critical hit chances while holding this weapon and grant a +2 THAC0 bonus and again for off-hand weapons.

### Make Blackrazor able to hit targets immune to +3 (1126) (BG2EE EET)

This allows this sword to be usable in more cases. Since it's extremely powerful, no other changes are added.

### Make Peridan more powerful vs. dragons and wyverns with a better description (1127) (BG2EE EET)

The description of Peridan is slightly misleading because it states that it does "double damage to dragons." You may think that every time you do damage to a dragon with it, you deal the same damage again, or perhaps you think the damage value of every attack is always double of what it would be against other enemies (like a critical hit). Uhh, not quite.

In reality, the sword deals 1d8+2 against all enemies and 1d8+2 again in a second tick of damage that isn't affected by strength modifiers, if the enemy is a dragon. So now the description is a bit more explicit about what it does and:

- Regeneration improved to 1 HP per 5/2 rounds
- Adds 15% resistance to all elements (i.e., the damage type of most dragons)
- THAC0 against dragons and wyverns has a +4 bonus
- +2 Armor Class vs. Dragons and Wyverns (essentially like a "Protection from Dragons and Wyverns" spell)
- Detect Invisibility can be cast three times, not once per day
- Deals an additional tick of 2d8+2 damage if the target is a dragon or wyvern

### Make The Equalizer slightly more powerful (1210) (BG2EE EET)

Honestly, it kind of feels like it's immediately not useful by the time you get it. The description is also slightly misleading because it looks like it will deal, for example, 1d8+6 against some alignments in the same way that a +6 long sword would, but it's not like that. It actually just inflicts 1d8 (like a normal non-magical sword) and then additively includes the damage, which is generally much less powerful. Therefore, the following improvements now exist:

- The sword now has an enchantment of 5 for the purposes of what it can hit and in terms of speed factor.
- The sword acts as a 1d8+3 in all other respects as a baseline.
- The extra damage it deals based on alignment follows the same rules, but is now divided in half slashing, half magical, instead of all slashing. For example, against chaotic evil, you'd deal +3 slashing damage AND +3 magical damage on top of normal damage.
- The sword now also grants passive improvements depending on alignment, benefitting the most those that are neutral:
  - All alignments: +1 Armor Class, +5% Magic Resistance
  - All morally neutral alignments: +1 Damage, +1 Saving Throws, +5% Magic Resistance
  - True Neutral: +1 Armor Class, +1 Saving throws, +5% Magic Resistance, +5% critical hit chances with all weapons

The rest stays the same. Side note: the THAC0 bonuses that it grants towards alignments (this is vanilla behavior) are universal, does not apply only to the equalizer, so if you put the weapon off-hand, and then put something else on your main hand, it shall be affected either way. This can be a way of optimizing THAC0 against, for instance, Chaotic Evil targets, such as Demogorgon, when using a character that can duel wield effectively.

This behavior is present in other weapons that have a THAC0 bonus vs. types of enemies, such as the silver dagger. Only two-handed weapons can isolate the THAC0 bonus (since you can't use another weapon at the same time).

Hopefully this will make the sword feel more legendary and worth the investment.

### Make Ras, the Dancing Sword slightly better (1220) (BG2EE EET)

This makes it useful for far longer, and more like the Sword of Mordenkainen. Additionally, drawing inspiration on this "dancing" thing, it has extra features given by the fact that the sword can "dance" on its own while being wielded as if with sentience:

- +1 Armor Class, +2 against piercing and slashing
- Speed Factor: 1
- THAC0: +4
- It's a flashy sword, and kits that are used to flashy fighting get bonus +1/2 APR: Blades, Shadowdancers, and Swashbucklers

### Make Short Sword of Mask slightly more powerful (1230) (BG2EE EET)

Makes the chance-based Level drain take 2 levels instead of just one and the Entangle effect 5% more likely to trigger (20%). In both versions of the sword, entangle is no longer subject to magic resistance.

### Make Purifier's powers better and affect all evil (1240) (BG2EE EET)

Just as the title says. It's kind of funny considering the description of the weapon mentions Pit Fiends, which are Lawful Evil. It also makes the charge ability of Dispel Magic effect equal in power as those in the Staff of the Magi and Carsomyr. Both changes are optional.

### Make Yamato's passive abilities more substantial (1250) (BG2EE EET)

The effect is pretty underwhelming for a +4 weapon. Since it's advertised as a defender weapon, Armor Class bonus improved to 2 (instead of 1) plus 1 against slashing, piercing, and missile weapons. 5% universal damage and magic resistance.

### Make Usuno's Blade slightly more electrically powerful (1260) (BG2EE EET)

The effect is pretty underwhelming for a +4 weapon. Now:

- Chance of dealing 2d10 electrical damage increased to 15% and is now 5d4+1, with a save vs. Spell at -2 for half
- Every hit deals 1d3 electrical damage with no save allowed
- Increases electrical damage resistance by 40%

### Make Spectral Brand slightly better (1270) (BG2EE EET)

This makes the summoned blade last for a full turn instead of 4 rounds. Additionally, the Armor Piercing charge ability also improves damage by +4, critical hit chances by +10%, and critically misses become impossible to trigger (effectively impossible unless something is increasing the chances of having critical misses).

### Make Dakkon's Zerth Blade behave as a +3 weapon (1315) (BG2EE EET)

This makes the katana +3, for consistency with the power level of other WA-weapons.

### Make Holy Sword of Tyr affect all evil (1319) (BG2EE EET)

Self-explanatory. I also removed the weird preamble that includes the first sentence of the general description of long swords. Seems lazy, and perhaps a mistake.

### Make Hindo's Doom a +4 and +5 weapon and inflict extra damage to undead (1341) (BG2EE EET)

This allows the game to grant you a +4 and +5 katana, and following the theme of the katana, each strike inflicts +4 or +5 extra magical damage to undead only, depending on upgrade.

### Make Adjatha the Drinker thirstier (1470) (BG2EE EET)

This component will make the healing per it based on probabilities, such that there is a 50% chance it will heal by 1, 20% it will heal by 2, 15% it heals by 3, 10% it heals by 4, and 5% it heals by 5.

### Make Drizzt's weapons slightly more worth stealing in BG2 (1550) (BG2EE EET)

By the time you get this weapon in BG2, it's generally underwhelming, and you have better weapons already. This improves his weapon in a few ways, trying not to stray too much from the lore:

- Both: Act as a +5 weapon for the purposes of what they can hit and in terms of THAC0.
- Icingdeath: It's a "frost" weapon, and as such, it also inflicts 1d3 cold damage per hit, +5 against creatures immune to fire (fire elementals, fire salamanders, fire giants, etc.). It's also considered a silver weapon.
- Twinkle: It has a defensive theme, therefore: added +2 Armor Class bonus against slashing, piercing and missile, +1 save vs. Spell, +8% physical damage resistance.

### Make Hawksight slightly more passively powerful with a unique description (1580) (BG2EE EET)

This component takes the theme of speed and accuracy more seriously, and hence, other than giving +1 Dexterity it also:

- Has +4 THAC0 bonus instead of +2
- Universal +1 saving throw bonus
- +1/2 APR

Optionally, it also adds a description worth-reading (YMMV). I really dislike items with unique names, but with no interesting description or brief backstory. It seems lazy and uninteresting to add a named item without any background. Additionally, it adds a minor power to it, based on this brief backstory.

### Make Vexation more powerful (1582) (BGEE BG2EE EET)

I've always liked this sword conceptually, and it's introduced into the game in a very cool way. This makes this short sword another +3 weapon and additionally improved in the following ways:

- Critical hits inflict 2d4 extra piercing damage
- Bleeding per hit improved to 1d2 from 1

Note that this will make the encounter relatively more difficult, obviously. Protect your mages: they will likely be targeted and promptly chunked.

### Make Kachiko's Wakizashi more unique with an upgrade path for Cespenar (1583) (BG2EE EET)

I really hate unique items with nothing in the description worth reading, so I tried to add something a bit more worth reading. For reasons described in the description, it is now called Kachiko's Whisper. The following additions are included:

- Confounding whisper: Wisdom -2 penalty lasts for 6 rounds now as opposed to 2 rounds.
- Shadowdancers receive: +10% Hiding skills and +1 THAC0
- Can cast Shadow Blink three times per day: teleport instantly to a place in sight, becoming invisible for 2 rounds, and becoming unable to critically miss for the duration. Shadowdancers, monks, and stalkers get a +1 to their backstab multiplier for the duration.

This component also adds a path to be improved by Cespenar, requiring a scroll of Shadow Door and Wail of the Banshee, and 10000 gold pieces, becoming a +5 weapon. This can be disabled in the configuration file.

### Make The Brass Blade cast better fireball spells (1584) (BG2EE EET)

The Brass Blade is an unused weapon that allows you to throw a Fireball as per the 3rd level wizard spell, and it's tied to caster level, which means only Fighter/Mages would be able to take advantage of the full power of this -- other classes would throw a much weaker Fireball. This changes the power such that it casts instead a Delayed Fireball at max level, and adds the power to cast Sunfire too. Next, it also reduces fire damage on hit per from 10 to 5, since that was a little overpowered and fixes that damage being able to bypass mirror images.

Note: you need to have a mod installed that restores this weapon in order to get it organically. An example of this is **Convenient Enhanced Edition NPCs** by Argent77.

### Make Arbane's Sword of Agility's Haste last 1 turn (1585) (BG2EE EET)

1 turn is better than 2 rounds. Additionally, the speed factor of the weapon is now 0.

### Make Blade of Searing more Searing (1586) (BG2EE EET)

This makes this weapon more interesting by replacing the simple +1 fire damage by:

- 1d3+1 fire damage on hit
- Can make the target catch on fire, causing it to receive 1d3 fire damage per round for 3 rounds if a save vs. Spell is failed

### Make Water's Edge unique in function (1588) (BG2EE EET)

The unique description with no unique functionality bothers me, therefore:

- +20% cold resistance on equipping
- Causes 1d2 cold damage on hit

### Make Rashad's Talon unique in function (1589) (BGEE BG2EE EET)

The unique description with no unique functionality bothers me, therefore:

- Cursed wound: critical hits with this weapon prevent most sources of healing for 2 rounds
- +5% critical hit chances with this weapon

### Make The Shadow Blade unique in function (1596) (IWDEE BGEE BG2EE EET)

- +1 Backstab bonus (single-classed thieves only)
- +2 Main Hand THAC0 (single-classed thieves only)

They're relegated to single classed thieves because they need it more, I want to promote specialization, and for balance, since multiclassed Thieves have other alternate means of increasing their THAC0 and general damage.

### Make Cutthroat unique in function (1598) (BG2EE EET)

This weapon is not even a normal +4 weapon, since the speed factor is not 0 as it normally would. This is a bug that is fixed by the fixpack, and also by this mod automatically. Therefore:

- Speed Factor: 0
- Critical hit chances: +10%
- Critical hits cause bleeding: 1d6 piercing damage immediately, and again each round for 2 rounds

### Make The Burning Earth better and improve the misleading description (1605) (BGEE BG2EE EET)

You get this weapon fairly late in BGEE, and it sucks. Also, "cold-using creatures" only includes WINTER WOLVES. The description is overly generous because there's not much point in calling it "cold-using creatures" if it's only winter wolves. Here are the changes:

- Behaves exactly as a +2 weapon
- Deals by default +2 fire damage on hit
- The following creatures are considered now also "regenerating": planetars, dark planetars, solars, and fallen solars. The sword will act as if it were +3 and +4, respectively, for the purposes of being able to hit these creatures. There may be others that would qualify as "regenerating", but I'm not sure.
- Silver Dragons are included as "cold-using creatures"
- The extra damage will be fire damage, not slashing

### Make Ilbratha give the wielder a chance to activate Blur when attacked (1701) (BG2EE EET)

This slightly improves the largely unremarkable +1 short sword by giving wielders a 7% chance each time they're hit to be affected by Blur.

</details>

---

<details>

<summary>

## Axes & Blunt

</summary>

### Make Defender of Easthaven damage reduction a little more moderate (1310) (BG2EE EET)

The bonuses of this weapon are very significant, and it is an infamous tool for powergaming and no-reload runs. I reduced the resistances to 10%. It's still significant, while still reducing the chances of breaking the game.

### Make Krotan's Skullcrusher slightly less generic (1311) (BG2EE EET)

Yet another enchanted, unique weapon without any special trait of any kind. It now possesses the same bonus as Skullcrusher (in the vanilla game), which is a +2 damage bonus to humanoids

### Make Skullcrusher slightly more crushy (1312) (BG2EE EET)

This component improves the extra damage against humanoids to +4.

### Make Gnasher slightly more painful (1313) (BG2EE EET)

This component makes the "pain" that the description talks about manifest as a non-stackable 2-round weakness: -2 penalty to Armor Class, THAC0, and Damage.

### Make Jerrod's Mace behave as a +3 weapon (1314) (BG2EE EET)

This makes the mace +3 for consistency with the power level of other WA-weapons. It also improves the damage and THAC0 bonuses against fiends by 1.

### Make Flail of Ages +5 allow Haste and Improved Haste and improve it slightly (1320) (BG2EE EET)

I think everyone agrees that this type of restriction (Free Action) makes the weapons immediately less appealing. It will not reset your character's movement speed either. A side effect of this component is that the Free Action spell no longer sets movement speed to the baseline. The description was adjusted to reflect that.

### Make Bone Club reflect the description better and improve it slightly (1321) (BG2EE EET)

This makes the club slightly more powerful (+3 in all respects), more shamanic, and more damaging to undead: acts as +5 against them, with THAC0 bonus of +5 against undead, undead take +4 damage, and spectral undead take +8.

### Make Wyvern's Tail more poisonous (1324) (BG2EE EET)

This improves this item in the following ways:

- Causes 2 poison damage per hit with no save allowed
- If save vs. Poison is failed, it deals 5 poison damage over 5 seconds. There's a 4% chance that this poison will be as lethal as that of an adult wyvern, becoming instead 25 poison damage over 5 seconds. The save vs. Death is at -2 in this case.

### Make Borok's Fist different from Ashideena (1325) (BG2EE EET)

This exists simply because I hate that it's identical to Ashideena. So, inspired by the description, it has a neat bonus against giant humanoids: on hit, they get Stunned for 1 round if they fail a save vs. Spell at +2. Additionally, the electrical damage on hit is 1d2 and not 1, so it is very slightly more effective as a general use weapon compared to Ashideena.

### Make Club of Detonation's better and its fireball power class-agnostic (1327) (BG2EE EET)

The club of detonation is a fairly inconvenient weapon to use, as the fireball is presented as a detriment, and the upgrade to it reduces its chances to trigger. It was reworked as follows:

- The fireball is no longer the wizard spell, tied to wizard spell levels, but a custom fireball that will deal no damage to the user and allies, and always deal 8d6+12 fire damage (Save vs. Spell for half). The fireball will also bypass magic resistance as it is no longer considered a wizard spell, but fire, so to speak, coming from the demon.
- Speed factor was also modified to take into account enchantment levels, as generic enchanted weapons do
- The chances of triggering on the +5 version were increased from 5% to 10%, as the club is no longer conceived as something that may inconvenience the user randomly with a fireball. It's just good news now for your party and bad news for your enemies.

### Make Storm Star more shockingly electrifying (1328) (BG2EE EET)

This makes the weapons more interesting in this way:

- +4 version will improve electric resistance by 20%, the +5 version by 40%
- +4 version will increase electric damage output by 5%, the +5 version by 7%
- +5 version will deal +1 more electric damage on hit
- +5 version chain lightning effect will have a 12% chance of triggering instead of 5%
- Whosoever holds this mace, if they be worthy, will have their body crackling with electricity, causing 1d2 electric damage to any who dare hit them, with a 15% chance of stunning them for 1 round if they fail a save vs. Spell at -4

</details>

---

<details>

<summary>

## Ranged

</summary>

### Make Asp's Nest darts more dangerous (1010) (BGEE BG2EE EET)

This makes those very expensive darts much more likely to affect characters, which is a fair compensation for their rarity and huge monetary cost. Save vs. Death is now at -4 (unless overridden in the configuration file). Additionally, 1d2 poison damage is caused on contact.

### Make Darkfire Bow slightly more remarkable (1330) (BG2EE EET)

Makes the elemental resistances against fire and frost increase to 15%, 30% at +5. Additionally, the +4 version makes all arrows deal extra 1 cold and fire damage (2 damage at +5).

### Make Taralash slightly more remarkable (1340) (BG2EE EET)

The +5 version literally just increases the THAC0 bonus by 1. Nothing more. So now they're reworked as follows:

- +5 version makes the movement bonus 5 (from 2).
- +5 version adds a damage bonus of 1 like as if it was a composite bow
- Both versions deal 3 or 5 extra damage to living non-humanoids, and apply a small debuff if they fail their save, damaging their Armor Class, saving throws, and movement speed for 2 rounds.

### Make Protector of the Dryads deal +2 damage to orcs, ogres, gnolls, and goblinoids (1342) (BGEE BG2EE EET)

Inspired by the description, it deals +2 damage to orcs... as well as some groups of similar monsters that would band together to spread evil on the Sword Coast: ogres, gnolls, goblinoids (goblins, hobgoblins, and bugbears).

### Make Mana bow more magical and more deadly against arcane casters (1343) (BG2EE EET)

This follows the theme of the description, which is an anti-wizard theme, and thus the following changes were added:

- Magic damage resistance: 33% (from 20%)
- Magic Resistance: 5%
- Arrows force a Save vs. Spell at -2 or the target suffers 1d4+1 magic damage and 10% cumulative arcane casting failure for 4 rounds (which can be dispelled)

### Make Arrows of Biting apply poison faster and improve the misleading description (1344) (IWDEE BGEE BG2EE EET)

The description states that 30% of the health of the target will be lost by the time the poison is done, but that's not actually true. Therefore, now it deals 30 points of poison damage over 30 seconds, similar to Bolts of Biting, but slower. Additionally, these arrows will have a 5% higher chance of critically hitting.

This will in turn make Hobgoblins and Sirens in BGEE significantly more dangerous if they get the poison off on you, since -30 HP is a big deal in BGEE. Keep the antidotes and healing ready (my potion, cure poison spells, and healing spell overhauls help wink wink).

### Make Arrows of Fire cause fire damage always, same as Arrows of Ice (1345) (IWDEE BGEE BG2EE EET)

This removes the save from the damage effect, therefore 1dx fire damage will always be inflicted.

### Make Arrows of Piercing always cause at least half of the extra piercing damage (1346) (IWDEE BGEE BG2EE EET)

This makes the arrows cause at least 3 extra piercing damage when save succeeds. This should make these expensive arrows feel like less of a waste when used, especially against targets with good saves. Additionally, these arrows will have a 10% higher chance of critically hitting. Magic resistance is also not affected. It also standardizes them to behave as +3 weapon, like in IWDEE.

### Make Bolts of Biting slightly more deadly (1347) (IWDEE BGEE BG2EE EET)

This improves the bolts slightly by causing direct poison damage, which may be useful for caster interruption, and it helps compensates the lack of enchantment or THAC0 bonus. Additionally, these bolts will have a 5% higher chance of critically hitting, since I envision these as assassin's tools.

### Make projectiles from Shortbow of Gesen as fast as regular arrows (1348) (BG2EE EET)

Self-explanatory, the normal projectiles are way too slow.

### Make Arrows of Dispelling force a save vs. Spell at -2 for them to work (1371) (IWDEE BGEE BG2EE EET)

Simply a balance tweak.

### Make Acid Arrow's extra damage not subject to magic resistance (1388) (IWDEE BGEE BG2EE EET)

Self-explanatory. It also justifies the higher price compared to other elemental arrows more.

</details>

---

<details>

<summary>

## NPCs

</summary>

### Make Chaos and Entropy grant 1/2 APR each and improve them slightly (1380) (BG2EE EET)

My first move whenever I used Haer'Dalis was to give him swords that granted him extra attacks. These are his personal swords, so it feels wrong to not use them. This makes it more appealing to use them since now he will have 3 APR when dual wielding by default. Both have a speed factor of 0.

Additionally, it makes Entropy cause 6 poison damage, on a Save vs. Death at -1 instead of 3 with a save without penalties or bonuses, and it makes Chaos reduce the struck opponent's saving throws vs. Death by 1 for 2 rounds. They both gain a speed factor of 0 and can hit targets immune to +2 weapons, like balors.

Chaos is also now similarly restricted to Tieflings, much like Entropy and according to the description.

This component is compatible with Improved Haer'Dalis Swords mod, which makes the weapons +4 after upgrading. The benefits in the upgraded version will mirror the baseline, except:

- Save vs. Poison penalty for Entropy is -2, 9 poison damage
- Save vs. Poison debuff in Chaos is -2 and lasts for 3 rounds
- Act as +5 weapons
- Can only be wielded by Haer'Dalis

### Make Yoshimo's Katana slightly more unique and powerful (1480) (BG2EE EET)

This component keeps to the idea that it is only lightly enchanted, but it also offers a few advantages to Yoshimo only:

- Speed factor reduced to 1 from 3
- THAC0 bonus increased to 3.
- Sets proficiency with katanas to 2, unless it's higher.
- +10% critical hit chance

### Make Mazzy's weapons slightly more powerful (1500) (BG2EE EET)

Come on, Arvoreen! Be more generous to your most faithful holy warrior.

- Bow of Arvoreen grants extra 1/2 APR to Mazzy, +3 THAC0, and +1 damage
- Sword of Arvoreen grants extra 1/2 APR to Mazzy, +4 THAC0, and becomes in most respects a +3 weapon, except it can hurt enemies immune to +3 weapons.
- Only Mazzy can wield these

This component will patch Item Upgrade's upgraded versions of these weapons as well.

### Make Delryn's family shield become a +2 shield (1510) (BG2EE EET)

Just a simple buff to make the shield a good option for longer. This also applies automatically the changes to this item in Component 1644.

### Make Hallowed Redeemer able to hit enemies immune to +2 weapons (1520) (BG2EE EET)

This extends the usability of the weapon, despite the lower damage, if the constant shield the weapon grants is desired. This also applies automatically the changes to this item in **Component 1644**

### Make Abyssal Blades more powerful (1640) (BG2EE EET)

This improves the blades such that they have an enchantment of 5 (only for the purposes of what they can hit!), and thus their usability is extended until the end of the game, if so desired.

Additionally, the versions that have one fiend in them deal +1 fire damage compared to baseline. The version that has two deals +2.

### Make the item creation abilities of vanilla NPCs slightly better (1641) (BGEE BG2EE EET)

This makes these skills generate more items. Jan Jansen will create 10 Bruiser Mates. Eldoth will create 15 poisoned arrows. Additionally, his poisoned arrows will deal 20 poison damage over 40 seconds instead of 13.

### Make Nalia's ring slightly more powerful (1642) (BG2EE EET)

Equipped items that you cannot remove from NPCs are quite inconvenient, since they prevent your character from being upgraded in the ways you desire. This component makes the ring more powerful, relatively diminishing this annoyance. Specifically, other than improving Armor Class and saving throws by 2, and granting 50% fire resistance, it also adds:

- +20% bonus to Pick Locks and Find Traps (compensates fewer Thief levels compared to Imoen)
- 1 extra spell slot from level 1 to 5

### Make Corthala family blade more powerful and more effective against wizards (1643) (BG2EE EET)

This makes the blade grant Valygar the following perks:

- +1 backstab multiplier (this will ignore the backstab multiplier tweak and behave as you would expect)
- Total bonus of +6 THAC0 against wizards and sorcerers
- It changes description and icon to poison instead of bleeding, since bleeding in vanilla game is utter bs.
- It also makes the poison damage subject to save vs. Death at -2

It also applies automatically the changes to this item in Component 1644.

### Remove the unnecessary stat restrictions in NPC's gear (1644) (BG2EE EET)

The stat restrictions are a remnant of an older, inferior way of making the gear usable only by THEM... Unless, of course, you happen to have the exact same stats as them. This removes these restrictions, though only in the items that seem too arbitrary:

- Cernd's gear
- Valygar's gear
- Keldorn's gear
- Anomen's shield (requires 13 Charisma, removes this requirement only)

The rest seem less arbitrary: Jan Jansen's special gear requires 17 dexterity (i.e., ability to handle it), Mazzy's (no special restrictions), Haer'Dalis' (no special restrictions), and Yoshimo's (no special restrictions).

### Make Cernd's cloak more powerful (1645) (BG2EE EET)

This component makes Cernd's cloak more worth hanging onto. As it stands, it is like a +1 cloak of protection, with the bonus that it can be worn with other magically protective items. Now it's more unique and seems more significant for our druidic lupine sensei. Additions (saving throws stay as they were):

- +2 Armor Class (from +1)
- Physical damage resistance: +10%
- Elemental damage resistance: +15%
- Regeneration: 1 HP / 2 rounds

Overall, this will complement his werewolf shapes and druidic traits. Obviously this was made with the assumption he's a shapeshifter and not any other kind of druid (though it's unlikely it will break anything -- unless he's a fighter/druid perhaps, due to the stacking of physical resistances).

It will also remove the needless stat restrictions from the item.

### Make Sarevok's Deathbringer assault a bit more balanced (1646) (BG2EE EET)

Deathbringer assault is a bit stupid. Yes, it's very cool. Yes, big ToB bosses are not affected. And it triggers only 3% of the time. But it's still 200 slashing damage, without even a save to take only half. Sarevok also causes stun (even though it's supposed to be a fear-induced state) 11% of the time when he hits for 2 rounds, which is almost always a death sentence when it happens, and cannot be dispelled, as it is a natural effect. The following changes are applied:

- The damage part of the assault is now 120 (overridable in the config file), and allows a save vs. Death at -5 to take half. 60 damage is still a BIG FAT hit, which is added on top of a regular hit, so... You'll be fine
- Golems, other constructs, slimes, spiritual beings, spectral undead, and dragons are all immune to the damage no matter what
- The stun is meant to be an effect of fear, not a "stun" per se, and as such, it's no longer a stunning effect, but a fear effect that roots the enemy in place and lowers their Armor Class by 10. As such, only creatures that are not immune to fear will be affected by this.
- The probability of stun (now a special type of fear) is a proper 10% chance
- For flavor, Sarevok will also use his "Die!" line when a Deathbringer Assault happens

This component contains the same fixes as Tresset's Deathbringer Assault component. No need to use both.

### Make Shar-Teel especially effective when fighting male-gendered opponents (1647) (BG2EE EET)

This component makes Shar-Teel's effectiveness vs. males fit her hate and boasting. A bit gimmicky, but it's very amusing to me:

- +1 to THAC0 and Damage vs. males (of any race)
- +2 Armor Class vs. males (essentially as if she had a Protection from Men spell on her)

Note that this means she has a bonus against things that *may* make no sense they're set as "male", like battle horrors. My mod, however, fixes this whenever a component is installed, ensuring sexless and genderless creatures are set as such. Creatures of that nature include angels, demons, elementals, mind flayers, golems, battle horrors, beholders, and others. All those instances will be fixed so this component and any other that targets gender directly works more consistently. This fix can be disabled in the configuration file, but it's not recommended installing this component without it. Final note: summoned creatures have a special "gender" set to them which marks them as summoned creatures, so they will not be affected by this component, even if their normal version would routinely be considered "male". Not my fault they used "gender" as a weird mark for various purposes, blame Bioware!

### Make Hexxat's Blood Drain have a cooldown instead of being usable once per day (2240) (BG2EE EET)

This improves the usability of this skill by simply allowing it to be used more often (once per in-game hour). I'm planning to improve it further in the future after I figure out how in the world the ability works.

Fair warning, as with all abilities with cooldown, DO NOT use CTRL+R on Hexxat while it's on cooldown, as it may cause her to lose the ability entirely, since it destroys the effect that **returns** the ability to her.

### Make Edwin's amulet nuanced in the privileges it grants to that snake (2250) (BG2EE EET)

There are no words to express how much I hate that Edwin is the best wizard to have along because of the absurdly overpowered amulet he has. He, like Haer'Dalis, represents another one of those instances I hate of an NPC going to always be better than CHARNAME in their class or kit. So now the item gives him something a bit more nuanced:

- Removed the spell slot bonus madness: In BGEE, he gets *one* extra spell slot of levels 1 and 2. In BG2EE, this is extended to levels 3 and 4 too. That's it. It's a nice bonus, but not game breaking.
- He gets a +2 to saving throws vs. conjuration spells of other wizards, which stacks with his normal +2 specialization bonus.
- However, he has a -2 saving throw penalty against spells outside his specialization.
- And finally, he always cast spells as if he was two levels above his actual level (1 in BGEE).

</details>

---

<details>

<summary>

## Arcane Magic

</summary>

### Standardize Finger of Death magical damage on a successful save (140) (BGEE BG2EE EET)

This component matches the magic damage inflicted by the wizard version of Finger of Death so it's as powerful as the priest version.

### Make Luck last longer and benefit more (145) (IWDEE BGEE BG2EE EET)

The bonus that Luck provides really doesn't justify such a short duration. Now it lasts 1 turn instead of 3 rounds (i.e., 18 seconds) and makes it generally more useful by adding also a 5% critical hit chance boost, 10% total bonus thief skill bonus, as well as 2 Armor Class. The rest is unchanged. You can choose which parts of the component you want to install in the configuration file.

### Make Black Blade of Disaster and golem iron fist unsuitable for backstabs (160) (IWDEE BGEE BG2EE EET)

This exists simply to destroy any temptation to use these as cheesy ways to get insane numbers with backstabs that would instantly kill most things with HP and normal damage resistances in one hit. So now they should not be able to trigger backstabs. You can disable either case in the configuration file.

Technical details: this sets backstab multiplier to 0x. It would be possible to make them backstab again if you had effects on that increased backstab multiplier. So if you were a level 21 assassin and shape-shifted to an iron golem, your backstab multiplier would change from 7x to 0x, and if you then added an item that increased it by, and cast an ability that increased it by 2, your backstab multiplier would become 3x, even as an iron golem.

This can also be made to function as backstab multiplier reduction instead of an outright disable. Check configuration file. If backstab multiplier reduction is chosen, it will override whatever was added by component 1150, if it was installed before. Component 1150 will still add a reduction of backstab multiplier if installed after, however.

### Make Wail of the Banshee cause side effects on successful save and bypass Magic Resistance (170) (IWDEE BGEE BG2EE EET)

This exists because I personally dislike using spells, especially high level spells, which are powerful but unpredictable, so that there is a benefit to using them regardless. Therefore, on a successful save (or if the target is simply immune to the slaying effect), it will cause 3d6+3 magic damage and cause deafness for 2 rounds. This also makes the spell bypass magic resistance.

### Make Meteor Swarm do more minimum damage and bypass magic resistance (180) (IWDEE BGEE BG2EE EET)

The problem with Meter Swarm is that the likelihood of doing very low damage is quite high, which is pretty bad for a level 9 spell. To make it worse, it doesn't bypass Magic Resistance either. Now it will instead do it like Fire Storm, causing 2d10 + 1 point/level (i.e, 22-40 fire damage per round instead of 4-40 damage per round), and no Magic Resistance will apply.

### Make Horror an Enchantment spell (210) (IWDEE BGEE BG2EE EET)

This mod simply changes the school to Enchantment, which is probably more accurate for a mind-altering spell.

### Make Ice Storm do more damage, including piercing damage (220) (BGEE BG2EE EET)

I think the damage is a little low for a 4 round static effect (2-16 cold damage per round). Now the damage will be 2d8+2 cold damage plus 1d6+2 piercing damage. Piercing was added because the animation indicates pointy ice is what falls down upon your foes.

### Make Ray of Enfeeblement a Necromancy spell (370) (IWDEE BGEE BG2EE EET)

It probably makes more sense to make this spell a Necromancy spell like in NWN and NWN2.

### Make Contagion cause 4 points of Strength and Dexterity damage (380) (IWDEE BGEE BG2EE EET)

2 points of damage for STR, DEX and CHA is underwhelming, and CHA reduction is irrelevant unless using particular mods. Now it reduces 4 STR and DEX, which should be a little more meaningful and more worth the level 4 slot.

### Make Death Fog inflict 1d8+8 acid damage and optionally bypass Magic Resistance (390) (BGEE BG2EE EET)

Improves the usability of Death Fog as a "general purpose" damage dealer instead of just a stationary lingering anti-summon spell. The options for acid spells are very lacking in the game anyway. So instead of 8 acid damage per round now it will be between 9 and 16 per round with no save. Optionally, magic resistance will be bypassed. You can undo this in the configuration file.

### Make Energy Drain take 6 levels instead of 2 (400) (IWDEE BGEE BG2EE EET)

2 levels of drain is unremarkable and a waste of a spell slot, particularly when the likely enemies to fight by the time you get this spell are fairly high level. Additionally, this makes the spell behave similarly to how it does IWDEE, where outsiders, undead, and constructs are ensured to be immune to it.

### Make Maze bypass Magic Resistance and make minotaurs immune to it (405) (IWDEE BGEE BG2EE EET)

I think this makes this spell quite more useful, although perhaps it's too powerful like that if used against some enemies. I like this tweak, but I'll use the spell judiciously (perhaps not mazing dragons, for example). Additionally, minotaurs are immune to it, same as IWDEE.

It will also prevent movement while the animation plays out. It also patches the shadowdancer version to behave the same (inapplicable if my shadowdancer overhaul is installed).

### Make base Imp Familiars have 12/24 HP like the other familiars (407) (IWDEE BGEE BG2EE)

This allows you to be Lawful Evil and enjoy the same amount of HP bonus as other alignments. I see no reason there should be a bias against the Imp familiar.

### Make Horrid Wilting more effective vs. plants and Water Elementals and increase minimum damage (410) (BGEE BG2EE EET)

This makes the spell mirror the behavior in 5E/BG3, where plant and water-based creatures always take maximum damage with a Save vs. Spell at -2 (this penalty is missing in vanilla), halved on a save. Additionally, enemies that are not damaged by draining moisture are unaffected (undead, golems, and non-water elementals).

Finally, it modifies the dice size and damage bonus, such that instead of dealing 1d8 damage per level, it deals 1d7+1 per level. Ultimately, it deals the same maximum damage. The difference is that the minimum damage dealt will be higher, such that the damage range will be 40-160 at max level, if the saving throw is failed (vanilla is 20-160).

### Make Grease bypass Magic Resistance and more useful tactically (430) (BGEE BG2EE EET)

A very cool part of other games using the Grease spell is that it actually primes the area for extra fire damage. This component emulates that behavior by causing character in the Grease field a 6-second -25% weakness to fire and also makes part of the speed reduction unavoidable. Failing the save will simply increase the slowdown significantly.

This component also swaps the horrendous repeating sound when it's active for the one that Web uses in BGEE.

### Make Comet bypass magic resistance and deal a mix of cold, fire, and crushing damage (440) (BG2EE EET)

As others have noted, this spell is generally just less powerful than Dragon Breath (the latter also is not affected by Magic Resistance). This is an attempt at making it more unique. As for the rationale, comets are cold and icy, hence the cold damage, but burn when in a collision path, hence the fire damage, and are big rocks, hence the crushing damage. The breakdown of damage is: 2d10+10 cold, 2d10+10 fire, 3d10+10 crushing.

### Make Tenser's Transformation grant a THAC0 of 0 at max level and APR at the appropriate levels (441) (BGEE BG2EE EET)

Makes this spell achieve a THAC0 of 0 at max level, since the description clearly states "fighter of the same level." They also get 1/2 APR at levels 7 and 13. This APR does not stack with the one provided by Holy Power (component 190).

Finally, by default, it will only grant APR to non-fighter casters, as fighters already have the APR they need. This can be disabled in the configuration file.

### Make Flesh to Stone and Stone to Flesh more unique (444) (IWDEE BGEE BG2EE EET)

This overhauls these two spells (both optional) in the following manner:

- Flesh to Stone: This makes this spell force a save vs. Petrification instead of a save vs. Spell. I think Flesh to Stone and Disintegrate are way too similar functionally, and it's almost always a better idea to use Flesh to Stone over Disintegrate (and they're both boosted equally if cast by a Transmuter). This affects the version that beholders use as well. Additionally, you can choose in the configuration file to add exceptions to this spell explicitly like in IWD (like to elementals and spectral undead).
- Stone to Flesh: this spell should affect stone golem as per PnP, making them lose their weapon immunities permanently if they fail their save vs. Spell. All weapons, enchanted and unenchanted will be able to affect it.

Note for users and modders: The Stone to Flesh spell tweak is implemented somewhat naively, since it counts on them using the `IMMUNE2.ITM` item on to provide their immunities. If they have some other item doing that, this might not work. This seems the preferred way in the vanilla files, regardless. This tweak will also try to strip immunities embedded in the creature file itself but won't target other things that might be providing part of their immunities such as their weapons. If you try this, let me know if you notice anything strange.

### Make Bigby's spells more powerful (445) (IWDEE BGEE BG2EE EET)

Bigby's spells are generally a pretty poor choice for levels 8 and 9: low damage and a high chance of either spell doing nothing. This tweak improves those two spells such that they do more damage and are more likely to be effective, bypassing magic resistance as well (but can still be dispelled):

- Clenched fist:
  - 1st round: 4d6+6 crushing damage (originally 3d6, no save)
  - 2nd round: 6d6+4 crushing damage if save vs. Paralysis at -4 is failed (originally 4d6, save vs. Paralysis at -2)
  - 3rd round: 8d6+4 crushing damage if save vs. Paralysis at -2 is failed (originally 6d6, save vs. Paralysis, no penalty)
- Crushing hand:
  - 1st round: 6d6+6 crushing damage (originally 2d10, no save)
  - 2nd round: 8d6+8 crushing damage if save vs. Paralysis at -6 is failed (originally 3d10, save vs. Paralysis at -4)
  - 3rd round: 10d6+10 crushing damage if save vs. Paralysis at -4 is failed (originally 4d10, save vs. Paralysis at -2)

### Make fireball-type spells improve more with level and/or improve explosion animations (446) (IWDEE BGEE BG2EE EET)

This component rebalances several Fireball-type spells to improve their damage scaling at higher levels, making them more competitive choices throughout the game.

- **Fireball**: Damage scales beyond level 10, up to a maximum of 10d6+10.
- **Sunfire**: Damage scales beyond level 10, up to a maximum of 15d6+15.
- **Delayed Blast Fireball**: Damage scaling is significantly improved, starting at 13d6 and progressing to 18d6+20 at level 20. Its explosion radius is also increased to match Fireball.
- **Dragon's Breath**: Minimum damage is increased. The formula changes from 20d10 to 20d9+20.

Additionally, this component includes an optional visual overhaul that replaces the default EE explosion animations for Fireball, Sunfire, Delayed Blast Fireball, and Dragon's Breath with more impressive custom visuals. The damage rebalance and the new animations can be toggled individually in the configuration file.

### Make Melf's Acid Arrow have a chance of splashing enemies and bypass magic resistance (447) (IWDEE BGEE BG2EE EET)

This makes this spell more similar to the 5E behavior, where the acid creates a splash zone. The splash zone will affect immediately adjacent enemies if they fail a save vs. Breath, without affecting the primary target, or allies, for convenience and to avoid modifying the normal strategy in the game when using this spell or meddling with enemy AI. The splash damage is equal to the base immediate damage of the spell, and it does not persist over time, only the primary target gets damage over time. This splash can be avoided with an Evasion check if this feature exists in the game.

Additionally, the spell will bypass magic resistance, as it is conceived as conjured acid, not a magical effect. This behavior can be disabled in the configuration file.

### Make Decastave grant one extra proficiency point with staff while it's held (448) (IWDEE BGEE BG2EE EET)

Self-explanatory. Small quality of life change.

### Make Otiluke's Freezing Sphere deal half damage on save (449) (IWDEE BGEE BG2EE EET)

Self-explanatory. Most spells that deal damage only on a failed save are not very attractive. This will make it a better choice.

### Make Chain Lightning scale more strongly and spread faster to enemies (451) (BGEE BG2EE EET)

This modifies the projectile making it spread faster to enemies. Additionally the starting damage is now 8d6, increasing to 12d6 with the same scaling as vanilla. Both things can be freely allowed or disallowed through the configuration file.

### Make Icelance upgrade damage every 2 levels up to 10d6 (452) (IWDEE BGEE BG2EE EET)

Self-explanatory.

### Make Seven Eyes' granted abilities more powerful (499) (IWDEE BGEE BG2EE EET)

This improves the spell and the abilities granted by it in the following ways:

- It lingers for 8 hours instead of 2 turns
- Eye of the Mage: Cast Sunfire instead of Lightning Bolt
- Eye of the Mind: Cast Domination instead of Charm Person
- Eye of the Sword: Instantly cast 3 Magic Missile spells, instead of just one
- Eye of Fortitude: No changes currently
- Eye of Venom: Cast Dolorous Decay instead of Poison
- Eye of the Spirit: Cast Cause Critical Wounds instead of Ray of Enfeeblement
- Eye of Stone: Cast Hold Monster instead of Hold Person

### Make Control Undead much more likely to be effective (500) (IWDEE BGEE BG2EE EET)

Generally considered a terrible choice for a level 7 spell, this makes it a little more useful. Might make it more powerful in the future, but for now, it bypasses magic resistance and the saving throw has a penalty of -2. Just the fact that it didn't bypass magic resistance was a big detriment to the spell, since many undead are resistant to magic, like the majority of skeletons.

### Make Hold Undead bypass Magic Resistance (502) (IWDEE BGEE BG2EE EET)

Same reasoning as component 500. Applies to Priest of Lathander's version of the spell. Note that this does not affect liches or demiliches, because both creatures are immune to level 4 spells (liches: 1-5, demiliches: immune to everything). Additionally, it makes the save at -1 to mirror Hold Person.

### Make Disintegrate cause damage and slow some golems, as per PnP (522) (IWDEE BGEE BG2EE EET)

This makes the spell cause 1d12 crushing damage to all clay golems, including other creatures considered clay golems in the game such as sand, magical, and brain golems. Additionally, they will be affected immediately by the following effects for 2 rounds:

- Movement speed decreases to a third of what they have
- -10 penalty to speed factor
- -2 to Armor Class and saving throws
- -4 to all combat rolls
- -1/2 attacks per round

This effectively means that hasted clay golems for example, would have most of the benefits they get from their Golem Haste for those 2 rounds.

### Make Chromatic Orb more interesting by providing party-only chromatic varieties (555) (IWDEE BGEE BG2EE EET)

This improves Chromatic Orb to make it a little more interesting, giving players the choice to cast different varieties of the spell at the moment of casting. Here are the varieties:

- White (Light): Damages Armor Class, Base THAC0 by 2 immediately (no save) and blinds (save vs. Spell) for 1 round and deals minor magic damage. Duration of effects increases by half a round and penalties increase by 1 at level 4 and 7.
- Black (Death): Slays the enemy if they fail a save vs. Spell at 6 and deals 1d4 magic damage. At levels 16 and 20, the saving throw's penalty to resist being slain.
- Green (Poison): Causes 2d4+1 poison damage and poisons target if they fail a save vs. Death, causing 1 point of poison damage every 3 seconds for 2 rounds. At levels 7 and 10, the poison's rate of application increases (every 2 and 1 second, respectively).
- Light Blue (Cold): Causes 2d4+1 cold damage and applies Slow for 1 round if they fail a save vs. Spell. Duration of Slow increases by 1 round at levels 7 and 10.
- Yellow (Acid): Causes 2d4+1 acid damage that bypasses magic resistance. This damage increases progressively up to 4d4+10 at level 20.
- Orange (Fire): Causes 2d4+1 fire damage. At levels 4 and 7, damage increases by 1d4 and affects a small area (save vs. Breath to take half -- only this part)
- Purple (Sonic): Causes 1d4 magic damage and 1d4+2 crushing damage. Deafens for 2 rounds, causing a 30% casting failure for arcane and divine spells, with no save allowed, and stuns for 1 round if a save vs. Spell is failed. Golems take double damage and can't resist it.

Caveats:

- To not interfere with enemy AI, enemies will cast the vanilla version of it (what it is at the moment of installation). If you want other tweaks to modify the base chromatic orb, and you want enemies to use that, install those tweaks before this one.
- The spell is no longer truly usable in contingencies and spell triggers due to the "select spell" nature thereof, similar to what happens with Spell Immunity, for example.
- Due to the technical limitations, and the hacky method to make it not interfere with AI, the spell will have a somewhat odd behavior. When casting on anything, the spell menu will come up without further effect, then you need to select a chromatic orb color, and then cast it on the intended target. You can even cast it on self, and then select a color and cast on the intended target. In other words, the first "casting" is irrelevant as far as targeting is concerned. This is caused because it cannot be self-targeted, as that would disrupt AI.

### Make Agannazar's Scorcher not pause the caster (558) (IWDEE BGEE BG2EE EET)

Just makes the spell more convenient and safe to use.

### Make Web force saves vs. Breath at +0 instead of saves vs. Spell at -2 for balance (561) (IWDEE BGEE BG2EE EET)

Just because I think it makes more sense and the spell is pretty overpowered for a level 2 spell and paralyzing effects are often a death sentence. I actually think many spells should be forcing a save vs. Breath and not a save vs. Spell. Ugh. This mirrors what I did for Entangle.

This change to save bonus does not affect special abilities outside the spells themselves such as spider abilities.

### Make Imprisonment prevent movement while the animation plays out (562) (IWDEE BGEE BG2EE EET)

Just a small tweak to make it look better, in my opinion. It's probably compatible with any other tweak to the spell.

</details>

---

<details>

<summary>

## Divine Magic

</summary>

### Make Glyph of Warding do damage on a failed save and extend damage up to level 20 (100) (IWDEE BGEE BG2EE EET)

Most damaging spells that can be completely avoided are a waste of a spell slot. Thus, it will always cause half damage. Additionally, it extends the headers up to level 20, such that the damage grows up to 20d4 instead of 18d4.

### Make Flame Blade be more effective vs. undead, and last for as long as it does in IWDEE (101) (IWDEE BGEE BG2EE EET)

This makes the sword behave as +2 vs. undead. For technical reasons, this will make the weapon no longer considered non-magical. Finally, it doubles the duration of the spell in BG. Additionally, it doubles the fire damage it inflicts in IWDEE version.

### Make Bless and Curse last longer and increase the casting speed from 6 to 3 (110) (IWDEE BGEE BG2EE EET)

It's not worth it to cast it due to the short duration and the long casting. To improve this, both last 6 rounds plus one extra round every two rounds and faster casting speed.

### Standardize Hold Person's saving throw penalties (130) (IWDEE BGEE BG2EE EET)

This component equalizes the saving throw penalty in the cleric version of Hold Person so it has the same as the wizard one, which is -1.

### Make Holy Power grant a THAC0 of 0 at max level and APR at the appropriate levels (190) (IWDEE BGEE BG2EE EET)

Makes this spell achieve a THAC0 of 0 at max level (BG only), since the description clearly states "fighter of the same level." It further tightens the gap between the cleric and the fighter they want to emulate, getting 1/2 APR at levels 7 and 13. This APR does not stack with the one provided by Tenser's transformation (component 441). By default, non-fighter classes are the only ones getting the extra APR. This can be disabled in the configuration file.

### Make Cloak of Fear work as a temporary aura of fear (230) (BGEE BG2EE EET)

For the most part, I don't think this spell is worth memorizing. Now instead of being a one-off horror effect, it creates an "aura" that triggers once per round for 3 rounds, with the same specifications as the original spell.

This uses the same filename and the same effect as in IWDEE, and attempts to patch known spells that remove fear effects. Might need to be updated if new ways to remove fear are introduced.

### Make Goodberries more genuinely useful (240) (IWDEE BGEE BG2EE EET)

Conceptually, I think it's a cool spell for druids and rangers, but it's not too useful. Now it heals 2d4 immediately and add a regeneration of 1 HP per turn for 20 turns and generates 6 berries with each casting, and stacks of 12. Regeneration does not stack.

### Make Earthquake more effective and disable annoyances (250) (BGEE BG2EE EET)

Earthquake in BG is generally very inconvenient to be cast at any point because of how it affects your whole party. This disables that behavior, and in case you don't enjoy feeling like casting it might make you dizzy, it also disables the screen shake or reduces it greatly. Finally, it also makes it more effective, by making the saves and damage decay less harshly:

1st round: vanilla, 6d6 damage, -6 save vs. death to avoid unconsciousness
2nd round: 5d6 damage, -4 save
3rd round: 4d6 damage, -2 save

These three separate modifications are all optional. Check the config file.

Finally, because Earthquake has this silly behavior where the sound of the quake triggers for every affected creature, it now will only ring once every time it triggers, using the caster as the center point of the sound.

### Make Negative Plane Protection's duration increase somewhat as you level up (260) (IWDEE BGEE BG2EE EET)

It only lasts 5 rounds, which is insufficient for fights with vampires. Since it's a very powerful effect, the increases in duration are moderate, one round per 2 levels up to 11 rounds at level 20.

### Make Entangle more powerful and relevant for druids and shamans (270) (IWDEE BGEE BG2EE EET)

Entangle saves are quite generous for the targets and, as such, very difficult to pull off at higher levels. It's such a hallmark ability for druids that it feels wrong to leave druids without them because it becomes very quickly useless. Additionally, the Armor Class debuff improves to -3 and limits APR to 1 while the character is being held by the vines. It also will make creatures that are too big or have unusual qualities immune to it (dragons, shadows, slimes...).

This component also patches other sources of Entanglement to reflect the same properties where it applies, such as in the Short Sword of Mask.

Therefore, it starts with a +2 bonus (from +3), which improves to +1 at level 5, 0 at level 10, -1 at level 15, and -2 at level 20.

It also changes their saving throws from Spell to Breath and bypasses magic resistance (but still can be dispelled).

Finally, in BG2EE, it also replaces the HORRENDOUS sound while it's active in the field for BGEE's version, which is much more tame and less annoying.

### Make Poison spell do half damage on a failed save (280) (BGEE BG2EE EET)

See component 100 for reasoning.

### Make Iron Skins cast as fast a Stoneskin (300) (BGEE BG2EE EET)

This component reduces the need to use them only in pre-fight buffing rituals, due to the extremely long casting time. In IWDEE this feature is already present.

### Make Fire Seeds markedly more useful and powerful (310) (IWDEE BGEE BG2EE EET)

Not enough seeds and too little damage. From 4 seeds that do 2d8 to 12 that do 3d8+5. The original is way too unremarkable for a level 6 spell. Additionally, the description will mention the fact that they are thrown with a +2 THAC0 bonus, and the seeds no longer bypass most physical protections due to an enchantment level of +6, so now they will be considered +2. Finally, they will persist for 5 turns instead of 3 (1 in-game hour). They cannot be dispelled either and bypass magic resistance.

### Make Nature's Beauty better and more logical in how it works (320) (IWDEE BGEE BG2EE EET)

Nature's beauty is the druidic Wail of the Banshee (only for humanoids anyway), but it is fairly unlikely to kill (especially considering druids cannot have an Illusionist bonus to spells—without save editing or special kits, that is). Save bonus to avoid this effect is now +2 instead of +3.

Additionally, much like IWDEE, blinded enemies are not affected, which is to be expected given the nature of the spell. Finally, it can be configured to make True Sight prevent the effect, since it is an illusion.

### Make Cleric's level 7 version of confusion act like Chaos (330) (IWDEE BGEE BG2EE EET)

It was always a fairly odd choice of level 7 spell. Some mods resolve this by moving it to lower levels. This is another way of resolving it. It will behave like Chaos, having a save penalty of -4 instead of -2.

### Make Armor of Faith also add Armor Class and poison damage resistance (420) (IWDEE BGEE BG2EE EET)

At the beginning of BGEE this spell is largely unremarkable and provides no protection of note to the cleric. Now it will at least provide a minor Armor Class bonus by default, which makes this spell the only one in vanilla BG that improves the Armor Class of the cleric other than Defensive Harmony.

### Make cure and cause wound spells other than Heal/Harm more worth using (450) (IWDEE BGEE BG2EE EET)

Healing spells are infamously bad in BG/BG2, they heal too little for such a slow cast, and they don't improve with level. With this tweak:

- Cure Light Wounds: Heals 8 points plus 1 more point per level, up to 12
- Cure Moderate Wounds: Heals 13 points plus 2 points the first 2 levels, and 1 point on the next 2, up to 19 (requires IWDEE's spell present)
- Cure Medium Wounds: Heals 20 points plus 2 more points per level, up to 28
- Cure Serious Wounds: Heals 30 points plus 3 more points in the next two levels, 2 on the next two, up to 40
- Cure Critical Wounds: Heals 42 points plus 3 more points per level, up to 54
- Mass Cure: improves the power of this spell as a combat spell by improving the casting speed to 2 (from 5), and it improves the healing slightly from 1d8 + 1/level (max of 21-28) to 4d3 + 1/level (24-32)
- Mist of Eldath: Heals 40 points, regenerates 2 HP/s for 2 rounds and prevents poisoning for that time. Name changed to Rejuvenating Mist

Also, they will no longer be stopped by spell deflection. Finally, it can also tweak the "cause wounds" spells in the same magnitude as the "cure wounds" spells.

All of these specific tweaks to these spells may be disabled or enabled in the config file.

### Make Bolt of Glory slightly better (461) (IWDEE BGEE BG2EE EET)

This makes the Bolt of Glory generally more effective and rearranges the damage such that outsiders and undead are always ahead in potential damage compared to Prime Material creatures. Additionally, the description accurately notes other less-known characteristics of this spell, such as how it has no effect on celestial beings (planetars, devas, solars, aasimar) and how it bypasses Magic Resistance. Here's the damage distribution now:

- Prime Material Plane creatures: 4d4+6 magic damage
- Non-fiendish and non-celestial outsiders: 6d6+6 magic damage
- Undead: 8d6+6 magic damage
- Fiendish outsiders (including fallen planetars, devas and solars): 8d8+6

### Make Magical Stone bypass Magic Resistance and deal both magic and missile damage (462) (BGEE BG2EE EET)

Generally, this spell is pretty worthless and barely even worth thinking about. This improves its usability by making it bypass Magic Resistance, since it is essentially a pebble enchanted to be thrown at an enemy. Now it deals 1d4 missile damage and 1d4 magic damage. It will now also scale with level, dealing 1d6 magic and missile damage at level 3, and then 1d8 magic and missile damage at level 5.

### Make Dolorous Decay more powerful (463) (IWDEE BGEE BG2EE EET)

This component improves the spell in the following ways:

- It causes 2d10 poison damage immediately on contact, as well as the usual 2-round slow effect
- Saving Throw against the poison effect is now -3
- The poison duration is now 1 full turn. The description will be more accurate
- For the poison's duration, target takes 8% more physical damage and gets a -2 penalty to THAC0, Damage, and Armor Class

### Make Wondrous Recall also recall wizard spells, and a higher number of them (464) (IWDEE BGEE BG2EE EET)

This component allows cleric/mages to benefit more by allowing arcane spell recalling. The spell now functions as follows:

- Guarantees the recall of 2 level-1 wizard **and** cleric spells
- Four more spells will be recalled additionally of up to level 5

However, the casting time is very high now (2 full rounds), which makes it less convenient to cast in the middle of combat and serves more as a recovery after combat spell, unless triggered by contingencies or sequencers. Bear in mind that if this spell is cast through scripts, the caster might have a lapse in judgment and stop the casting after only one round of casting to do something else, because it seems the engine doesn't ever expect casting times over just below 1 full round (i.e., casting speed of 9).

### Make Shield of Archons absorb more spell levels and closer to PnP (466) (IWDEE BGEE BG2EE EET)

This component improves this spell such that it has equal level of spell absorption as that of the cleric level (20 for BG, 30 for IWDEE). Additionally, to remove the alignment connotations, it changes its name to Planar Shield, since archons are good-aligned celestials. Finally, following PnP, it will also give the user a +4 saving throw bonus against all non-absorbable effects.

### Make Sunray and False Dawn less OP and/or more balanced (467) (IWDEE BGEE BG2EE EET)

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
- Undead take 1d6 fire and radiant damage (half from each) per level up to:
  - Vampires and Vampyres: Up to 10d6 fire damage and 10d6 radiant damage and must save vs. Spell or be utterly destroyed
  - Spectral undead: 8d6 fire damage, and 7d6 radiant damage, and weakens them, causing Slow or Confusion for 2 rounds
  - Other cadaverous undead: 5d6 fire and 5d6 radiant damage, no other side effects

This solution follows the 2nd edition more closely, where only undead who are specifically sensitive to light may be destroyed by it. Spectral undead are generally weakened, but not destroyed, vampires, vampyres, and vampire spawn can be utterly destroyed, and other cadaverous undead aren't weakened or destroyed (including liches and demiliches -- the latter is immune to essentially all spells though, including Sunray).

### Rebalance Call Lightning's damage and scaling (468) (BGEE BG2EE EET)

This component rebalances the spell to provide smoother damage scaling and makes it bypass Magic Resistance, as it is as natural effect brought by the druid.

- **Damage**: The damage formula is changed to increase the minimum damage while slightly lowering the maximum potential. It starts at 7d6+7 and scales up to 20d6+25 at level 20.
- **Visuals**: An optional change replaces the vanilla lightning bolt animation with the more impressive version from **IWDEE**.

Both changes can be toggled individually in the configuration file.

### Make Repulse Undead more useful by causing damage and Slow when they're repulsed (505) (IWDEE BGEE BG2EE EET)

This improves the spell in the following ways:

- Each round the effect triggers, it pushes creatures away in the same way
- Each time they're repulsed, they take 4 points of magic damage, and 4 points of "radiant" damage that is irresistible, even if they're immune to magic damage
- After being pushed, they suffer the effects of Slow for half a round.

None of these effects are subject to magic resistance though it's a level 5 effect, and thus liches are unaffected.

### Make Wall of Moonlight more effective (506) (IWDEE BGEE BG2EE EET)

This spell is thematically beautiful but very underperforming, especially due to how it only works once per turn. This improves the spell in the following ways:

- The damage from the spell can now affect a target once per round instead of per turn. It's up to you how much you want to exploit the enemy's AI with this.
- The damage is the same, but the minimum damage has been increased: evil targets take 2d8+4 (from 2d10) magic damage, and undead take additionally 3d8+6. This damage is no longer resistible by magic resistance
- The spell also causes enemies blindness for 1 round, with a 40% chance of pushing them back away **from the original caster** and knocking them prone for half a round, unless they save vs. Spell. This effect cannot be stopped by magic resistance either. Because it pushed them away from the caster, it is recommended for the purposes of strategy, to stand at the other end of the wall from the enemies.

### Make Aid a party buff and optionally disable the character glow (507) (IWDEE BGEE BG2EE EET)

This makes the spell generally more useful by making it a party buff. To avoid issues with combat scripts, the targeting is vanilla, that is, Aid is cast on a target, and then it spreads to nearby targets. Also, for convenience, the range of the spell is no longer melee, but equivalent to the range of the spell Poison. It also adds a maximum HP buff of +1 HP per level after level 5, to a maximum of +17 HP (on top of the usual 1d8 from Aid opcode).

Optionally, the character glow can be disabled in the configuration file, as it causes a lot of visual clutter when it spreads to everyone.

### Make Restoration-type spells restore stat draining and make Greater version an area of effect spell (508) (BGEE BG2EE EET)

Self-explanatory, plus it makes sense that these spells should be able to restore the damage done by these creatures. Currently, there is no way to cure this other than by waiting. The Greater version of the spell, in its Wish form, will no longer cause fatigue as well.

Optionally, it can overhaul the greater restoration spell so it's more worth the slot (with some disadvantages, for balance):

- It spreads on impact, granting the effects to every party member except the priest.
- The priest is only healed by half their total health.
- Still causes deep fatigue on the caster, and worsens the casting speed, Thac0, damage, and armor class of the priest by 2 for 2 turns. Their movement speed is also reduced by 35%. All of these effects can be removed with Unfailing Endurance.
- The casting duration is tripled (9 from 3).

### Make Silence 15ft Radius party-friendly (509) (IWDEE BGEE BG2EE EET)

Self-explanatory. This will make it easier to manage.

### Make Righteous Wrath of the Faithful slightly better (510) (IWDEE BGEE BG2EE EET)

The attack damage bonus is missing for same-alignment allies, unlike what the description says. This fixes that. Additionally, it only causes 4 points of fatigue, similar to Haste, so it's a bit less inconvenient to use. Finally, this fatigue can no longer be dispelled, same as Haste, which is a likely bug not yet addressed by the devs or the fixpack.

### Make Unfailing Endurance an area spell that cures the fatigue of the whole party (511) (IWDEE BGEE BG2EE EET)

This simply makes the spell more useful and worth the memorization slot.

### Make Alicorn Lance more effective by increasing damage by 1 dice every 2 levels, up to 8d6 (512) (IWDEE BGEE BG2EE EET)

Alicorn Lance is not powerful and doesn't scale well. This will make it feasible at higher levels.

### Make Smashing Wave a bit more powerful and bypass magic resistance (477) (IWDEE BGEE BG2EE EET)

Cool spell that required an improvement:

- Damaged upgraded from 4d10 to 6d8+6 (4-40 → 12-54)
- Changes of being knocked unconscious or stunned are equal now. 33% chance of being stunned or put to sleep if save is failed, both effects for 2 rounds
- Save vs. Breath at -1 to avoid both effects and take half damage
- Magic resistance doesn't apply. Because it's water.

### Make Static Charge electrocute twice as often, but for half the damage (479) (IWDEE BGEE BG2EE EET)

This makes the spell trigger twice per turn (aka every 5 rounds / 30 seconds) instead of once per turn. It reduces the dice thrown by 5, such that it starts off dealing 4d8 electric damage, and it increases up to 17d8 at level 20. To me the higher frequency is more useful than the higher damage. Most fights don't last long enough for the damage to become relevant.

### Make Cloudburst last longer and less horrendously bad (485) (IWDEE BGEE BG2EE EET)

- Effects no longer subject to magic resistance
- Damage effects no longer affect non-enemies, but other effects such as dispelling fire shields still affects friendlies
- Electricity damage increased to 2d8+2, no save to take half
- The probabilities of taking a bolt of lightning increased from 50% to 65%
- Extra damage versus cold and fire-immune creatures doubled (4d3 magic damage). Friendlies are still affected.
- Lasts for 5 rounds instead of 2

### Make Thorn Spray more powerful and scale with level (488) (IWDEE BGEE BG2EE EET)

Cool spell but very underpowered for a level 4 spell. These are the changes:

- Bypasses magic resistance
- Starts off dealing 4d12 piercing damage
- Scales with level, increased damage by 1d12 every two levels, up to 6d12 at level 11
- Uses saves vs. Breath instead of saves vs. Death

### Make Spike Stones strictly more effective than Spike Growth (491) (IWDEE BGEE BG2EE EET)

This improves the spell in the following ways:

- Increases the very underwhelming 2d4 piercing damage to 4d4 combined piercing and slashing damage.
- Forces a save vs. Breath saving throw instead of Spell
- Increases the movement rate penalty from 30% to 50% when save fails.

### Make Barkskin last longer, cast faster, and block the first weapon attack (492) (IWDEE BGEE BG2EE EET)

This component makes the spell more useful for druids:

- Duration increased from 4 rounds + 1 round per level to 1 turn + 1 round per level
- Casting time reduced to 3
- 25% crushing damage resistance, 15% for missile and piercing
- -15% fire resistance
- +2 Armor Class modifier against crushing, +1 against missile and piercing
- Blocks the first weapon attack that hits the target as if they had one layer of Stoneskin
- Barkskin can no longer stack with itself (seems like a bug to me)

For balance, this component also makes Barkskin not available to clerics and paladins, and shield of faith is also not available to druids.

Finally, the component also updates the Staff of the Woodlands to reflect these changes, although it does not grant the one layer of Stoneskin effect. The Armor Class is also set to 1. Barkskin can't be cast on self while holding the staff either.

### Make Doom cast faster (496) (IWDEE BGEE BG2EE EET)

Doom casts very slowly, making it in most scenarios impractical. This makes the casting time 1, similar to Magic Missile, for example. A quick -2 penalty to all saving throws is very useful in many situations, and with a short casting speed, it becomes more feasible for clerics and paladins in general. This speed is overridable in the config file (0-8).

### Make Whirlwind more effective and able to damage more creatures before dissipating (513) (IWDEE BGEE BG2EE EET)

This component improves the spell in the following ways:

- Unaffected by magic resistance
- Damage doubled (2d8 slashing and 2d8 crushing to 4d8 slashing 4d8 and crushing)
- No limit on the number of creatures damaged or protection against it after being hit once for 1 round

### Make Produce Fire a much more effective spell (497) (IWDEE BGEE BG2EE EET)

Produce Fire is not very effective for a 4th level spell. The only upside is that the damage it causes is predictable, it being 1 point per level plus 1d4, without any saving throw to take half. However, the damage is too low to be useful. This component improves the spell by simply allowing targets in the area of effect from being affected once per 2 seconds, effectively taking around 60 fire damage at druid level 20, if they remain in the area for the full duration.

### Make Aura of Flaming Death increase fire resistance instead of setting it to 90% (515) (IWDEE BGEE BG2EE EET)

Self-explanatory. This will also prevent some nonsense like creatures immune to fire suddenly becoming no longer immune. If they cast it, such as fiends.

### Make Holy and Unholy Word more generally effective (539) (IWDEE BGEE BG2EE EET)

Generally these two spells are not considered very effective, especially for mid to late SoA and beyond, because it causes only deafness, which does not cause trouble to non-spellcasters. And it doesn't bypass magic resistance (slay effect excepted). This component improves it significantly, trying to address that concern, as well as incorporating PnP additions from the second edition and others:

Holy Word now:

- Bypasses Magic Resistance
- The area of effect is doubled. Normally it has a fireball-sized area of effect, but now it should cover essentially anything you can see
- Affects not just evil and undead, but anything non-good (i.e. also neutral) and undead
- Does not affect deafened creatures, as it is a sonic attack
- Sends summons back to where they came from if they fail a save vs. Spell at -4, similar to PnP
- Slays anything of level 3 and below (vanilla), but also creatures with 40 Hit Points or less with no ways for them to save their sorry butts other than immunity to death effects, such as with Death Ward
- Enemies of HD of 4 to 7 suffer Stun, Slow, Deafness, and Blindness for 1 to 4 turns (random) with a 90% chance of spell failure
- Enemies of HD of 8 to 11 suffer Slow, Deafness, and Blindness for 5 rounds with a 75% chance of spell failure
- Enemies of HD of 12 and above suffer Deafness and Blindness for 4 rounds with a 50% chance of spell failure
- Finally, it is one of the few spells that can affect demiliches, and causes them to lose 10% of their HP, and 2d6 magic damage (they usually cast Protection from Magical Energy at the outset anyway, nullifying the latter).

Unholy Word is identical in the benefits, except demiliches are not affected by it, and it can affect all non-evil, not just the good, extending its usability.

</details>

---

<details>

<summary>

## Classes

</summary>

### Make Sun Soul Ray and Sun Soulbeam more powerful (2100) (IWDEE BGEE BG2EE EET)

- Sun Soul Ray: The maximum damage normally grows up to 6d8 at level 12, adding 6 damage to undead, which is a very small bonus that doesn't scale. Now this bonus against undead increases by 2 points every time the power is upgraded.
- Sun Soulbeam: The difference in damage between non-undead and undead in vanilla is 9d6 vs. 9d6+3. It's really not a meaningful difference. Therefore, the damage to undead will now be 12d6+3, i.e., up to 75 damage instead of 57, which I think is okay for a once-per-day ability anyway.

Both tweaks can be enabled or disabled in the configuration file.

### Make Shaman's unique spells more powerful (360) (IWDEE BGEE BG2EE EET)

- Ethereal Retribution: Three rounds of 3d8 for a Quest/level 10 spell is hilariously bad, despite the possibility of sapping some Strength with a save vs. Spell that doesn't even have a penalty. Now it does 6d6 magic damage per round at least, and the Strength-sapping effect has a -2 penalty now.
- Writhing Fog: This improves this spell by making it cause 1d3+1 cold damage, whose dice size improves by 1 every level after level 3, until it becomes 1d10+1. The Slow effect, additionally, triggers with a 50% chance, not a 20% chance.
- Spirit Fire: This makes the damage of this spell scale better: it deals 1d4+1/level, up to 12d4+12 magic damage (24-60 damage). Additionally, the 33% Doom effect no longer requires a saving throw, it's based on probability only.
- Spiritual Clarity: Induces more clarity, removing berserk and intoxication too. Additionally, it improves the speed of the spell from 9 to 6.

All these tweaks can be enabled or disabled in the configuration file.

### Make War Cry significantly more useful (2120) (BG2EE EET)

This increases the chances of causing panic on enemies by forcing a save vs. Spell at -2. Additionally, since panic is usually not liked because it's difficult and tedious to attack running targets, it also halves their movement speed by 50%, which makes it far less inconvenient.

The war cry also rallies the allies now, causing the following effects:

- The warrior and their allies are healed by 12 HP, their morale is restored to their maximum, preventing and removing morale-based panic, and for 3 rounds, they get a +2 bonus to THAC0 and Damage.
- The warrior also gets for the same duration a +5% bonus chance to critically hit.
- None of these effects stack with themselves

### Make some Thief HLAs more effective (2130) (BG2EE EET)

- **Spike Trap**: Damage type is changed from magical to piercing for thematic consistency.
- **Exploding Trap**: Damage is increased to 15d6 (from 10d6) and the save for half damage is changed from vs. Spell to vs. Breath.
- **Assassination**:
  - Duration of backstab every hit increased to 7 seconds. Other effects last for 2 more rounds.
  - For the duration and one round after, grants immunity to critical misses and +10% critical hit chance.
  - **Single-classed thieves** gain additional bonuses: +2 Damage, +2 THAC0, +1 APR, and a further +5% critical hit chance.
- **Avoid Death**: Now acts as a "panic button." For 3 seconds after activation, the rogue cannot be killed by HP damage and automatically succeeds on all saving throws. The ability's original effects remain active for the full duration. The description is also updated to mention its protection against level drain.

### Make a selection of HLAs unable to be breached (2150) (BG2EE EET)

I do not find abilities that tap into "inner strength" or pure skill-based physical abilities a candidate for breach. If they're not dispellable, then they're not breachable either. What exactly is the spell supposedly dispelling? The following abilities are no longer breachable:

- **Evasion and Improved Evasion:** You're concentrating on your epic dodging skills as a rogue, using your training and experience. Can you "breach" reflexes and experience? NO!
- **Assassination:** You're using your training in hitting on weak points unexpectedly in a superior manner, exerting such an amazing ability, you always succeed, even if the target is not hit unexpectedly. Can you breach assassination skills? NO!
- **Avoid Death:** You're using your training and nigh-preternatural roguish luck to escape terrible odds and stubbornly survive. Can you breach luck and survival skills? NO!
- **Hardiness:** The warrior is concentrating on defending, bearing blows and the pain, to survive the punishment inflicted upon them, using their training and experience.
- **Resist Magic:** Same as Hardiness. This one I find harder to rationalize in an earthly way, but regardless, it's a warrior-borne ability, so I see no need to effectively consider it magical.

### Make Quivering Palm slightly more powerful at high levels (2160) (IWDEE BGEE BG2EE EET)

I really dislike things that scale poorly or not at all. This makes Quivering Palm saving throw penalty improve to -1 at level 16 and to -2 at level 24. Additionally, the effect lasts 7 seconds, up from 5 seconds, to give more leeway.

### Make the THAC0 progression of Thieves and Bards better and more streamlined (2170) (IWDEE BGEE BG2EE EET)

Among many of the manifestations of the Baldur's Gate series' undying hatred for thieves and bards is that their THAC0 sucks. A LOT. Barely better than wizards. This improves the progression such that it can reach 6, like clerics. The progression per level follows this sequence: 20-19-19-18-17-17-16-15-15-14-13-13-12-11-11-10-9-9-8-7-7-6.

This component will update the THAC0 of Bards, Thieves and Mage/Thieves in the game depending on their level, but only if it's not better already.

### Make vanilla Swashbuckler THAC0 consistent Thief THAC0 improvement is installed (2171) (IWDEE BGEE BG2EE EET)

Normally, vanilla Swashbuckler gets to a THAC0 level of 2, because every 5 levels, it gets a +1 bonus to both THAC0 and damage inflicted. This hinges on the assumption that the maximum THAC0 attainable is 10. Changing the maximum THAC0 improvement to 6 means they would achieve, inappropriately, -2 **base** THAC0. This component addresses this inconsistency. If other mods that overhaul the swashbuckler exist, you may request compatibility, as long as this causes actual problems (likely will if they expect normal THAC0 progression).

### Make Poison Weapon improve a couple of times more every 4 levels (2190) (IWDEE BGEE BG2EE EET)

This makes Poison Weapon more powerful and reliable at high levels. At level 17, the save penalty improves to -3, lasts for 27 seconds, and the immediate poison damage increases to 8. At level 21, the save penalty improves to -4, lasts for 30 seconds, and the immediate poison damage increases to 10.

### Allow Blackguards to perform backstabs as if they had a 2x backstab multiplier (2200) (IWDEE BGEE BG2EE EET)

Self-explanatory. It will also patch any blackguards in the game such that they are guaranteed to be able to backstab, if they possess an eligible weapon and somehow can go invisible and attack (yes, there is one).

### Make Shadowstep impossible to use while in the Shadow Plane (3500) (BGEE BG2EE EET)

This seems more a bugfix than a tweak, but it bothers me, and it's not tackled anywhere else so here it is. No one can cast Shadowstep during those sequences, since those abilities rely on a brief plane shift to the Prime's parallel plane: the Plane of Shadow. This needs to be patched manually, and only Rasaad's ToB quest areas and Lava's Shades of the Sword Coast Gnoll Stronghold variant are affected. This is compatible with my Shadowdancer overhaul.

### Make RR's Crippling strike no longer able to increase Strength (2230) (IWDEE BGEE BG2EE EET)

RR's implementation of Crippling Strike can actually increase Strength if dealing with something that has 9 strength or less, and the lower the strength, the less benefit you get. I changed this by making it instead reduce the strength by half its current value, which allows it to generally stay relevant no matter what you face.

### Give Dragon Disciples direct access to all fire wizard spells and increase fire damage by 5% (2231) (IWDEE BGEE BG2EE EET)

This component gives Red Dragon Disciples access to all fire-based wizard spells by default and a fire damage bonus of 5%. The latter is optional and can be disabled in the configuration file (the percentage bonus can also be configured). It will patch any dragon disciples that may exist in the game, adding these spells and bonus to them.

**Warning**: the spell selection when creating the dragon disciple **WILL NOT** tell you that the spells are available already or otherwise offer any feedback. Just make sure if you use this component that you know that the spells are available already, so pick different spells during character creation.

### Make Called Shot directly increase ranged weapon damage (2232) (IWDEE BGEE BG2EE EET)

Generally speaking, it's more powerful to directly increase the base damage because it will count towards a critical hit multiplier.

### Make Blades, Skalds, and Swashbucklers and Priest of Tempus get more warrior-type benefits (2260) (IWDEE BGEE BG2EE EET)

This will give these kits an edge, as they are more martially inclined. I recommend also using the THAC0 improvement component for bards (swashbucklers don't need it, but if you want to benefit other thieves, you should too).

- Blades and Skalds: +1/2 APR at levels 7 and 13, can take 2 pips in proficiencies
- Swashbucklers: +1/2 APR at levels 7 and 13
- Priests of Tempus: can take 2 pips in proficiencies

Note that this component does not patch their kit descriptions, as it is not intended to be a kit overhaul, but something to add onto whatever you have available.

### Make Defensive Spin protect against backstabs for its duration and allow very slow movement (2265) (IWDEE BGEE BG2EE EET)

This will make it a straight upgrade to the power by providing backstab immunity and allowing movement at 50% of the original speed.

### Make Whirlwind and Evasion grant once 3 uses of the Improved variants (2270) (BG2EE EET)

As it says. This is a new way of resolving this widely recognized dumb design. The HLAs are replaced as follows:

- Evasion → Unlock Evasion (grants 3 uses of Improved Evasion, now just called Evasion)
- Improved Evasion → Evasion: Additional Use (grants another use, if desired)
- Whirlwind → Unlock Whirlwind Attack (grants 3 uses of Improved Whirlwind Attack, now just called Whirlwind Attack)
- Improved Whirlwind Attack → Whirlwind Attack: Additional Use (grants another use, if desired)

Additionally, Improved Evasion (Evasion now) triples the movement speed granted (factor of 6 instead of 2) and makes it use opcode 176, so it's not removed by Free Action. There are options in the configuration file to select only one of these, if desired.

It affects all classes and kits, including modded ones. It only affects HLA tables that have *both* the basic and improved evasion available. This means that the swashbuckler, for example, will not be affected by the whirlwind attack part, since they have only access to the lesser version.

### Make single-classed thieves and bards able to throw sand in the enemy's eyes (2280) (IWDEE BGEE BG2EE EET)

Just to add a new dimension to the fight dirty stuff on rogues. Also, just because I want to promote specialization, this is only available for single-classed thieves and bards. Once per turn, you can throw sand onto the enemies eyes, causing very minor non-lethal damage and impair them for up to a round if they fail a save vs. Breath. Many powerful creatures are immune to this effect, but it offers a new thing to try out once per turn.

### Make single-classed thieves, bards, and monks able to briefly avoid damaging AoE and projectiles once per day (2290) (IWDEE BGEE BG2EE EET)

This gives these classes (multiclass thieves don't count, you want the benefit of a second class, you got enough) an ability they can use once per day to avoid projectiles and most AoE spells and dragon breaths. This lasts for 23 ticks (around one second and a half), which means it should be used *as you're about to be hit by it*. The full list of abilities and spells are: all fireball spells and abilities, all basic projectiles (arrows, bolts, throwing weapons, etc), all dragon breaths, and the spells Dragon Breath, Comet, Produce Fire, Smashing Wave, Thorn Spray, Skull Trap, Glyph of Warding, Holy Smite, Unholy Blight, Burning Hands, Cone of Cold.

Thieves and bards get this ability at level 7 and monks get this ability at level 4.

</details>

---

<details>

<summary>

## Creatures

</summary>

### Make inappropriately aligned creatures in BG2 more correct (3010) (BG2EE EET)

This is a more correct alignment revision compared to Oversight's component, specifically aimed at the state of this problem in the latest version of BG2EE. A huge chunk of the alignment corrections in that component no longer apply, and some of them differ from BeamDog's correction. I left BD's corrections as long as they made sense, and I did not include edits that made no sense to me. For example:

- Making Cowled Enforcers evil
- Making some Amnian Guards evil
- Making the Spectator beholder evil. They're supposed to be Lawful Neutral. BD's corrections show that.
- I didn't make Melissan evil before the plot reveals her nature. It defeats the purpose of the deception and the twist.

I also added other creatures that I spotted that seem to be problematic too. For example, the skin dancer version of Rejiek is... Neutral Good. How about no?

It preserves the most egregious fixes for errors that still exist. Like Tolgerias being Chaotic Good. Yeah, right.

### Make summoned demons grant XP to the party when they kill something (3020) (IWDEE BGEE BG2EE EET)

This component makes summoned demons grant party XP. It may not catch all instances of deaths (when killed in groups with fireballs and things like that) because their combat script might not be able to cope with it. Obviously, don't install with fiend overhauls that add this.

Also, pay attention to any mods that modify the behavior of summoned demons, especially if they replace the script. Might or might not work. Please test and report.

### Make celestial summons more powerful or balanced (3030) (BG2EE EET)

This component rebalances Deva and Planetar summons to make both more balanced choices.

- **Devas**: Are now permanently hasted and can cast their spells instantly, bringing them more in line with Planetars.
- **Planetars**: Their powerful vorpal hit is removed to reduce cheese. Instead, their attacks are reworked:
  - Considered a +5 weapon for THAC0 and what it can hit.
  - 20% chance to cast Dispel Magic at level 25 on hit.
  - Deals +2 cold and +2 fire damage on hit.
  - Deals an additional 4 divine (irresistible) damage to fiends and celestials.
  - They and all nearby allies are protected by a permanent invisible Minor Globe of Invulnerability (toggleable).
  - They can also cast all their spells instantly.
  - Now considered cleric/mages so their cleric spells have scaling, if there's any

### Make the Balor's vorpal attack not guaranteed to succeed but be affected by a saving throw too (3050) (BG2EE EET)

I don't like being killed without any reasonable chance to defend against the killing blow other than luck or Death Ward. Especially with demons, who are very capricious about whom to target. The Balor's vorpal attack has a 16% chance of killing anything forever (no resurrection allowed), and only by equipping something that grants immunity against death effects, or using Death Ward, can you avoid it. Therefore:

- Probability of triggering adequately brought down to 15% chance, as intended
- It still forces a Save vs. Death at -4 to trigger (this penalty can be overridden in the config file).

### Make that dumb Mencar Pebblemuncher a fair fighter for his level (3060) (BG2EE EET)

I hate his guts. He's a level 14 fighter with 200 health and 4.5 Attacks per round. This makes him fair by simply:

- Removing artificial health for a fighter of his level. Health will now be 105 plus the constitution bonus, which unless a mod changes how constitution works, it will be 105 + 45 = 150
- Removes the extra APR, so he will have 2.5 APR, as expected for a level 14 fighter according to his proficiency and fighter levels. This of course may vary if mods change the fighter classes
- And yes, now he's Mr. Pebblemuncher instead of Pebblecrusher. He eats rocks because he's just that stupid.

### Make lions and other cat creatures not slow as molasses (3070) (BGEE BG2EE EET)

Lion and other feline animations are stupidly slow. I don't know why they didn't patch this along with bears. You could outrun them with a snail. This component makes them move at a more reasonable speed. Essentially, it will search for creatures with a cat-like animation and if they don't have a moment rate modifier already, it adds a movement rate 2 opcode modifier of 6, which makes them move at a reasonably fast pace.

### Make creature on-hit effects that should be natural not behave as magical attacks (3080) (BGEE BG2EE EET)

There are several creatures whose effects when they hit don't seem to make much sense to treat as magical effects that can be resisted by magic resistance or dispelled with Dispel Magic. This component makes the following changes:

- Ghouls, Ghasts, Liches, Shadow Fiends, and Vampiric Wolves: Their paralysis can no longer be dispelled or resisted by magic resistance. It's a natural effect and thus may only be resisted with saving throws and removed with spells such as Remove Paralysis or Free Action.
- Spirit Trolls: their strength sapping is not considered magical anymore, same as other shadow creatures and wraith spiders. It doesn't seem to make sense that it would be magical compared to other shadows. Therefore, it may only be cured with Restoration spells or by resting / waiting.
- Carrion Crawlers: The paralysis is no longer considered magical. In fact, in the lore, it's not magical at all, it's a paralytic toxin spread with their tentacles. There's even a paralytic poison made from their brain juices.

### Make Shadow creatures slightly more dangerous (3090) (IWDEE BGEE BG2EE EET)

This component makes the following changes:

- All creatures of the shadow race will have at least a 30% physical damage resistance
- And a +2 bonus to their Armor Class, whatever that is
- Strength sapping from shadows, spirit trolls, spider wraiths and the like always lasts for 8 hours, making it more than an inconvenience. It's a real problem now if you get hit too often.

### Make Beetles more resistant to non-crushing weapons (3100) (IWDEE BGEE BG2EE EET)

This component makes the beetles generally more resistant to anything that doesn't crush them. Arrows and bolts bounce off more often, and attempts to slash or pierce their carapaces are not very effective. Their resistances follow this pattern:

- 60% resistance to missile damage, +3 Armor class bonus modifier.
- 45% resistance to slashing damage, +2 Armor class bonus modifier.
- 30% resistance to piercing damage, +1 Armor class bonus modifier.
- No resistance to crushing damage.
- Armor class vs. missile damage gets a -2 modifier.

### Make Yuan-ti slightly more powerful and inflict minor poison damage on melee attacks (3110) (IWDEE BGEE BG2EE EET)

This improves yuan-ti enemies in the following way:

- +2 bonus to their Armor Class vs. Missile and +1 vs. Piercing as their serpentine bodies are hard to hit
- They inflict 1d4 poison damage on each melee attack universally
- They're 75% resistant to poison damage (but not poisoning itself)
- They move 4 points faster than normal

Additionally, my mod fixes in passing ICYUAN01 from attacking with long swords with a penalty of -2 to THAC0 due to missing proficiencies.

### Make some golem creatures more unique (3120) (IWDEE BGEE BG2EE EET)

This component makes golems *generally* more resilient, so be warned that difficulty will increase.

- **Iron** golems: They now have no resistance to electric damage (only element they aren't immune to) and absorb 27% of fire damage as healing (from 25%). Additionally, they resist 35% of physical damage (from 20% in BG, 0% in IWDEE), double for missile damage.
- **Flesh** golems: They absorb 27% of electric damage as healing (from 25%), and are immune to both fire and cold. Their base health is also increased from 40 to 45. Their animation is now changed to Ogrillon, similar to BGEE, and for consistency with other golems, their movement speed will be sharply increased. They also resist now 15% of physical damage. (Not IWDEE)
- **Stone** golems: They now resist **25**% of physical damage (from 0%). This includes juggernaut golems.
- **Lesser clay** golems: they have half of the normal resistances of clay golems instead of none. So they will take half of the damaging from slashing, piercing, and missile, instead of resisting it all.
- **Brain** golems: They resist **10% more** piercing, slashing, and missile damage (**35%**). They will also use the Ogrillon animation, with a pinkish brainy hue.
- **Magic golem****: 27% of the non-physical damage they take is always absorbed as healing.
- **Adamantite golems**: Normally identical to Iron Golems, except with 70% higher physical resistance, they're now slightly more powerful. They are, according to lore, *almost* impossible to defeat. Therefore:
  - Strength increased from 24 to 25
  - Immune to missile attack damage
  - Immune to all elements and all spells. No longer absorbs damage from it. They also deflect every spell level.
  - Immune to stun, critical hits, and backstabs.
  - They can stomp the ground, causing it to tremble, knocking down all non-flying, up-to-medium-sized creatures in a 30 feet radius, and take 5d10 crushing damage (save vs. Breath at -4 for half damage and to avoid unconsciousness). Trying to run away to block his passage triggers them to use this ability.
  - Base health increased from 80 to 96
  - Saving throws improved by +2
  - Armor Class: 0 (from 3)
  - THAC0: 0 (from 3)

### Make minotaurs tougher and more dangerous (3130) (IWDEE BG2EE EET)

Most of minotaurs are wimps in the game. This is what it changes:

- First, my mod ensures that the minotaurs in BG2EE are recognized as actual minotaurs race-wise
- Patches the minotaurs, conferring various boons:
  - Minimum HP: 50 → 60
  - Class set to Fighter, which allows them to benefit from Constitution bonuses
  - Strength: 18/100 → 20
  - Constitution: 9 → 17. In vanilla this ensures a minimum HP of 72
  - 15% resistance to physical damage (+5% if the resistances are above it and lower or equal to 45%)
  - They no longer panic as easily
  - They move 5 points faster than normal
  - They critically hit 5% more often. Take care of monks and mages
  - They now have three points in Axe proficiency (from none). This will in turn grant them half an attack per round, as it would for fighters, resulting in 5/2 attacks per round as baseline.
  - Their hits have a 50% chance of goring, inflicting 2d6 piercing damage (save vs. Breath to take half), and 3d8 extra if Save vs. Breath fails (no save to take only half), which also grants the minotaur a +1 bonus to their damage and 1/2 to their attacks per round for 2 rounds. These benefits can't affect the minotaur more than once every 9 seconds, and the victim cannot suffer this extra damage more than once per round. The basic 2d6 piercing damage can happen at any time with the aforementioned 50% chance per hit.
  
### Make ogre / oni mages regenerating fiends, as per PnP (3140) (IWDEE BGEE BG2EE EET)

So ogre mages are not really ogres. It's some sort of weird misnomer. They're actually oni, essentially fiends, similar to night hags and rakshasha. Ogre mages are also capable of regenerating. So what this component does is simply:

- All ogre mages regenerate health by 1 HP per round. Might increase difficulty somewhat, especially if they use magical protections.
- Their race is now set as demonic. Because they're fiends and not ogres. So any effect that targets "demonic" will affect them too. I might refine this classification in the future.
- And just for hoots, because they slumber around more slowly than molasses, their movement rate was increased by 2.

### Make drow's magic resistance lower (configurable) (3150) (IWDEE BGEE BG2EE EET)

As it says. Note that the patching is manual and every drow has to be found and patched manually, it will not detect mod-added drow by default. Either do a pull request or notify me of a mod that adds drow but I can't promise I'll fix anything quickly, especially if I don't plan on using the mod.

</details>

---

<details>

<summary>

## End-of-install-order

</summary>

### Make a selection of spells ignore magic resistance (1531) (IWDEE BGEE BG2EE EET)

Additionally, a some selected spells also bypass magic resistance, because it makes sense in my judgment. The full list of spells is: Detect Evil, Know Alignment, Stinking Cloud, Entangle, Grease, Web, Summon Cow, Glitterdust, Magical Stone, Call Lightning, Cloudburst, Summon Insects/ Insect Plague / Creeping Doom, Nature's Beauty, Storm of Vengeance, Mold Touch, Smashing Wave, Shout / Great Shout, Thorn Spray, Spike Growth.

Bear in mind this component should be installed after tweaks that affect these spells, especially if they add new effects to them; otherwise, this tweak will only work partially, and inconsistent results could ensue.

</details>

---

<div align="center">

## [Back to top](#components)

</div>
