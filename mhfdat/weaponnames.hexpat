#pragma once

#include <misc/s32p.pat>

#ifdef __WEAPONDATA

// [mhfo-hd.dll + 0xaf49d9]
u32 numMelee = (sizeof(meleeData)/sizeof(MeleeWeaponEntry));
s32p meleeNames[numMelee] @ soStringMelee
[[name("Melee Weapon Names")]];

// [mhfo-hd.dll + 0xaf4a69]
u32 numRanged = (sizeof(rangedData)/sizeof(RangedWeaponEntry));
s32p rangedNames[numRanged] @ soStringRanged
[[name("Ranged Weapon Names")]];
#endif
