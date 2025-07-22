# Changelog

## Fixes

- Critical bug fix for a library function. Whenever invoked, it would corrupt the override scripts of creatures affected. The components that were affected by this bug were familiar imp component 407 (maybe harmless, the familiars don't have override script), the horrid wilting component 410, which would cause the few water elementals to have their override scripts wiped, component 2170 and 2180 (the part that patches bards and thieves to have appropriate thac0), and component 3010 (the patch for alignment silliness -- like what Oversight does, but more up to date). Recommended to not use those components in previous versions of the mod.
