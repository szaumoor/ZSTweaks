# ZSTweaks

## Description

This mod is a collection of tweaks designed to improve the vanilla game experience in the Enhanced Edition of the Infinity Engine games, except for PST:EE. While most components offer simple enhancements for underpowered items and abilities, some provide more extensive, but not radical, overhauls. Two of the main themes in my tweaks (outside spell tweaks) are that I want to reward specialization (single class vs. multiclass), and that unique items that have nothing functionally unique should be unique. Nothing kills my mojo more than an item with an awesome name and backstory that literally just behaves like the base item with a +1 bonus to base stats (such as Fallorain's Plate).

Each component group includes an option to install up to all of its components at once. You can customize these group installations for all groups of components via the configuration files in the `ZSTweaks/configurations` directory. By default, all components in a group are selected for installation. Do note that if installing components like that, the single-component parts of it will be automatically disabled (which is why you'll see a list of skipped components). This is worth keeping in mind if you need to install specific components in a non-linear order. Warning: do not change values in the configuration file in the middle of an installation or before completing your ZSTweaks installation to avoid issues, and don't change settings for things you're not planning on installing or else the installation will fail.

This mod also includes several bugfixes that are necessary for the tweaks to function as intended. Some of these fixes are automatically disabled if the EEFixpack is installed, as they'd be redundant. Be warned that if this part of the installation throw any warnings, the first component that you installed will be marked as INSTALLED WITH WARNINGS, even if nothing went wrong. Refer to weidu debug file after installation to see what failed exactly.

On-hit damage effects from this mod or on weapons the mod tweaks are also changed not to wake sleeping targets. This prevents a corner case where a weapon that applies sleep on hit could immediately wake the target with a secondary damage effect.

Many components can be customized by editing `ZSTweaks/configurations/zstweaks_prefs.txt`. Check this file for available options to fine-tune your experience.

### [See all component details here](ZSTweaks/component_readme.md)

## Compatibility and installation order

This mod was developed and tested on game version 2.6.6. All tweaks are designed with this version in mind, so compatibility with previous versions is not guaranteed, and no support will be provided for them.

For best results, this mod should be installed after other content mods, such as item packs, quest mods, NPC mods, and the IWDEE spell pack. If this mod is installed before them, its tweaks may not apply correctly or at all.

Compatibility with other tweak mods that affect the same content depends on the specific changes. While some tweaks may be compatible, others with conflicting designs could lead to unbalanced results or installation failures. Please be judicious when combining tweaks that serve a similar purpose.

I am open to providing compatibility for other mods. You can contact me on the forums or at <kaelyn@tuta.io> with any requests or questions. So far, compatibility *some* compatibility has been added for:

- EEFixpack
- Forgotten Armaments
- Item Upgrade
- IWDification
- Project Javelin
- Rogue Rebalancing
- Sword Coast Stratagems (SCS)
- Shades of the Sword Coast
- Talents of Faêrun
- The Artisan's Kitpack
- Wares of the Planes
- ZS_ItemPack
- ZS_ShadowdancerOverhaul

## Some mod recommendations

- I recommend [Xgatt's Casting Level fix](https://github.com/Xgatt/XGTCumulativeCasterLevels) if you use EEex, since it will make any of the tweaks that I do to casting level work in harmony with other effects that change caster level.
- EEFixpack. It's not completely polished, but it fixes tons of things and eventually will probably be a backbone for every game setup
- IWDification, especially the IWD spell packs for BG, so my tweaks can take full advantage. They also make druids and paladins significantly more interesting and capable as spellcasters

## Notes for users and modders

**For users:** I advise making this mod the first tweak mod in your mod tweaks, since it is quite likely that older tweak packs such as Tweaks Anthology will have a better time anticipating and reacting to changes. An exception to this are components that **EXPLICITLY** say that they must be installed in a certain order. Finally, I'm not perfect, so if you find a component that probably makes more sense to install in a different order, you might be right. If you find that's the case, do let me know.

I also would recommend installing things in the order they're presented in the mod, if you can help it, as this is the way it's been most heavily tested, due to how time-consuming it is. If you find any issues, let me know.

The prefix for this mod is either "tw" or "t". That is, if you find a file that starts by "zst" or "zstw", it comes from this mod.

---

**For modders**: To add compatibility with other mods, do include the files with the variables in your code to help to detect components and variants thereof. To check that the mod has been installed (any component), you may also check for the existence of the file `zssetup.rp` in override with a ```FILE_EXISTS_IN_GAME``` check. There are two possibilities as to how a component is installed, and both should be combined logically:

- Installed the **specific** component by iterating through the components **manually**. In this case, the detection is a matter of using a ```MOD_IS_INSTALLED "ZSTweaks.tp2" "<component_number>"```. As every component is part of a group-installing component, this is never sufficient.
- Installed as part of a user-defined selection. In this case, you would have to first check that the group-install component is installed, and that the variable that *allow*_ that component inside is set to 1. An example would be ```MOD_IS_INSTALLED "ZSTweaks.tp2" "1301" AND zst_group_1328_mace_storm_star```, which would tell you if the user has installed my tweak to Storm Star, as part of their personal selection. This should be combined with the previous check.

Taking as an example the storm start component, a complete check would be: ```MOD_IS_INSTALLED "ZSTweaks.tp2" "1328" OR (MOD_IS_INSTALLED "ZSTweaks.tp2" "1301" AND zst_group_1328_mace_storm_star)```. This check asks: *is the component installed either individually or as part of its group?*.

Finally, to check variations on the installed component, if there are any, you would also need to include the variables in `configurations/zstweaks_prefs.txt`. That's it. I know it's a bit of pain so if I can, I will provide the compatibility code myself.

## Credits

- To BeamDog and Bioware for the game
- CamDawg for explaining WeiDu, sharing insights & code, and his tutorials
- DavidW for his very helpful WeiDu tutorial
- WeiDu devs and the included documentation
- IESDP, an invaluable resource.
- Moggadeet and JDSilvergun for suggesting lines of dialog for Cespenar
- Angel for sharing information about PnP stuff that helped me design some tweaks
- Troveur for ideas, feedback, and suggestions
- People on Discord for their help, and the great modders out there that share their code
- The Artisan for brainstorming and insight
- dark0dave for giving me the idea of adding a configuration file
- For the people in G3 and Discord for reporting bugs
- zenblack for feedback, brainstorming, and icon-making
