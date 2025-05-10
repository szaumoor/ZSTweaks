**Re-released to undom MODDER flags**

**Fixes**
- Fixed the code for Curse which could fail to target the right spell in BG depending on what spell packs are installed
- My Bless/Curse component will fix in passing the vanilla bug with Curse causing enemies to get +10 morale bonus, instead of a -1 morale decrement. This is likely to be fixed by the third beta of the EE Fixpack. Regardless of the presence or absence thereof, my component will fix it.
- Improved the overall efficiency of the mod installation by removing many runtime checks during each component installation, and performing as many as feasible only once right at the beginning of the mod's installation, as well as moving computationally expensive checks in blocks that parse through an arbitrary number of items outside of the block whenever possible.
- Other misc performance improvements
- Added some README entries for new components in previous version that I forgot to add.
- Added credits for dark0dave and a mention of The Artisan
- Fixed a code error caused by a past refactoring
- Other code quality changes
- Added a check for existence of Asp's Nest in BGEE, since it may be the case that SoD introduced it.
- Fixed some checks for ZSTweaks component existence that weren't taking into account the component merging in recent versions (sorry)
- Merged all the major, non-controversial fixes this mod does so it executes only once, and by default, even if the relevant component is not executed
- Fixed warhmammer dice size tweak not affecting the damage for critical hits that the voidweapon component adds
