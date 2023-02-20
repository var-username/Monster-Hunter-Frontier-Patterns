#pragma once

#include <misc/s32p.pat>

u32 numMelee = (eoStringMelee - soStringMelee) / 4;
u32 numRanged = (eoStringRanged - soStringRanged) / 4;

s32p meleeNames[numMelee] @ soStringMelee;
s32p rangedNames[numRanged] @ soStringRanged;
