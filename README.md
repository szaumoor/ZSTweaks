# ZSTweaks

## Description

This mod is a collection of personal tweaks designed to improve the vanilla game experience. While most components offer simple enhancements for underpowered items and abilities, some provide more extensive, but not radical, overhauls.

Each component group includes an option to install up to all of its components at once, except those that require user input or I deem less likely to be wanted. As of version 1.6.1, you can customize these group installations for creature, NPC, arcane, divine, ranged, and class/kit tweaks via the configuration files in the `ZSTweaks/configurations` directory. By default, all components in a group are selected for installation. These files are also copied, when they're used, in override to assist in creating compatibility code on mods installed after this one.

This mod also includes several bugfixes that are necessary for the tweaks to function as intended. Some of these fixes are automatically disabled if the EEFixpack is installed.

On-hit damage effects from this mod or on weapons the mod tweaks are also changed not to wake sleeping targets. This prevents a corner case where a weapon that applies sleep on hit could immediately wake the target with a secondary damage effect.

As of version 1.4.5, many components can be customized by editing `ZSTweaks/configurations/zstweaks_prefs.txt`. Be sure to check this file for available options to fine-tune your experience.

### [See all component details here](ZSTweaks/component_readme.md)

## Compatibility and installation order

This mod was developed and tested on game version 2.6.6. All tweaks are designed with this version in mind, so compatibility with previous versions is not guaranteed, and no support will be provided for them.

For best results, this mod should be installed after other content mods, such as item packs, quest mods, NPC mods, and the IWDEE spell pack. If this mod is installed before them, its tweaks may not apply correctly or at all.

Compatibility with other tweak mods that affect the same content depends on the specific changes. While some tweaks may be compatible, others with conflicting designs could lead to unbalanced results or installation failures. Please be judicious when combining tweaks that serve a similar purpose.

I am open to providing compatibility for other mods. You can contact me on the forums or at <royalprotector@keemail.me> with any requests or questions. So far, compatibility has been added to:

- ToF
- SCS
- EEFixpack
- IWDification
- ZS_ItemPack
- Item Upgrade
- Project Javelin
- Rogue Rebalancing
- Wares of the Planes
- Forgotten Armaments
- Shades of the Sword Coast
- ZS_ShadowdancerOverhaul

## Notes for users and modders

I advise making this mod the first tweak mod in your mod tweaks, since it is quite likely that older tweak packs such as Tweaks Anthology will have a better time anticipating and reacting to changes. An exception to this are components that **EXPLICITLY** say that they must be installed in a certain order. Finally, I'm not perfect, so if you find a component that probably makes more sense to install in a different order, you might be right. If you find that's the case, do let me know.

I also would recommend installing things in the order they're presented in the mod, if you can help it, as this is the way it's been most heavily tested, due to how time-consuming it is. If you find any issues, let me know.

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
- zenblack for feedback (hehe), brainstorming, and icon-making.
