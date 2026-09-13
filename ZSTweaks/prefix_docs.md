# Prefixes

## Introduction

This document aims to explain the rationale behind every "pre-fix". A "pre-fix" is simply a cute name of saying a fix that runs before any component runs. Most of these are intended to always be run in order to remove bugs from the game, add consistency in the case of some tweaks, and prevent installation errors that can be avoided.

## What to expect

### Gender Fix (zst_gender_fix)

This prefix tags creatures that are normally considered sexless / genderless such as golems and mind flayers as having no sex / gender. This is done, not just because it makes sense but because otherwise it interferes with component in my mod that specifically target gender. Many creatures are incorrectly tagged, such as battle horrors considered "male". It's never the case that they left things as "female" as default, which means that if unpatched, you will encounter tons of males and whatever affects that target gender will apply to much more in a nonsensical way. Specifically, these are the components that are directly affected:

- Component 1272 (Girdle of Gender Inversion). The component adds a minor combat bonus against the original gender of the wearer. Thus, the fix is required to make sure it doesn't target things that make no sense being seen as male.
- Component 1647 (Shar-Teel). This component allows her to have minor combat bonuses against males.

This fix applies to every game and does not interact with the presence of any mod. It will always run if ticked on. I recommend leaving it ON unless you have a strong reason to suspect it would cause a problem.

### Shield Standardization Prefix (zst_shield_std_fix)

This fix standardizes the general name of various shields without a standard name. That is, small shields without the general name of "small shield", for example. It patches *known* shields *manually* that do not follow this trend. This is strictly needed to achieve consistent results with vanilla shields, if planning to use my **shield tweak (component 1546)**, because the game does not tag shields in their categories beyond their general name. I recommend leaving it ON if planning to use that tweak, but it is harmless even if you don't. This component applies to every game and does not interact with the presence of any mod.

### Dancing Swords Fix (zst_dancing_swords)

This prefix simply addresses a minor bug in BG2 where some dancing swords are tagged in BG2 as Gnoll race-wise. This means that if you happened to have an item or spell that interacts in some special way with the race of gnoll, they would be affected. This is just one of those things not addressed by the fixpack so I recommend leaving it ON.

### Simulacrum Fix for game version 2.6.6+ (zst_simulacra_fix)

Version 2.6.6 of the game for some bizarre reason removed the ability of simulacra to enter stealth and detect traps. Some would consider this a tweak, but I would leave it on. It rather annoyed me when I was messing about with shadowdancers. Let's cripple this thieving kit a bit more after making thieves and bards a joke! Really?

### Phantom Blade Damage (zst_phantom_blade_dmg)

Because I don't have a specific component for Phantom Blade, I created a prefix that addresses something that I address in every tweak that changes weapons in major ways, which is to make any extra damage they inflict unable to wake up sleepers. This is done because if you use a mod that lets you add a on-hit Sleep effect, and the weapon has an on-hit damage opcode, unless it's tagged as unable to wake up sleepers, the victim will sleep and then wake up immediately due to the damage fairly consistently, which is silly, so this takes care of that edge case. I recommend leaving it on unless you disagree with that opinion, though bear in mind all of my tweaks follow this assumption.

No interaction with the presence of other mods.

### Wraith Spiders Are Undead (zst_wraith_spid_undead)

Wraith spiders are undead in the lore but the game tags them as monsters. Despite having all the immunities of the undead, they can't be targeted by anything that targets undead because of this mislabeling. This will fix every instance of wraith spider that isn't undead in terms of category. I recommend leaving this on, for a consistent, lore-accurate experience of these creatures.

No interaction with the presence of other mods.

### Fixpack Mangling of Blackrazor and BBoD (zst_eefp_unfix_blackrazor_bbod)

Essentially, the fixpack bugged those blades such that the percentage-based benefits apply to what you hit, instead of the user. This will be removed once the fixpack makes a new release with this fix. Even if you use the main branch, this will harmless anyway. I recommend leaving it on.

It will not run without the fixpack present.

### Shadow Twin Duration Fix (zst_shadow_twin_duration)

This ability is bugged in vanilla, due to it providing 1 turn of duration where 2 were expected. This won't run if the fixpack is detected, as they fix it already, and it won't run if my Shadowdancer Overhaul is found either, because it also fixes it. I recommend leaving it on.

### Shadowdancer THAC0 Fix (zst_sd_thac0_bug)

This fixes the issue where the Shadowdancer incurs a -5 THAC0 penalty if using a weapon they have no proficiency for, instead of the usual -3 in the case of every other thief and bard.

This won't run if the fixpack is detected, as they fix it already. Does no harm either way.

### Broken #BONECIR.SPL File Fix (zst_bonecir)

This essentially fixes a corrupted file in IWDEE that would lead to installation errors. Does no harm even if other mods already fix it (such as CamDawg's mods), but I recommend leaving it on to minimize issues.

This will run only for IWDEE and only if the fixpack is not detected, as they fix it already. Does no harm either way.

### Drider Race Fix (zst_drider)

This ensures any driders found in vanilla, or in some mods (manually added) are actually tagged as driders race-wise instead of spiders so effects that specifically target driders can do so. I recommend leaving it on unless you have a reason not to.

This will only run if Lava's Will' O Wisp mod's component that adds driders is installed.

### Chimera Race Fix (zst_chimeras)

This fixes instances of chimeras where the race is set incorrectly. Currently it only affects on mod by Lava. Harmless either way even if you don't use his mods. It won't run unless the relevant file is found.

### Phantom Blade and Chaotic Commands Duration Fix (zst_phantom_chaotic_dur)

This fixes a common issue with various spells where they stop scaling for some strange reason at level 18 instead of 20 when they should. This affects Phantom Blade and Chaotic Commands. This will not run if the fixpack is prevent and I recommend leaving it on.

### Nishruu & Hakeashar Race Fix (zst_nish_hake_race)

This fixes these creatures so they are tagged correctly as monstrous mists instead of ogre mages. I recommend leaving it on, and it has no interaction with other mods.

### Seeking Sword Casting Speed Fix (zst_seeking_sw_casting_speed)

Seeking Sword for some strange reason has a slower casting speed at level 20. This fixes that. I recommend leaving it on. No interaction with other mods and will run in any non-IWDEE game (as it has no problem there). My component tweaking the Seeking Sword already takes care of this, but it is harmless to leave it on regardless.

### Trademeet Genie Race Fix (zst_genie_races)

The trademeet genies are handled race-wise pretty confusingly, but all evidence suggests that they are not the benevolent djinnis but the more evilly-inclined dao genies. No interaction with other mods, and I recommend leaving it on.

### Pit Fiend Race Fix (zst_pit_fiends)

Pit Fiends in BG2 are marked as demons instead of devils, which is incorrect based on the lore. This is a consistency fix that may have some effects if using an item that specifically targets devils but not demons. I recommend leaving it on. It's harmless either way. It does not interact with any other mod.

### Not the Rabbits! (zst_not_the_rabbits)

This fixes instances of rabbits in the game that are not considered rabbits race-wise. This may never have any effect in your game, but it is a consistency issue. It's harmless either way. I recommend leaving it on. It does not interact with any other mod. This only affects the BGEE part of the Bhaalspawn saga.

### Misaligned Indexes Fix (zst_misaligned)

This fixes a certain corrupted data in the basic quarterstaff and dwarven thrower. This is essential to make sure many of my components do not crash at runtime. Thus, I recommend leaving it on. Does not run if the fixpack is present, as it already fixes this.

### Appearance Fix for Wakizashis and Ninjatos (zst_wakininja_animations)

This standardizes the appearance of a few wakizashis and ninjatos that do not conform to the usual convention in terms of appearance. This is done because in order to identify specific variants within the proficiency of these weapons, it needs to refer not just to that, but also their appearance. Wakizashis look like short swords and ninjatos like longswords. I recommend leaving this on to make sure components that patch swords like these detect them appropriately. This affects my Finesse component (1450) and my weapon dice overhaul (1150). This does not run if the fixpack is present, as it already fixes this issue.

### Lilarcor Speed Factor Fix (zst_lilarcor_speed_factor)

Lilarcor uses the speed factor of a +2 weapon, despite being a +3 weapon. This fixes the inconsistency. It does not run if the fixpack is present, as it fixes it too.

### Cutthroat +4 Speed Factor Fix (zst_cutthroat_sf)

Cutthroat uses the speed factor of a +2 weapon, despite being a +4 weapon. This fixes the inconsistency. It doesm not run if the fixpack is present, as it fixes it too.

### Water Elementals Class Fix (zst_water_elementals)

This tags water elementals correctly as water elementals, which will allow effects that target them for whatever reason to actually target them. I recommend leaving it one. This does not run if the fixpack is present, as it fixes it too.

### Green Dragon Class Fix (zst_green_dragons)

This tags green dragons appropriately as green dragons,which will allow effects that target them for whatever reason to actually target them. I recommend leaving it one. This does not interact with any other mod.

### Shadow Spell Selection Fix (zst_shadows_spells_bug)

This fixes many shadow-type and mist creatures having a fairly large spellbook of memorized arcane spells that they can cast if ordered to. In practical terms for the player, this mostly affects Hexxat's Children of the Night ability, where you could get shadows with lots of spells, each able to cast several cloudkills, for example. I recommend leaving this on. It does not run if the fixpack is detected, as that fixes it too.

### Wrong Proficiency Fix (zst_wrong_profs)

This fixes various instances of creatures using wrong weapons they have no proficiency for, or right weapons without proficiency, including many thieves, cambions, and a BG2 yuan-ti. I recommend leaving this ON. It does not run if the fixpack is included, as they fix it too.

### Plate of Balduran Fix (zst_wa2plat_fix)

This fixes an issue with the Plate of Balduran where the Charisma bonus does not apply if the character is less than level 6. Since this happens in BG2, this cannot happen normally, as the starting level of all classes is above 5. It could, however potentially happen if exposed to level drain. Regardless, this fixes it. This does not interact with any mod and I recommend leaving it on.

### Shambling Mounds Category Fix (zst_shambling_mounds)

Shambling mounds are not correctly tagged as shambling mounds racewise. I consider them plants too as their general category. This will allow effects that target shambling mound or plants to include them correctly. I recommend leaving this on. It does not interact with any other mod.

### Invisible Stalker Category Fix (zst_invistalkers_race)

This standardizes the stalkers as air elementals, instead of humans or spectres. I recommend leaving this on. It does not interact with other mods.

### EE Fixpack Exaltation Bug (zst_eefp_exaltation_bug)

This fixes a problem caused by the fixpack where the new spell states they created to identify immunity to several status effects are granted to the target before checking if the target is not the caster. Since the ability should not work at all on the caster, this is a bug. I recommend leaving it on if Fixpack is used. It will disappear once a new release with this fix is released.

### Greater Clay Golem Class Fix (zst_greater_clay_golem)

This fixes the Greater Clay Golem in BP2 not being tagged as clay golem. It is tagged as an iron golem, likely as result of a copy paste error, since it uses the iron golem animation. This will allow any effects that affect clay golems to affect this one too. This is not affected by any mod and this setting should be left on if BP2 is going to be played.

### Golem Juggernaut Race Standardization (zst_golem_jugg)

This standardizes it to stone golem, as the golem created by the WK tome is considered an iron golem for whatever reason. The other existing one is a stone golem. This exists mostly so things that target iron golems don't affect the golem created by the WK tome for no reason. I recommend leaving it on. It's not affected by other mods.

### Dryad Race Fix (zst_dryad_race)

This fixes a few instances in BG2 of dryads not being set correctly to the fairy race. I suggest leaving that on as it's harmless and won't interfere with anything else. It does not interact with any other mod.

### Shakti Figure Short Sword Speed Factor Fix (zst_shakti)

This fixes the granted swords so they have a speed factor of 0, as they normally would as +4 weapons. I suggest leaving this on. It does run if the fixpack is detected, as they fix it too, and won't do any harm either way.

### Dagger +3 wrong weight (zst_dagg24)

This fixes a +3 dagger in BG2 with 0 weight, when it should have 1 at least. I suggest leaving this on. It won't interfere with anything and will only apply if the weight is actually 0. It won't run if the fixpack is detected, as they fix it already.

### Humanoids Tagged as Weapons Fix (zst_humanoids_as_weapons)

This fixes some instances of humanoids tagged as "weapons" for some reason instead of humanoids. This includes the enemies Aesgareth fights in a scripted fashion while playing the card game. I suggest leaving that on. It's harmless and won't apply unless they are set as weapon instead of humanoid.

### Albino Dragon Wyrmling Category Fix (zst_albino_wyrms)

Due to a likely copy paste error, these albino wyrmlings in SoD are tagged as wyverns. This corrects this issue, tagging them correctly as dragons and silver dragons specifically (the common category for silver/white dragons in any case). No effect if SoD isn't detected.

### Korax the Ghouls Race Fix (zst_korax_race)

For some unascertained reason, Korax is tagged as a Revenant/Mummy. It's in the name dammit. This tags Korax as a ghoul. No interaction with any other mod. I suggest leaving it on.

### Riggilo Proficiency Fix (zst_riggilo)

Riggilo (the thief looting Durlag's Tower) has 4 pips in big swords (legacy proficiencies) despite using a short sword. This ensures he has 1 pip in small swords too so he doesn't use the sword at a penalty. This won't run if the fixpack is detected, as it fixes it already. I suggest leaving it on.

### The Ogre Sword Proficiency Fix (zst_ogre_sword)

Despite being an illusion, the weapon is set up as a bastard sword in terms of dice size and dice number, but uses the long sword proficiency. This fixes this inconsistency by setting the proficiency to bastard sword. It won't run if the fixpack is detected, as it fixes it already.

### Darts of Bone Speed Factor Fix (zst_darts_bone)

This fixes these darts so they have a speed factor of 0, as they should as +3 darts. This will only run if the asset is found, whether it's because the presence of IWDification, or the game is IWDEE, but will not run if the fixpack is present, as it fixes that too.

### Minotaur Race Fix (zst_minotaur_race_fix)

This tags every minotaur in BG2 that does not use their proper race (they use Ogre/Gnoll) as properly Minotaur. This would affect every effect that targets minotaurs by race, allowing it work correctly. This affects, for example, my Maze tweak (component 405) which makes minotaurs immune to it. Does not interact with any other mod.

### Gas Spore Category Fix (zst_gas_spore)

There is an unused asset of an enemy called Gas Spore. This uses the beholder animation and is scripted to explode in a Cloudkill when killed. Gas Spore is a real thing in the lore, a balloon-like fungi that resembled beholders. But they're not beholders. I set them as plants instead, since that is the closest thing to fungi. Might never come into play, and probably won't affect anything. Does not interact with any other mod.

### Solar Category Fix (zst_solar_tags)

The Solar in Tob are tagged for whatever reason as demons. This probably is a leftover mistake that was never fixed because the solar never interacts outside of cutscenes and forced dialog, but because it annoys me, I fixed it. I set them, similarly to planetars, to the class of cleric/mage, as well as the race of solar, as you'd expect. Does not interact with any other mod.