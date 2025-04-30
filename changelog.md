**Fixes**
- Fixed Skull of Death's not adding th tweak correctly without the Fixpack installed first
- Fixed small issue that was marking tons of files as edited when they weren't
- Fixed Healing spell component not affecting correctly the Moderate healing spell because it uses a different file name for whatever reason
- Fixed Energy Drain not modifying the cleric's version of it in IWD / IWDification
- Fixed duplicate component inclusion of vorpal hits tweak in the general tweaks category group install component, which could lead to install warnings and other issues
- Fixed the description of Aid not being updated (because I forgot to add one in the first place)
- Fixed Symbol, Death tweak not affecting the NPC versions of it
- Fixed Symbol of Death tweak causing the "unaffected by symbol, death" message when above 60 HP, since it's not relevant with the component
- Fixed hardcoded filename for Cure Moderate Wounds in the tweak which would mess and likely break slightly the functioning of Alicorn Lance if it was installed in BG with IWDification installed or equivalent mod
- Fixed Cure Moderate Wounds receiving the wrong string for the spell description
- Fixed other instances that could fail to detect IWD spells introduced by IWDification (thanks CamDawg)
- Disabled sunray tweak for IWDEE in the group installation of divine magic tweaks, as the spell works very differently and the current logic doesn't actually handle it

**Modifications**
- Skull of Death component will make the Death Spell able to be cast at particular points instead of to a target
- The heal spell effect can now optionally modify the cause wounds spells, following the same formula. The only other difference is that the weapons used for the touch will always succeed at striking a target, and that the damage inflicted may be saved against to receive only half (except for Harm). For users of IWDification / SCS's relevant component, it will modify the variant added instead
- Aid component will also make it grant +1 HP per casting level (+1 HP at level 3, +17 HP at level 20)
- Code quality improvements
- Merged the light weapon proficiency overhaul with the new component tweaking stats (activated by default -- see the config file)
- Symbol of Death components are no longer duplicated for no reason in the priest and wizard spells section, so they're now part of the general tweaks, and now also contain other (optional, see config file) modifications for the other Symbol spells
	- Symbol, Death: Chance to kill above 60 HP, but with a save vs. Death at +6
	- Symbol, Pain: The save is now made at -4, not 0, similar to the other ones. It will also decrease damage output by 10%. The duration seems rather silly, so it'll be reduced to 11 rounds instead of 11 turns.
	- Optionally, you can select to "fix" the NPC versions of the spells, whose effects last more than DOUBLE compared to the player.
- Improved the implementation of the Symbol, Death tweak so it works identically for creatures below and above/equal to 60 HP
- Horrid Wilting does not damage non-water elementals anymore
- Energy Drain now mimics IWDEE's version, where some creatures such as elementals are outright immune to it
- Added Bucklers as an optional component of Finesse, where single-classed Thieves can use a Parry-type attack, that can sometimes deflect and leave the opponent more exposed briefly. If the shield component was installed, they will simply be better at it than other users
- Healing spells component now includes Caelar Argent's version of Cure Critical Wounds
- Bless component now includes Caelar Argent's version of Bless
- Component groups renamed


**New components / features**
- Make the Bow of Gesen's projectiles faster
- Make Called Shot directly increase ranged weapon damage, instead of adding 2 damage after the initial hit
- Make Silence 15ft Radius party-friendly
- Make the basic benefits and progression of various character stats more streamlined or interesting
- Make Righteous Wrath of the Faithful only cause some fatigue, instead of guaranteeing it, similar to Haste and restore the attack damage bonus
- Make Decastave at least grant proficiency with staff while it's held
- Make Otiluke's Freezing Sphere deal half damage on save
- Make Unfailing Endurance an area spell that cures the fatigue of the whole party
- Make Gloves of Healing worth more than what you get by selling them
- Make Runic Hammer's undead disruption more balanced
- Make Chain Lightning scale more strongly and spread faster to enemies
- Make Alicorn Lance more effective by increasing damage by 1 dice every 2 levels, up to 8d6
- Make Icelance upgrade damage three times, up to 8d6
- Make Whirlwind more effective and able to damage more creatures before dissipating
- Make a number of items without functional use become useful (all are optional)
- Make Girdle of Fortitude set Constitution to 18 on equip, instead of with a charge ability
- Make Protector of the Second a special leather armor that is more powerful when used by rangers
- Make the different shield types more distinct and optionally change shield usability
- Make Ring of the Crusade (SoD) also grant a combat/damage roll bonus vs. demons and devils
- Make Ring of Purity (SoD) also grant a combat bonuses vs. evil and grant a spell slot bonus to good priests and paladins
- Make Rhino Beetle Gear (SoD) provide more protection to non-crushing, and rebalance damage resistances
- Make Aule's Staff +3 grant an extra attack per round to non-fighter wizards and sorcerers, inspired by the description
- Make Beetles more resistant to non-crushing weapons
- Make Protection from Undead scrolls less overpowered but still invaluable vs. undead
