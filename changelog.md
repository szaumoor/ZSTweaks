# Changelog

## Fix

- Deleted duplicated variable assignment for the group component of trap cheese
- Fixed some effects in Dagger of Venom being dispellable when they shouldn't
- Fixed Cloak of Displacement missing resistance to magical damage, and magical cold and fire damage, since it's supposed to be universal.
- Fixed Mass Cause Light Wounds not having a casting speed of 2 reflected in the description to mirror the tweak to Mass Cure (TODO)
- Fixed incorrect healing scaling for Cure Serious Wound, leading the spell to heal more than intended

## Modifications

- Rings of Elemental Control overall elemental resistance dropped to 40%
- Dagger of Venom modification now patches the upgraded version of the Dagger of Venom created by Thalantyr. This version deals a bit more poison damage than the base one. Optionally, the BG2 version sold by Gul Dukeem will actually be the upgraded version, if desired by the user. Note that in the case of EET, this requires me to make a copy of the resource, which means some tweaks that affect the item directly won't know about this new resource, unless it's from my mod. Base price will be adjusted to 12K (20% increase).
- Short Sword of Backstabbing (Shadow's Blade) modification also patches the upgraded version thereof (Sword of the Murderer) created by Thalantyr, which increase critical hit chance by 5% and adds a rebalanced chance to paralyze on contact on backstabs and regular attacks. This also fixes in passing certain issues in the item, such as the paralysis portrait icon bypassing resistance but the paralysis itself unable to do so. The entire effect can bypass resistance. Optionally, the BG2 version of the same item will be this upgraded version, if desired by the user. Note that in the case of EET, this requires me to make a copy of the resource, which means some tweaks that affect the item directly won't know about this new resource, unless it's from my mod.
- Upgraded Cloak of Nondetection from Thalantyr Item Upgrade mod is now handled by the relevant component in this mod. Optionally, the BG2 version of the same item will be this upgraded version, if desired by the user. The price and lore required is slightly increased in this case. Note that in the case of EET, this requires me to make a copy of the resource, which means some tweaks that affect the item directly won't know about this new resource, unless it's from my mod.
- Cloak of Displacement now allows user to select the DR they wish between 1 and 10. Default reduced from 5 to 4.
- Cloak of Displacement now grants +1 Armor Class to every damage type, +4 vs missile (default)
- Cure/Cause spells now make the spells have a improved casting speed
  - Each tier to Cure/Cause adds 1 casting speed from the base 1. As such, Cure Light Wounds has a casting speed of 1, Cure Serious Wounds has a casting speed of 4, and Heal has a casting speed of 6. This should give lower tiers an upside that might be of value despite the lower healing.
  - Mass Cure continues using a casting speed of 2 (from 5)
  - Rejuvenating Mist (Eldath's) casting speed further reduced to 4
  - As a bonus, Raise Dead, Recall Spirit, and Resurrection can also have their casting speed reduced to 6 (from 9). This is optional, and ON by default.
- Cure/Cause spells now make the spells have a range of 10 ft. instead of requiring melee range, which should help casters, both ally and foe, have an easier time safely healing their party. This is optional and ON by default.
- Otiluke's Resilient sphere component now also uses the much better animation of IWDEE in BG games
- Disintegrate now uses the IWDEE animation where instead of instantly converting to dust, the creature rapidly vanishes. (TODO)
- Added warning for components that apply patches based on proficiencies about how they won't detect weapons as expected if run after components that change the proficiency system.

## New components

- Make Globes of Invulnerability use the animation from IWD (xxxx) (BGEE BG2EE EET)


## Future additions

