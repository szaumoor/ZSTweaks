# ZS Tweaks

This mod is a compilation of tweaks that I think personally improve things as they are in the vanilla game, nothing more, nothing less.

## Spell tweaks

**Component 100:** Make Glyph of Warding do damage on a failed save and extend damage up to level 20, and not 18

Generally speaking I do not believe in damaging spells that can be avoided completely with Saving Throws, at least in this game, because for the most part, they constitute, sooner or later as a waste of a spell slot.
Therefore, it will always cause half damage. Additionally, it extends the headers up to level 20, such that the damage grows up to 20d4 instead of 18d4.

**Component 110:** Make Bless last longer

I don't think 36 seconds with a very long casting makes this spell desirable in most situations. Therefore, now the duration is 60 seconds plus 1 round per 2 levels up to level 19.

**Component 120:** Make conjured magical weapons add extra attacks (Flame Blade, Ghost Blade, Black Blade of Disaster...)

The problem with these spells is that they promise power, but your little sickly wizard is not a very good fighter at all. I think this promise should be more serious, and therefore, by default, all these weapons grant 2 APR by default.

**Component 130:** Standardize Hold Person saving throw penalties

This component equalizes the saving throw penalty in the cleric version of Hold Person so it has the same as the wizard one, which is -1.

**Component 140:** Standardize Finger of Death magical damage on a successful save

This component matches the magic damage inflicted by the wizard version of Finger of Death so it's as powerful as the priest version.

**Component 150:** Make Disintegrate behave more like a modified Harm spell, similar to how it behaves in NWN2 **(NOT IMPLEMENTED YET)**

This component makes disintegrate behave like it does in NWN2, which causes 150 points of magic damage if successful, to differentiate it from the Flesh to Stone spell.

**Component 160:** Make Black Blade of Disaster and the Iron Golem weapons unsuitable for backstabs

This exists simply to destroy any temptation to use these as cheesy ways to get insane numbers with backstabs that would instakill most things with HP and normal damage resistances in one hit. So now they should not be able to trigger backstabs.

**Component 170:** Make Wail of the Banshee inflict some magical damage and deafness on a successful save

This exists because I personally dislike using spells, especially high level spells, which are powerful but unpredictable, so that there is a benefit to using them regardless. Therefore, on a successful save, it will cause 3d6 magic damage and cause deafness for 2 rounds.

**Component 180:** Make Meteor Swarm more likely to do more damage

The problem with Meter Swarm is that the likelihood of doing very low damage is quite high, which is pretty bad for level 9 spell. It will instead do it like Fire Storm, causing 2d10 + 1 point/level (i.e  22-40 fire damage per round, instead of 4-40 damage per round).

**Component 190:** Make Holy Power and Tenser's Transformation achieve a THAC0 of 0

Makes those spells achieve a THAC0 of 0 at max level, since the description clearly states "fighter of the same level".

**Component 200:** Make Sleep work for level >=5 enemies with a save bonus **(NOT IMPLEMENTED YET)**

This tackles another one of my pet peeve, which is spell deprecation. Now sleep will also work for enemies of more than 4 HD, but they save against it with a Save vs. Death at +3 (it's -3 for HD less than 5).

**Component 210:** Make Horror an Enchantment spell

This mod simply changes the school to Enchantment, which is probably more accurate for a mind-altering spell.

**Component 220:** Make Ice Storm do 1d8 more damage per round

I think the damage is a little low for a 4 round static effect (2-16 damage per round). Now the damage will be 3d8 (3-24 per round).

**Component 230:** Make Cloak of Fear work as a temporary aura of fear **(NOT IMPLEMENTED YET)**

For the most part I don't think this spell is worth memorizing. Now instead of being a one-off horror effect, it creates an "aura" that triggers once per round for 3 rounds, with the same specifications as the original spell.

**Component 240:** Make Goodberries generate six berries, each healing 2d4 instead of 1 point of damage, and granting very slow regeneration for 8 hours

Conceptually I think it's a cool spell for druids and rangers, and it might be a teensy bit useful perhaps for the beginning of BGEE, but generally not useful after that. Now it will heal 2d4 immediately and add a regeneration of 1 HP per turn for 20 turns. Now it generates six because I like the idea of having one per party member by default.

Additionally it allows stacks of 12 so two castings can get stacked together.

**Component 250:** Make Earthquake party friendly

Earthquake is generally very very inconvenient to be cast at any point because of how it affects your whole party. This disables that behavior.

**Component 260:** Make Negative Plane Protection's duration increase somewhat as you level up

It only lasts 30 seconds, which might be insufficient for fights with vampires. Since it's a very powerful effect, the increases in duration are moderate, one round per 2 levels after level 7 up to 66 seconds at level 19.

**Component 270:** Make Entangle's saving throws improve slightly at higher levels so it remains relevant for druids

Entangle saves are quite generous and as such very difficult to pull off at higher levels. It's such a "druidy" ability to have, that it feels wrong to leave druids without them because it's no longer useful.

Therefore, it starts with now a +2 bonus (from +3), which improves to +1 at level 5, 0 at level 10, -1 at level 15, and -2 at level 20.

**Component 280:** Make Poison (cleric spell) do half damage on a failed save (without poisoning them)

See component 100 for reasoning.

**Component 290:** Make Holy Power and Tenser's Transformation gain extra APR like a Fighter at the appropriate levels

This components further tightens the gap between the wizard or cleric and the fighter they want to emulate, and are granted 1/2 APR at levels 7 and 13.

**Component 300:** Make Iron Skins cast as fast a Stoneskin

Just as it sounds, it allows druids to do that, like wizards, so they're protected as quickly as wizards do, and reduces the need to use them only in pre-fight buffing rituals.

**Component 310:** Make Fire Seeds create more seeds that do slightly more damage, with an enchantment of 2

Too little seeds and too little damage. From 4 seeds that do 2d8 to 10 that do 3d8+5. The original is way too unremarkable for a level 6 spell. Additionally, the description will mention the fact that they are thrown with a +2 THAC0 bonus. Additionally, the seeds no longer bypass most physical protections due to an enchantment level of +6, so now it will be considered +2.

**Component 320:** Make Nature's Beauty a bit more likely to kill enemies outright

Nature's beauty is the druidic Wail of the Banshee, but it is fairly unlikely to kill (especially considering druids cannot have a Necromancy bonus to spells -- without save editing or special kits that is). Save bonus is now +1 instead of +3, making it marginally less likely to be successful as vanilla Wail of the Banshee.

**Component 330:** Make Cleric's level 7 version of confusion act like Chaos (-4 saving throw penalty)

It was always a fairly odd choice of level 7 spell. Some mods resolve this by moving it to lower levels. This is another way of resolving it. It will behave like Chaos, having a Save penalty of -4 instead of -2.

**Component 340:** Make Symbol of Death work with Save bonus if above the 60 HP threshold

This spell is useless if the health of the enemy, which ordinarily you cannot know, is above that threshold, so it's fairly wasteful to use the spell unless the enemy is Near Death or the enemies are very weak anyway and easy to kill. As such, now the spell works for HP above 60, but with a bonus of +6 giving it at least some (small) chance of working at all times.

**Component 350:** Make Earthquake not shake the screen

In case you don't enjoy feeling like casting it might give you a tiny seizure.

**Component 360:** Make Etheral Retribution do more damage per round: 6d6 per round instead of 3d8

Three rounds of 3d8 for a Quest/level 10 spell is hilariously bad, despite the possibility of sapping some Strength with a Save vs. Spell that doesn't even have a penalty. Now it does 6d6 magic damage per round at least.

**Component 370:** Make Ray of Enfeeblement a Necromancy spell

It probably makes more sense to make this spell a Necromancy spell like in NWN and NWN2.

**Component 380:** Make Contagion cause 4 points of Strength and Dexterity damage

2 points of damage for STR, DEX and CHA is underwhelming, and CHA reduction is irrelevant unless using particular mods. Now it reduces 4 STR and DEX, which should be a little more meaningful and more worth the level 4 slot.

**Component 390:** Make Death Fog inflict 4d4 acid damage per round instead of flat 8 damage

Improves the usability of Death Fog as a "general purpose" damage dealer, instead of just a stationary lingering anti-summon spell. The options for acid spells are very lacking in the game anyway. So instead of 8 acid damage per round now it will be between 4 to 16 per round with no save.

**Component 400:** Make Energy Drain drain 6 levels instead of 2

2 levels of drain is unremarkable and a waste of a spell slot, particularly when the likely enemies to fight by the time you get this spell are fairly high level.

**Component 410:** Make Horrid Wilting actually be more effective against plants and Water Elementals

This makes the spell mirror the behavior in 5E/BG3, where plant and water-based creatures take always maximum damage with a save vs. spell at -2 (this penalty is completely missing in vanilla), halved on a save. Additionally, enemies that are not damaged by draining moisture are unaffected (undead and golems). For example, at level 20, it inflicts 20d8 (i.e. 20-160 or half damage) to normal enemies and 160 to plant creatures, myconids and water elementals, unless they save, in which case they would take 80 damage.

**Component 420** Make Armor of Faith also add a +2 AC bonus to make it useful at low levels

At the beginning of BGEE this spell is largely unremarkable and provides no protection of note to the cleric, now it will at least provide a minor AC bonus by default, which makes this spell the only one in vanilla BG that improves the AC of the cleric other than Defensive Harmony (IIRC).

## Item tweaks

**Component 1000:** Make throwing poisoned daggers slightly more likely to poison enemies

This component makes these items get a -2 penalty to Save vs. Death which makes them more useful, and compensates for their rarity.

**Component 1010:** Make Asp's Nest darts much more likely to poison, to compensate for the rarity and cost

This makes those very expensive darts much more likely to affect characters, which is a fair compensation for their rarity and huge monetary cost: Save vs. Death at -4

**Component 1120:** Make some weapon categories incur in backstab penalties for balance

This reduces the backstab multiplier of some weapons who realistically would not be great for backstabs, which also includes pretty broken weapons when used for backstabs, such as the Staff of Ram.

- No penalty: All piercing swords, ninja-tos, clubs, and daggers.
- -1 penalty: Long swords, Scimitars, Katanas.
- -2 penalty: Staves

**Component 1125:** Make Ninjato of the Scarlet Brothehood +3 available for other classes and alignments

This makes this sword usable by non-monks of any alignment. Monks are not really implemented to take too much advantage of weapons anyway (in vanilla game).

**Component 1130:** Make Bone Blade dagger more special and not just a plain +4 dagger

Plain enchanted weapons are boring, and the higher the enchantment level, the more egregious that is, as far as I'm concerned.

Instead of simply giving the usual +4 weapon bonuses:

- Being made partially from the tooth of a black dragon, it causes an extra 1d4 acid damage on hit and increases Acid Resistance by 40%.
- Being tempered in the blood of the duergar smith, every hit causes +5 extra damage against all elves, including drow, and the inhabitants native to the Underdark: beholders, mind flayers, kuo-toa, hook horrors, duergar, driders and umberhulks.

**Component 1140:** Make Dagger of the Star slightly more powerful.

I like daggers.

- Dagger of the Star +4 becomes +5, and the chance of invisibility increases to 10%.
- Dagger of the Star +5 becomes one of the few privileged +6 weapons.
- Star Bolt: Increased the chance to trigger elemental effects to 15%, the difference being, you have equal chances of triggering fire damage, electrical damage, or both.  (5% times 3)

**Component 1150:** Make spears do a baseline damage of 1d8, not 1d6

1d6 is a little low for spears in my opinion and it fills the imaginary "gap" of two-handed weapons with damage between staves and two-handed swords and halberds.

**Component 1160:** Make warhammers do a baseline damage 1d5+1, not 1d4+1 (except hammers outside that range)

1d4+1 always felt a little too small and narrow for hammers. This doesn't affect special hammers that have double the damage potential such as Crom Faeyr.

**Component 1170:** Make Shadow Dragon Scale behave less like a Black Dragon Scale

It seems like a mistake to me that this armor, made from a creature from the plane of Shadow that doesn't even use acid as a breath weapon grant you acid resistance. Instead of acid resistance, it offers:

- Negative Plane Protection
- Save vs. Illusion spells +4 bonus
- The usual AC bonuses.

**Component 1180:** Make Ring of Danger sense protect against backstabs

Self explanatory and ever useful, for any class. Anti-chunking for mages.

**Component 1190:** Make Rod of Lordly Might usable by any class and more powerful

The rod is conceptually quite interesting, but generally underperforming.

- **Mace +2** is renamed to Mace of Lordly Might +3, becomes a +3 weapon, and the save against panic is now at +2, not +5, and the panic lasts 3 rounds, not 4.
- **Flaming Long Sword +1** is renamed to Flaming Sword of Lordly Might +3, becomes a +3 weapon, causes 1d4 fire damage per hit, and the paralyze effect Save becomes +2 and not +5, but the Hold effect only lasts one round. Fixes the duplicated Paralyze effect it has. Additionally, it makes it look like an actual flaming sword when held.
- **Spear +3** is renamed to Spear of Lordly Might +3, and it no longer has a Save vs. Spell bonus of +6 to cause 2d4 magic damage, now it has no bonus or penalty.

**Component 1200:** Make Ixil's Spike allow Haste and Improved Haste **(NOT IMPLEMENTED YET)**

I think everyone agrees that this type of restriction makes the weapons immediately less appealing.

**Component 1210:** Make The Equalizer slightly more powerful

Honestly, it kinda feels like it's immediately not useful by the time you get it. The description is also slightly misleading because it looks like it will deal, for example, 1d8+6 against some alignments, in the same way that a Longsword +6 would, but it's not like that. It actually just inflicts 1d8 (like a normal non-magical sword) and then additively includes the damage which is generally much less powerful. Therefore:

- The sword now has an enchantment of 5 for the purposes of what it can hit.
- The sword acts as a 1d8+3 in all respects as baseline.

The rest functions exactly the same: no bonus against True Neutral, +1 THAC0 +2 damage against LN/CN, +2 THAC0 +4 damage against NG/NE, and +3 THAC0 +6 damage against LG/CG/LE/CE.

**Component 1220:** Make Ras, the Dancing Blade last for 1 turn, instead of 4 rounds

This makes it useful for far longer, and more like Sword of Mordenkainen.

**Component 1230:** Make Short Sword of Mask +5 slightly more powerful

Makes the chance-based Level drain take 2 levels instead of just one and the Entangle effect 5% more likely to trigger (20%).

**Component 1240:** Make Purifier's damage bonus affect all evil, not just Chaotic Evil

Just as the title says. It's kinda funny considering the description of the weapon mentions Pit Fiends, which are Lawful Evil.

**Component 1241:** Make Purifier's Dispel Magic level 30, like Staff of the Magi and Carsomyr

This makes the dispel magic effect equal to those in the Staff of the Magi and Carsomyr.

**Component 1250:** Make Yamato's passive abilities more substantial

The effect is pretty underwhelming for a +4 weapon. Since it's advertised about defense, the following is added:

AC bonus improved to 3 (instead of 1) plus 1 against slashing, piercing, and missile weapons. 5% universal damage resistance.

**Component 1260:** Make Usuno's Blade slightly more electrically powerful

The effect is pretty underwhelming for a +4 weapon. Now:

- Chance of doing 2d10 electrical damage increased to 15%, and is now 5d4+1, with a save vs. spell at -2 for half.
- Every hit does 1d3 electrical damage with no save.
- Increases electrical damage resistance by 40%

**Component 1270:** Make Spectral Brand last for 1 turn, instead of 4 rounds

This makes it useful for far longer, and more like Sword of Mordenkainen.

**Component 1280:** Make Carsomyr affect any kind of evil and not just Chaotic Evil

Self explanatory. Not that it needs to be more powerful, but it feels wrong to not be especially effective against non-chaotic evil (but yes, I understand it's because it's the opposite of a paladin's alignment).

**Component 1290:** Make Carsomyr's Dispel Magic force a saving throw

The dispel on hit thing is pretty cheesy so, yeah. That. No penalty with +5, -2 with +6 version

**Component 1300:** Make Silver Sword act as a +4 weapon to determine what it can hit to extend usability

The vorpal quality is very powerful, but it would be nice if the sword could work for more powerful enemies.

**Component 1310:** Make Defender of Eastheaven damage reduction a little more moderate

The bonuses of this weapon are very significant, and an infamous toolset for powergaming, and no-reload runs. I reduced the resistances to 10%.

**Component 1311:** Make Krotan's Skullcrusher +2 slightly less generic

Yet another enchanted, unique weapon without any special trait of any kind. It now posesses the same bonus as Skullcrusher (in vanilla game), which is a +2 damage bonus to humanoids

**Component 1312:** Make Skullcrusher +3 slightly more crushy

This component improves the extra damage against humanoids to +4.

**Component 1313:** Make Gnasher +2 slightly more painful

This component makes the "pain" that the description talks about manifest as a non-stackable 2-round weakness: -2 AC, -2 THAC0, -2 Dmg

**Component 1314:** Make Jerrod's Mace +2 behave as a +3 weapon

This makes the mace +3 for consistency with the power level of other WA-weapons. It also improves the damage and thac0 bonuses against fiends by 1.

**Component 1315:** Make Dak'kon's Zerth Blade behave as a +3 weapon

This makes the katana +3, for consistency with the power level of other WA-weapons.

**Component 1316:** Make Mercykiller Ring more useful for rogues that like killing

This makes the ring also add a +1 damage bonus, +1 THAC0 bonus, and +5% critical hit chances with all weapons, along with the other bonuses, but only to pure, single-classed Thieves (for balance and to encourage commitment). The ring can also be equipped by rangers, but only the vanilla benefits will apply.

**Component 1317:** Make the basic robes and Archmage robes slightly more remarkable

I do not like that most robes, except the most powerful ones are largely unremarkable. This is the list of changes:

- **Knave's Robe**
  - +1 AC against Slashing (vanilla) and +1 against Piercing (new)
  - Save vs. Death +1 (vanilla) and Save vs. Breath +1 (new)
  - +50% Poison damage resistance
  - 5% universal Thief skill boost (you're a knave!)
- **Traveler's Robe**
  - +3 AC against missile (new, vanilla was 1)
  - +15% Missile resistance
  - Save vs. Wand +1 (new) and Save vs. Spell +1 (new)
  - Movement speed increases by a factor of 4 (you're a traveler, moving from town to town!)
- **Adventurer's Robe**
  - 1 universal AC bonus (the bonus to crushing seems a little weird)
  - Save vs. Petrification +1 (vanilla) and Save vs. Spell +1 (new)
  - +20% Magic damage resistance
  - +10% Elemental damage resistance
- **Elemental resistance robes**: resistance increased to 40%, adds 7% damage bonus in the relevant element and +1 save vs. evocation spells. This also increases the damage resistance of Robe of Red Flames to 50%, and adds the evocation bonus, for consistency (it's a straight upgrade).
- **Archmage Robes**
  - AC set to 5 (vanilla), and it improves AC by 1 (new)
  - Magic resistance improved by 10%, not 5%
  - Magic damage resistance improved by 25%
  - Casting speed improved by 1
  - Saving throws bonus against Spell at +2, +1 for the rest

**Component 1318:** Make Flame of the North +2 affect all evil, not just chaotic evil

Self explanatory

**Component 1319:** Make Holy Sword of Tyr +3 affect all evil, not just chaotic evil

Self explanatory. I also removed the weird preamble that includes the first sentence of the general description of long swords. Seems lazy, and perhaps a mistake.

**Component 1320:** Make Flail of Ages + 5 allow Haste and Improved Haste **(NOT IMPLEMENTED YET)**

I think everyone agrees that this type of restriction makes the weapons immediately less appealing.

**Component 1321:** Make Bone Club +2, +3 against undead's effect reflect the description better and improve it slightly

This makes the club slightly more powerful (+3 in all respects), is more shamanic, and more damaging to undead: acts as +5 against them, with THAC0 bonus of +5 against undead, undead take +4 damage, and spectral undead take +8

**Component 1330:** Make Darkfire Bow slightly more remarkable

Makes the elemental resistances against fire and frost increase to 15%, 30% at +5. Additionally, the +4 version makes all arrows deal extra 1 cold and fire damage (2 at +5).

**Component 1340:** Make Taralash slightly more remarkable

The +5 version literally just increases the THAC0 bonus by 1. That's a bit too boring for a +5 weapon. I'm not saying these changes are much better -- but slighty better? Absolutely!

- Makes movement bonus increase to 5.
- Adds a damage bonus of 1 like a regular composite bow
- Animals and and other kind of unintelligent beasts, magical or not, take +2 and +5 damage (+4 and +5 version respectively)

**Component 1341:** Make Hindo's Doom a +4 and +5 weapon

This simply allows the game to grant you a +4 and +5 katana, essentially.

**Component 1350:** Make Wakizashis and Ninja-Tos deal 2d4 instead of 1d8 and have a speed factor of 3

This mostly exists to create a differentiating factor in terms of damage from long swords. I think the inclination is clearly towards "Kara-Turan/eastern blades are higher quality".

Additionally this will make ninja-tos have a speed factor of 3, like short swords and wakizashis, since they are technically short swords.

**Component 1360:** Make Light Crossbows get 1.5 APR

Just a small bonus to make it more interesting and different compared to heavy crossbows. It's not too far-fetched anyway to think smallers crossbows can be reloaded faster. This will affect crossbows that have an APR bonus already, i.e. 1/2 APR will be added.

**Component 1370:** Make Katanas deal 2d5 instead of 1d10

This mostly exists to create a differentiating factor in terms of damage from long swords. I think the inclination is clearly towards "Kara-Turan/eastern blades are higher quality".

**Component 1380:** Make Chaos and Entropy grant 1/2 APR each and improve them slightly.

My first move whenever I used Haer'Dalis was to give him swords that granted him extra attacks. These are his personal swords, so it feels wrong to not use them. This makes it more appealing to use, now he will have 3 APR when dual wielding by default.

Additionally, it makes Entropy cause 6 poison damage, on a Save vs. Death at -1 instead of 3 with a save without penalties or bonuses, and it makes Chaos reduce the struck opponent's Save vs. Death by 1 for 2 rounds. They both gain a speed factor of 0 and can hit targets immune to +2 weapons, like balors.

**Component 1390:** Make Staff of the Magi force a saving throw to dispel effects on hits

The dispel on hit thing is pretty cheesy so, yeah. That. Save vs. Spell at -2

**Component 1400:** Make Bastard Swords deal 1d8+1 by default

I never liked that bastards swords were "between long swords and two-handed swords" but there was no max damage difference between long swords and bastard swords. So now they're damage-wise actually between both.

**Component 1410:** Make Ir'revrykal Dispel Magic effect not depend on probabilities, but allow a saving throw.

This essentially is the same tweak to Carsomyr, except the chance of dispelling is also 100%. The saving throw vs spell is without a penalty.

**Component 1420:** Make Ir'revrykal base damage equal to Carsomyr

This makes the weapon have 1d12 base damage much like Carsomyr, tightening the resemblance between both swords.

**Component 1430:** Make Two-handed swords deal 1d9+1 by default, and 2d6 where it applies

This mostly exists for consistency with the bastard sword, such that the minimum damage is equal to it. Two handed swords that have a 1d12 base damage will instead get 2d6.

**Component 1440:** Make daggers have general extra features to compensate the low damage

There's generally very little reason to use a dagger, because:
- All other weapons cause more damage
- Your other weapons will never be stolen
- Using the dagger has no benefits of any sort for being a small weapon.
- The only saving grace they might have is that a few of them have a semi-interesting special effect which likely gets deprecated later.

This is a small change to make daggers slightly more appealing on a general level. They will all have an implied:

- +1 THAC0 bonus
- Speed factor of 0
- +5% Critical chance, and critical hits do moderately additional damage. Internally, the formula for damage added (additively) is:
  - MaxWpnDmg - 1 (Maximum damage the weapon can do without modifiers) **PLUS**
  - 2 dice thrown of Max_wpn_dmg.
   For example, if we were using a +3 Dagger (max weapon damage of 7), and we struck a critical hit by 24 damage, another tick of damage would trigger which would range between 8 guaranteed damage to 20, and thus the total damage would be between 32 and 44. A +6 dagger would add instead between 11 to 31.

All these bonuses are additive. Note that this component will not update the descriptions of each dagger to reflect this change. Sorry, but I don't know how to code that in WeiDu.

**Component 1450:** Make some rogue weapons have the chance of doing more damage if wielded by pure thieves (Finesse)

This component is an attempt at making pure Thieves more effective with a portion of thief-usable weapons without relying on stats, APR or proficiency points.

Essentially, when wielding a weapon they can use with what I call "finesse", which is a concept that I borrowed from NWN, they can deal extra damage per attack randomly (additively), based on the base attack damage of the weapon used (vanilla values). This includes bows, crossbows, clubs, daggers, long swords, scimitars, wakizashis, ninja-tos, katanas, and short swords. It's hacky, as most things not quite supported by the game, but it works. To be more specific:

- **Scimitars, long swords, quarterstaves**: 10% chance per hit to inflict 1d8/6+bonus of slashing/crushing damage.
- **Katanas**: 15% chance per hit to inflict 1d10+bonus of slashing damage.
- **Ninja-tos and wakizashis**: 25% chance per hit to inflict 1d8+bonus of slashing/piercing damage.
- **Short Sword and clubs**: 35% chance per hit to inflict 1d6+bonus of piercing/crushing damage.
- **Bows, slings**: 45% chance per hit to inflict 1d6 and 1d4+bonus missile damage respectively.
- **Darts, Daggers, Crossbows**: 60% chance per hit to inflict 1d3+bonus, 1d4+bonus and 1d8, respectively, of piercing/missible damage.

**Component 1460:** Make Spear of Withering able to poison on contact if save is failed

I feel like this spear should be more withery, especially considering it's a +4 weapon! This makes the spear able to inflict 12 extra poison over one round if a Save vs. Death at -2 is failed.

**Component 1470:** Make Adjatha the Drinker thirstier

This component will make the healing per it based on probabilities, such that there is a 50% change it will heal by 1, 20% it will heal by 2, 15% it heals by 3, 10% it heals by 4, and 5% it heals by 5.

**Component 1480:** Make Yoshimo's Katana slightly more unique and powerful

Remember what I said about enchanted unique weapons without no special properties? Well, it's even more egregious if it's an NPC unique weapon as far as I'm concerned.

This components keeps to the idea that it is only lightly enchanted, but it also offers a few advantages to Yoshimo:
- Speed factor reduced to 1 from 3
- THAC0 bonus increased to 3.
- Sets proficiencies to katanas to 2, unless it's higher.
- +5% critical hit chance

**Component 1490:** Make Neb's Nasty Cutter have an unlimited amount of poison

The dagger will always cause 20 poison damage over 10 seconds if a Save vs. Death is failed, and never deplete.

**Component 1500:** Make Mazzy's weapons slightly more powerful

Come on, Arvoreen! Be more generous to your most faithful holy warrior.

- Bow of Arvoreen grants extra 1/2 APR to Mazzy, +3 THAC0, and +1 damage
- Sword of Arvoreen grants extra 1/2 APR to Mazzy, +4 THAC0, and becomes in most respects a +3 weapon, except it can hurt enemies immune to +3 weapons.

**Component 1510:** Make Delryn's family shield become a +2 shield

Just a simple buff to make the shield a good option for longer.

**Component 1520:** Make Hallowed Redeemer able to hit enemies immune to +3 weapons

This extends the usability of the weapon, despite the lower damage, if the constant shield the weapon grants is desired.

**Component 1530:** Moderate the inexplicably double damage magical throwing daggers do, to not make them the obvious choice all the time to maximize damage

This reduces the number of dice thrown of DAGG11 and DAGG12 to 1 so they are not the only good choice for daggers to maximize damage. And for consistency. Generally speaking I dislike a lot this sort of unbalanced design. DAGG11 specifically, already comformed to this rule in BGEE.

This will not update the descriptions, however. I don't have the skill to parse strings like this with WeiDu.

## Class and Kit-related tweaks

**Component 2100:** Make Sun Soul Ray from Sun Soul Monks damage improve slightly and do more damage to undead

The maximum damage will grow to 6d8 at level 12, and 6 damage to undead, which is a very small bonus that doesn't scale, will increase by 2 points every time the power is upgraded.


**Component 2110:** Make Sun Soulbeam do more damage to undead: 12d6 instead of just 3 more damage than baseline.

The difference between non-undead and undead in the original is 9d6 vs. 9d6+3. It's really not a meaningful difference. Therefore, the damage to undead will now be 12d6, i.e. up to 72 damage instead of 57, which I think is okay for a once-per-day ability anyway.

**Component 2120:** Make War Cry inflict fear with a -2 Saving Throw penalty

War Cry as an HLA is bad enough, but this makes it at least have a more reasonable chance of affecting creatures by the time you get this power.

**Component 2130:** Make Set Spike Trap do piercing damage instead of magic damage

Because it's rather strange that it does magic damage and makes you wonder why the thief would have the ability to do this. (To be fair, the same could be said for the Time Stop trap). Rogue Rebalancing also does this.

**Component 2140:** Make Exploding Trap do slightly more damage: 15d6 as opposed to 10d6

I feel like 10d6, which is the same damage of the Fireball spell at max level, is very low for an HLA, so now it's 15d6.

**Component 2150:** Make selected kit HLAS unable to be breached.

I know this is somehow "controversial", but generally speaking I do not find abilities that tap into "inner strength" or pure skill-based physical abilities a candidate for breach. What exactly is the spell supposedly dispelling? That's my take.

Therefore, the following abilities are no longer breachable:

- **Evasion**
- **Improved Evasion**
- **Assassination**
- **Avoid Death**
- **Hardiness**
- **Resist Magic**

**Component 2160:** Make Quivering Palm slightly more powerful at high levels

I really dislike things that scale poorly or not at all. This makes Quivering Palm saving throw penalty improve to -1 at level 18 and to -2 at level 26.

## Compatibility and Installation order

This mod should generally be installed after mods that add items to the game. If installed after, the tweaks in this mod that affect them will not be able to affect those.

As far as other mods that may affect spells or abilities, it should be okay because the modifications are made through code and not file replacements, but if there is a philosophical or conceptual difference in the design of the spell or ability it might make no sense to install both tweaks, so use your best judgement.

Also I would suggest making this the first tweak mod to install, since other older more mature mods will likely handle the changes from vanilla game states better, since the code of this mod is less flexible than in those, such as Tweaks, SCS, and the like.

## Notes for users & modders

This mod doesn't modify descriptions of items and spells automatically, every change is a total substitution of the text, and it **only** applies to tweaks that affect specific spells or items. I have preserved the original structure of information in such descriptions so that more mature mods that handle text content more precisely, can hopefully handle non-vanilla descriptions just fine. This is another reason why this mod should be the first tweak mod to be applied, at least in the current state.

And feel free to offer feedback if there are any bugs, criticize the code and offer better alternatives, if you want. I'm aware though that there are ineficiencies, like redundant checks and needless loop iterations, because I mostly wanted to get things working first, and I only just learned the scripting language. So yeah, those things may improve later, though as an user the difference will be of just a bunch of milliseconds.

## Credits

- To BeamDog and Bioware for the game, obviously.
- CamDawg for spending significant time to explain details about how WeiDu works, sharing insights, helpful code, and other matters for modding
- DavidW for his great WeiDu tutorial
- Thanks to the developers of WeiDu, including the documentation
- And the IESDP, invaluable resource.
- People on Discord generally for their help, and the great modders out there that allowed their WeiDu code to be available publicly, like jmerry, Camdawg, 11jo, Argent77, Ardanis, DavidW, SubtleDoctor, among others.
