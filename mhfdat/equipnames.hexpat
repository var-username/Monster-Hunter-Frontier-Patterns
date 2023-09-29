#pragma once

#include <misc/s32p.pat>

#ifdef __EQUIPDATA
u32 sizeOfArmor = sizeof(ArmorDataEntry);

// [mhfo-hd.dll + 0xaf4831]
u32 numStringHead = (sizeof(headEntries)/sizeOfArmor);
s32p headNames[numStringHead] @ header.ptrs.headArmorNames
[[name("Head Armor Names")]]
;

// [mhfo-hd.dll + 0xaf4874]
u32 numStringBody = (sizeof(bodyEntries)/sizeOfArmor);
s32p bodyNames[numStringBody] @ header.ptrs.bodyArmorNames
[[name("Body Armor Names")]]
;

// [mhfo-hd.dll + 0xaf48b5]
u32 numStringArm = (sizeof(armEntries)/sizeOfArmor);
s32p armNames[numStringArm] @ header.ptrs.armArmorNames
[[name("Arm Armor Names")]]
;

// [mhfo-hd.dll + 0xaf4900]
u32 numStringWaist = (sizeof(waistEntries)/sizeOfArmor);
s32p waistNames[numStringWaist] @ header.ptrs.waistArmorNames
[[name("Waist Armor Names")]]
;

// [mhfo-hd.dll + 0xaf4944]
u32 numStringLeg = (sizeof(legEntries)/sizeOfArmor);
s32p legNames[numStringLeg] @ header.ptrs.legArmorNames
[[name("Leg Armor Names")]];
#endif
