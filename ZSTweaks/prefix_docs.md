# Prefixes

## Introduction

This document explains the purpose of each "pre-fix": a fix applied before any ZSTweaks component runs. Prefixes correct game bugs, make game data consistent for tweaks that rely on it, and prevent avoidable installation errors.

I recommend leaving prefixes enabled unless you have a specific reason to disable one. The entries below explain what each fix changes and note any game restrictions, mod requirements, or overlap with other fixes. Unless otherwise noted, a prefix does not depend on which other mods are installed.

## What to Expect

### Albino Dragon Wyrmling Category Fix (zst_albino_wyrms)

The albino wyrmlings in SoD are classified as wyverns, likely due to a copy-and-paste error. This prefix assigns them the dragon race and silver dragon class; the latter is the game's shared category for silver and white dragons.

It runs only when SoD is present.

### Broken #BONECIR.SPL File Fix (zst_bonecir)

This prefix repairs the corrupted `#BONECIR.SPL` file in IWDEE, which can cause installation errors. It is harmless if another mod, such as one of CamDawg's mods, has already repaired the file.

It applies only to IWDEE and is skipped if the Fixpack is installed.

### Chimera Race Fix (zst_chimeras)

This prefix corrects a chimera's race in one of Lava's IWDEE mods. It runs only when the relevant creature file is present.

### Cutthroat +4 Speed Factor Fix (zst_cutthroat_sf)

Cutthroat uses the speed factor of a +2 weapon despite being a +4 weapon. This prefix gives it the appropriate speed factor.

It is skipped if the Fixpack is installed, since it already corrects this issue.

### Dagger +3 Weight Fix (zst_dagg24)

This prefix changes the weight of a +3 dagger in BG2 from 0 to 1. It applies only if the dagger's weight is still 0.

It is skipped if the Fixpack is installed, since it already corrects this issue.

### Dancing Swords Fix (zst_dancing_swords)

Some dancing swords in BG2 are incorrectly classified as gnolls, allowing effects that target gnolls to affect them. This prefix corrects their classification. The Fixpack does not address this issue.

### Darts of Bone Speed Factor Fix (zst_darts_bone)

This prefix sets the speed factor of Darts of Bone to 0, as expected for +3 darts.

It runs only when the item is present, such as in IWDEE or a game with IWDification installed. It is skipped if the Fixpack is installed, since it already corrects this issue.

### Drider Race Fix (zst_drider)

This prefix classifies driders as driders instead of spiders, allowing effects that target driders to recognize them correctly.

It covers the driders in SoD and, in IWDEE, the drider added by the relevant component of Lava's Will O' Wisp mod. The IWDEE fix runs only when that component is installed.

### Dryad Race Fix (zst_dryad_race)

This prefix assigns the fairy race to several dryads in BG2 that have an incorrect race.

### EE Fixpack Exaltation Bug (zst_eefp_exaltation_bug)

The Fixpack adds spell states to Exaltation to identify immunity to several status effects. However, it grants those states before checking whether the target is the caster, even though the ability should have no effect on the caster.

This prefix corrects the order of those checks. It runs only when the Fixpack is installed and is intended to be removed once a Fixpack release includes the correction.

### Fixpack Blackrazor and Black Blade of Disaster Fix (zst_eefp_unfix_blackrazor_bbod)

This prefix corrects a Fixpack bug that causes the chance-based benefits of Blackrazor and Black Blade of Disaster (BBoD) to apply to the creature struck instead of the wielder.

It runs only when the Fixpack and the relevant spell files are present. It is harmless if you already use a corrected version from the Fixpack's main branch. This workaround is intended to be removed once a Fixpack release includes the correction.

### Gas Spore Category Fix (zst_gas_spore)

An unused Gas Spore creature uses the beholder animation and releases a Cloudkill when killed. In the lore, gas spores are balloon-like fungi that resemble beholders.

This prefix places the creature in the plant category, the closest available match for fungi. Since the creature is unused, the change may never affect normal play.

### Gender Fix (zst_gender_fix)

This prefix marks creatures normally considered sexless or genderless, such as golems and mind flayers, as having no gender. Many of these creatures are incorrectly marked as male; battle horrors are one example. This makes effects that target males apply far more broadly than intended.

Two components rely on this correction:

- **Girdle of Gender Inversion (component 1272)** grants a minor combat bonus against the wearer's original gender. The fix prevents this bonus from applying to creatures that should have no gender.
- **Shar-Teel (component 1647)** grants her minor combat bonuses against males.

This fix applies to all supported games.

### Trademeet Genie Race Fix (zst_genie_races)

The Trademeet genies have inconsistent classifications, but the evidence points to them being dao rather than djinn. This prefix classifies them as dao.

### Golem Juggernaut Race Standardization (zst_golem_jugg)

The Golem Juggernaut created by the Watcher's Keep tome is classified as an iron golem, while the other existing Golem Juggernaut is classified as a stone golem.

This prefix gives the summoned golem the stone golem classification as well, preventing effects specific to iron golems from applying to it.

### Greater Clay Golem Class Fix (zst_greater_clay_golem)

The Greater Clay Golem in BP2 is classified as an iron golem, likely because it also uses the iron golem animation. This prefix classifies it as a clay golem so effects that target clay golems can recognize it.

I recommend leaving this enabled if you plan to play BP2.

### Green Dragon Class Fix (zst_green_dragons)

This prefix assigns green dragons their correct class so effects that specifically target them can recognize them.

### Humanoids Tagged as Weapons Fix (zst_humanoids_as_weapons)

This prefix corrects several humanoids whose general category is incorrectly set to "weapon." These include the enemies Aesgareth fights in scripted encounters during the card game.

It changes their category to "humanoid" only if they are still classified as weapons.

### Invisible Stalker Category Fix (zst_invistalkers_race)

This prefix classifies invisible stalkers as air elementals instead of humans or spectres.

### Korax the Ghoul Race Fix (zst_korax_race)

Despite his name, Korax the Ghoul is classified as a revenant/mummy. This prefix assigns him the ghoul race.

### Lilarcor Speed Factor Fix (zst_lilarcor_speed_factor)

Lilarcor uses the speed factor of a +2 weapon despite being a +3 weapon. This prefix gives it the appropriate speed factor.

It is skipped if the Fixpack is installed, since it already corrects this issue.

### Minotaur Race Fix (zst_minotaur_race_fix)

This prefix assigns the minotaur race to BG2 minotaurs incorrectly classified as ogres or gnolls. Effects that target minotaurs by race can then recognize them correctly.

For example, my **Maze tweak (component 405)** relies on this classification to make minotaurs immune to the spell.

### Misaligned Indexes Fix (zst_misaligned)

This prefix repairs corrupted data in the basic quarterstaff and the Dwarven Thrower. Several of my components rely on this correction to avoid errors when processing these items, so I strongly recommend leaving it enabled.

It is skipped if the Fixpack is installed, since it already fixes it.

### Nishruu & Hakeashar Race Fix (zst_nish_hake_race)

This prefix classifies nishruus and hakeashars as monstrous mists instead of ogre mages.

It applies to games other than IWDEE and is skipped if the Fixpack is installed.

### Not the Rabbits! (zst_not_the_rabbits)

This prefix assigns the rabbit race to rabbits that lack it. The correction may have no noticeable effect during play, but it keeps creature data consistent.

It applies only to the BGEE portion of the Bhaalspawn saga.

### The Ogre's Sword Proficiency Fix (zst_ogre_sword)

Although it is an illusion, the Ogre's Sword has the damage dice of a bastard sword but uses the long sword proficiency. This prefix changes its proficiency to bastard sword to correct the mismatch.

It is skipped if the Fixpack is installed, since it already corrects this issue.

### Phantom Blade Damage (zst_phantom_blade_dmg)

This prefix prevents Phantom Blade's extra damage from waking sleeping targets. Without it, a mod that adds a Sleep effect on hit can put a target to sleep only for the weapon's extra damage to wake it immediately.

My weapon tweaks apply the same rule to extra damage. Since Phantom Blade has no dedicated component, this prefix handles it separately. You can disable it if you prefer the original behavior, but the other weapon tweaks will still follow this rule.

### Phantom Blade and Chaotic Commands Duration Fix (zst_phantom_chaotic_dur)

The durations of Phantom Blade and Chaotic Commands stop scaling at level 18 instead of the intended level 20. This prefix extends their duration scaling to level 20.

It applies to games other than IWDEE and is skipped if the Fixpack is installed.

### Pit Fiend Race Fix (zst_pit_fiends)

Pit fiends in BG2 are classified as demons instead of devils. This prefix corrects the classification to match the lore, allowing effects that distinguish between demons and devils to affect them appropriately.

### Riggilo Proficiency Fix (zst_riggilo)

Riggilo, the thief looting Durlag's Tower, has 4 pips in large swords under the legacy proficiency system despite wielding a short sword. This prefix gives him 1 pip in small swords so he can use his weapon without a proficiency penalty.

It is skipped if the Fixpack is installed, since it already corrects this issue.

### Shadowdancer THAC0 Fix (zst_sd_thac0_bug)

Shadowdancers suffer a THAC0 penalty of 5 when using weapons without proficiency, compared with the usual penalty of 3 for other thieves and bards. This prefix reduces their penalty to 3.

It is skipped if the Fixpack is installed, since it already corrects this issue.

### Seeking Sword Casting Speed Fix (zst_seeking_sw_casting_speed)

Seeking Sword incorrectly takes longer to cast at level 20. This prefix restores its usual casting speed.

It applies to games other than IWDEE, where the issue does not occur. My Seeking Sword component also corrects this, so leaving the prefix enabled alongside it is harmless.

### Shadow Twin Duration Fix (zst_shadow_twin_duration)

Shadow Twin lasts 1 turn in the unmodified game instead of the intended 2 turns. This prefix restores the intended duration.

It is skipped if the Fixpack or my Shadowdancer Overhaul is installed, since both already correct the duration.

### Shadow Spell Selection Fix (zst_shadows_spells_bug)

Many shadow and mist creatures have unintended arcane spells in their spellbooks, which they can cast if ordered to do so. This is most noticeable with Hexxat's Children of the Night ability: summoned shadows can each have several castings of spells such as Cloudkill.

This prefix removes those unintended spells. It is skipped if the Fixpack is installed, since it already corrects this issue.

### Shakti Figurine Short Sword Speed Factor Fix (zst_shakti)

This prefix sets the speed factor of the short swords granted by the Shakti Figurine to 0, as expected for +4 weapons.

It is skipped if the Fixpack is installed, since it already corrects this issue.

### Shambling Mound Category Fix (zst_shambling_mounds)

This prefix assigns shambling mounds their correct race and places them in the plant category. Effects that target shambling mounds or plants can then recognize them correctly.

### Shield Standardization Prefix (zst_shield_std_fix)

This prefix gives known shields consistent generic names. For example, a small shield should use "Small Shield" as its generic name. The fixes target a manually maintained list of shields.

The game does not distinguish shield categories beyond their generic names, so this standardization is needed for consistent results with vanilla shields when using my **shield tweak (component 1546)**. I recommend leaving it enabled if you use that tweak; it is also harmless without it. This fix applies to all supported games.

### Simulacrum Fix for Game Version 2.6.6+ (zst_simulacra_fix)

Game version 2.6.6 removed the ability of simulacra to enter stealth and detect traps. This prefix restores those abilities, which are particularly useful for Shadowdancers. Although this could be considered a tweak, I recommend leaving it enabled.

### Solar Category Fix (zst_solar_tags)

The solars in ToB are incorrectly classified as demons. This may have gone unnoticed because they appear only in cutscenes and scripted dialogue.

This prefix is intended to assign them the solar race and the cleric/mage class, following the same class convention as planetars.

### Plate of Balduran Fix (zst_wa2plat_fix)

The Plate of Balduran's Charisma bonus does not apply to characters below level 6. This rarely matters in BG2 because every class starts above level 5, but it could affect a character suffering from level drain.

This prefix removes the unintended level restriction.

### Appearance Fix for Wakizashis and Ninjatos (zst_wakininja_animations)

This prefix standardizes weapon appearances so wakizashis look like short swords and ninjatos look like long swords.

Because these weapons share a proficiency category, my components use their appearance as well as their proficiency to distinguish them. Consistent appearances help **Finesse (component 1450)** and my **weapon dice overhaul (component 1150)** identify them correctly.

It is skipped if the Fixpack is installed, since it already corrects this issue.

### Water Elemental Class Fix (zst_water_elementals)

This prefix assigns water elementals their correct class so effects that specifically target them can recognize them.

It is skipped if the Fixpack is installed, since it already corrects this issue.

### Wraith Spiders Are Undead (zst_wraith_spid_undead)

Wraith spiders are undead in the lore and have undead immunities, but the game classifies them as monsters. As a result, effects that specifically target undead do not recognize them.

This prefix assigns them to the undead category, including any creatures added by mods that are identified as wraith spiders but lack that category.

### Wrong Proficiency Fix (zst_wrong_profs)

This prefix corrects mismatches between creatures' weapons and proficiencies, either by replacing unsuitable weapons or by adding missing proficiencies. It covers several thieves, cambions, and a yuan-ti in BG2.

It is skipped if the Fixpack is installed, since it already corrects these issues.
