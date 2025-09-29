# ZSTweaks

## Description

This mod is a compilation of tweaks that I think personally improve things as they are in the vanilla game. The vast majority of the tweaks are designed to be simple improvements of underpowered items or abilities. Some of them overhaul the game a bit more extensively, though not radically.

Every group of components, except those that have only a few items, has as the first component the option to install all components in the group, except those that require user input.

Finally, any component that adds damage to items on hit, or alters items with damage on hit, will mark the damage effects as not capable of waking up sleepers.

This is done because there is no advantage that I can see to making that damage capable of waking sleepers, but it does prevent an annoying corner case, which is that if you have a melee/ranged weapon effect that causes interruptible sleep, and other on-hit damage the weapons have trigger after it, it will wake them up, even if it was the hit of this weapon what caused the sleep, which is all pretty silly.

In vanilla, this is not contemplated, likely because there isn't any means of introducing sleep on hit to arbitrary weapons and as such that circumstance would have never occurred. My mod ZS_WeaponOils does introduce this situation if using the Drow Soporific Oil.

As of version 1.4.5 a configuration file is now provided, where the user may change some variables to further customize components. This file is **ZSTweaks/zstweaks_prefs.txt**. Be sure to check it out to see what you can fine tune.

### [See all component details here](ZSTweaks/component_readme.md)

## Compatibility and installation order

This mod was tested on the 2.6.6 version of the game, and every tweak will be under the assumption that this is the version of the game being played. I do not know if it'll work correctly with previous versions nor will I test it or provide support for it. If it works, great, if it doesn't, too bad.

The mod should generally be installed after mods that add items to the game. If installed after, the tweaks in this mod that affect them will not be able to affect those.

As far as other mods that may affect spells or abilities, it might or might not be compatible; it depends on the nature of the tweak. For example, if a tweak changes who can use a type of weapon, and my tweak just adds a damage bonus to it, it would be compatible, but that may not be the case for every tweak. If there's a philosophical or conceptual difference in the design of the spell or ability, it might make no sense to install both tweaks, or it might fail to install, so use your best judgment. For obvious reasons, don't attempt to mix two tweaks that try to do the exact same thing, as the results will likely not be what you expected. I'm open to providing compatibility as long as I'm interested in the other mod (or if it's easy to provide). One example is SCS, ToF, and Tweaks Anthology, since I like them a lot and I've been using them for years.

Currently, relevant compatibility has been added deliberately to:

- ToF
- SCS
- EEFixpack
- ZS_ItemPack
- Item Upgrade
- IWDification
- Project Javelin
- Rogue Rebalancing
- Forgotten Armaments
- Wares of the Planes
- ZS_ShadowdancerOverhaul
- Shades of the Sword Coast

## Notes for users and modders

I advise making this mod the first tweak mod in your mod tweaks, at least in the current state. While the code has been vastly improved since it was first released, it's still quite likely that other older mods will have a better time anticipating changes, and because it's young, I probably haven't added enough support in my tweaks to work universally after other older tweaks that modify the same items.

An exception to this are components that EXPLICITLY say that they must be installed in a certain order. Finally, I'm not perfect, so if you find a component that probably makes more sense to install in a different order, you might be right. If you find that's the case, and I should probably know this, do let me know.

## Credits

- To BeamDog and Bioware for the game, obviously.
- CamDawg for spending significant time to explain details about how WeiDu works, sharing insights, helpful code, and other matters for modding. Many thanks for your video tutorials too
- DavidW for his very helpful WeiDu tutorial
- The developers of WeiDu, including the documentation
- And the IESDP, an invaluable resource.
- moggadeet and JDSilvergun for suggesting lines of dialog for Cespenar
- Thanks to Angel for sharing information about PnP stuff that helped me design some tweaks
- Troveur for good ideas, feedback, and suggestions for tweaks
- People on Discord generally for their help, and the great modders out there that allowed their WeiDu code to be available publicly, like The Artisan, jmerry, CamDawg, 11jo, Argent77, Ardanis, DavidW, SubtleDoctor, among others.
- dark0dave for giving me the idea of adding a configuration file, now an integral part of the mod that I'll never part with and will continue to implement in other mods.
- For the people in G3 and Discord for reporting bugs
- zenblack for feedback, brainstorming, and icon-making.
