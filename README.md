# ZSTweaks

## Description

This mod is a compilation of tweaks that I think personally improve things as they are in the vanilla game. The vast majority of the tweaks are designed to be simple improvements of underpowered items or abilities. Some of them overhaul the game a bit more extensively, though not radically.

Every group of components, except those that have only a few items, has as the first component the option to install all components in the group, except those that require user input. **NEW (1.6.1):** I'm cautiously and gradually implementing the possibility of the user deciding what from the group they want to install. Currently, it is only available for the creature, npc, and class/kit tweaks. See **ZSTweaks/configurations** for options. More in the future. Do note that by default, every component is allowed to be installed.

Additionally, the mod fixes in passing a number of issues in the game that either annoy me too much, or are simply needed for the tweaks to have the expected behavior. Some of these are either disabled if the fixpack is installed, or determined by user input.

Finally, any component that adds damage to items on hit, or alters items with damage on hit, will mark the damage effects as not capable of waking up sleepers. This is done because there is no advantage to making that damage capable of waking sleepers, but disabling that behavior does prevent a corner case, which is that if you have a melee/ranged weapon effect that causes interruptible sleep, and other on-hit damage the weapons have trigger after it, it will wake them up, even if it was the hit of this weapon what caused the sleep, which is all pretty silly. In vanilla, this is not contemplated, likely because there isn't any means of introducing sleep on hit to arbitrary weapons and as such that circumstance would have never occurred. My mod ZS_Consumables does introduce this situation if using the drow **Soporific Oil**.

As of version 1.4.5 a configuration file is now provided, where the user may change some variables to further customize components. This file is **ZSTweaks/configurations/zstweaks_prefs.txt**. Be sure to check it out to see what you can fine tune.

### [See all component details here](ZSTweaks/component_readme.md)

## Compatibility and installation order

This mod was tested on the 2.6.6 version of the game, and every tweak will be under the assumption that this is the version of the game being played. I do not know if it'll work correctly with previous versions nor will I test it or provide support for it. If it works, great, if it doesn't, too bad.

The mod should generally be installed after all other content mods, unless there's a good reason not to. This includes item packs, quests, NPC mods, and the IWD spell pack. If these are installed after, the tweaks in this mod for those either won't be installed or will simply do nothing.

As far as other tweak mods that affect the same content, it might or might not be compatible: it depends on the nature of the tweak. For example, if tweak A changes who can use a type of weapon, and my tweak B adds a damage bonus to the same weapon, it would be compatible, but if tweak A changes aspects of the weapon that break the assumptions of tweak B, it would likely break at some point. If there's a conceptual difference in the design, it might make no sense to install both tweaks, as the attempt would produce nonsensical or unbalanced results, or it might not even install. Be judicious with choices and don't mix tweaks that have the same purpose. I'm open to providing compatibility as long as I'm interested in the other mod. You can contact me freely in the forum or at <royalprotector@keemail.me>.

So far, compatibility has been added to:

- ToF
- SCS
- EEFixpack
- ZS_ItemPack
- IWDification
- Item Upgrade
- Project Javelin
- Rogue Rebalancing
- Forgotten Armaments
- Wares of the Planes
- ZS_ShadowdancerOverhaul
- Shades of the Sword Coast

## Notes for users and modders

I advise making this mod the first tweak mod in your mod tweaks, since it is quite likely that older tweak packs such as Tweaks Anthology will have a better time anticipating and reacting to changes. An exception to this are components that **EXPLICITLY** say that they must be installed in a certain order. Finally, I'm not perfect, so if you find a component that probably makes more sense to install in a different order, you might be right. If you find that's the case, and I should probably know this, do let me know.

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
- The Artisan for participating in conversations about some tweaks and providing insights
- dark0dave for giving me the idea of adding a configuration file, now an integral part of the mod that I'll never part with and will continue to implement in other mods.
- For the people in G3 and Discord for reporting bugs
- zenblack for feedback, brainstorming, and icon-making.
