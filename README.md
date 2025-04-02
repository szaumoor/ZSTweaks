# ZSTweaks

This mod is a compilation of tweaks that I think personally improve things as they are in the vanilla game. The vast majority of the tweaks are designed to be simple improvements of underpowered items or abilities. Some of them overhaul the game a bit more extensively, though not radically.

Every group of components, except those that have only a few items, has as the first component the option to install all components in the group, except those that require user input.

Finally, any component that adds damage to items on hit, or alters items with damage on hit, will mark the damage effects as not capable of waking up sleepers.

This is done because there is no advantage that I can see to making that damage capable of waking sleepers, but it does prevent an annoying corner case, which is that if you have a melee/ranged weapon effect that causes interruptible sleep, and other on-hit damage the weapons have trigger after it, it will wake them up, even if it was the hit of this weapon what caused the sleep, which is all pretty silly.

In vanilla, this is not contemplated, likely because there isn't any means of introducing sleep on hit to arbitrary weapons and as such that circumstance would have never occurred. My mod ZS_WeaponOils does introduce this situation if using the Drow Soporific Oil.

As of version 1.4.5 a configuration file is now provided, where the user may change some variables to further customize components. This file is **ZSTweaks/zstweaks_prefs.txt**.

__[SEE FULL README HERE](ZSTweaks/README.md)__

## Compatibility and installation order

This mod should generally be installed after mods that add items to the game. If installed after, the tweaks in this mod that affect them will not be able to affect those.

As far as other mods that may affect spells or abilities, it might or might not be compatible; it depends on the nature of the tweak. For example, if a tweak changes who can use a type of weapon, and my tweak just adds a damage bonus to it, it would be compatible, but that may not be the case for every tweak. If there's a philosophical or conceptual difference in the design of the spell or ability, it might make no sense to install both tweaks, or it might fail to install, so use your best judgment. For obvious reasons, don't attempt to mix two tweaks that try to do the exact same thing, as the results will likely not be what you expected. I'm open to providing compatibility personally as long as I'm interested in the other mod as well. One example is SCS, ToF, and Tweaks Anthology, since I like them a lot.

Currently, relevant compatibility has been added deliberately to:

- Item Upgrade (upgrades are in line with my upgrades to vanilla items, if selected)
- Wares of the Planes (generally just exceptions to certain bonuses, due to the unusual nature of the items)
- Rogue Rebalancing
- ZS_ShadowdancerOverhaul (my own mod, duh, of course I did)
- Shades of the Sword Coast

## Notes for users and modders

I highly advise to make this mod the first tweak mod in your mod tweaks, at least in the current state. While the code has been vastly improved since it was first released, it's still quite likely that other older mods will have a better time anticipating changes, and because it's young, I probably haven't added enough support in my tweaks to work universally after other older tweaks that modify the same items.

## Credits

- To BeamDog and Bioware for the game, obviously.
- CamDawg for spending significant time to explain details about how WeiDu works, sharing insights, helpful code, and other matters for modding. Many thanks for your tutorials too
- DavidW for his great WeiDu tutorial
- Thanks to the developers of WeiDu, including the documentation
- And the IESDP, an invaluable resource.
- People on Discord generally for their help, and the great modders out there that allowed their WeiDu code to be available publicly, like jmerry, Camdawg, 11jo, Argent77, Ardanis, DavidW, SubtleDoctor, among others.
- zenblack for feedback, brainstorming, and icon-making.
