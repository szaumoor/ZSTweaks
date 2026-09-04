# Changelog

## Fix

- Deleted duplicated variable assignment for the group component of trap cheese
- Fixed some effects in Dagger of Venom being dispellable when they shouldn't
- Fixed Cloak of Displacement missing resistance to magical damage, and magical cold and fire damage, since it's supposed to be universal.
- Fixed Mass Cause Light Wounds not having a casting speed of 2 reflected in the description to mirror the tweak to Mass Cure
- Fixed incorrect healing scaling for Cure/Cause Serious Wounds, leading the spell to heal/damage more than intended
- Fixed tweak to Magic Missile not respond to caster levels as intended when using component 1544 of scroll usability and casting level
- Fixed icon for Sand Throw not being recognized by the game in the description window

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
- Shield of Faith component now always grants the maximum damage resistance at the outset, since at the beginning, the resistance granted is barely worth mentioning. However, I decided to nerf damage resistance to 20%. So now, my component makes it always grant that, plus +2 Armor Class, leaving only duration as the variable that scales with level. As a minor counterbalance for the high power at the outset, duration is now 2 rounds at level 1, plus 1 round per level (originally, it starts at 4 rounds).
- Potion Overhaul now patches Potion of Insight so it increases Wisdom by 4 instead of setting it to 18 and lasts for 24 in-game hours instead. Does not stack, but the extended duration allows divine casters to memorize extra spells if any new slots were opened up thanks to the extra wisdom. It also increases lore by 15. Sorry, it's no longer a way to bypass using Wisdom as a dump stat when you want to cast Wish... (TODO)
- Ray of Enfeeblement component now reduces Strength in the 6–9 range by half its value instead of setting it to 5. Those that have already 5 or less, have their strength set to 1. This ensures the spell remains likely to be relevant and the possibility of increasing strength is eliminated. (TODO)
- Holy Power now only sets strength to 18/100 if it's actually higher than the current one
- Slightly changed the defensive changes of yuanti in the relevant component, getting instead 18% damage resistance to slashing and +2 AC, and 9% resistance to piercing and missile, as well as +1 AC vs. missile and piercing

## New components

- Make Globes of Invulnerability use the animation from IWD (xxxx) (BGEE BG2EE EET)
- Make buffing spells bypass spell level protection/absorption and Improved Invisibility (xxxx) (IWDEE BGEE BG2EE EET)
- Make Strength of One cast faster and not reduce the strength of characters with higher strength
- Make Strength (Wizard/Mazzy) only increase strength
- Make Feeblemindedness reduce Intelligence to 1 if Intelligence is already at 3
- Make Champion's Strength more balanced and useful
- Make Infravision into a spell that improves vision in more general way (xxxx) (IWDEE BGEE BG2EE EET)


## Future additions

