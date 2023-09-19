#pragma once

#include <misc/types.pat>
#include <mhfdat/decompile/decompile_pointers.hexpat>

// [mhfo-hd.dll + 0xaf4fa4]
num numMonsterDesc      @ (header.ptrs.important_nums + 0x22) 
[[name("Number of monsters")]];

ptr soRegularWUpgrades  = 0xB43CC0;
ptr soG50WUpgrades      = hd_dll_af6c0e;
ptr soRegAUpgrades      = 0x16EED60;

ptr soTowerAForging 	= hd_dll_af83b1;
ptr soTowerWForging 	= hd_dll_af831a;
ptr soSpecialWForging 	= hd_dll_af7875;
ptr soGArmorForging 	= hd_dll_af6c02;
ptr soGWeaponForging	= hd_dll_af6bfc;
ptr soTransmogForging   = hd_dll_af8d48;
ptr soWeaponForging     = hd_dll_af8d54;
ptr soZArmorForging     = hd_dll_af8d5a;
ptr soEvoUpgrades       = hd_dll_af8726;

// Pointers to start of armor string areas
ptr soStringHead        = hd_dll_af482e;
ptr soStringBody        = hd_dll_af4871;
ptr soStringArm         = hd_dll_af48b2;
ptr soStringWaist       = hd_dll_af48fd;
ptr soStringLeg         = hd_dll_af4941;

// [mhfo-hd.dll + 0xaf4dcb]
num numItems            @ (header.ptrs.important_nums + 0x8) 
[[name("Number of total Items")]];

// Pointers to start of item data areas
ptr soItemData          = hd_dll_af4db5;

// Pointers to start of item string areas
ptr soStringItem        = hd_dll_af4da3;
ptr soStrItemSource     = hd_dll_af4ef0;
ptr soStrItemDesc       = hd_dll_af4eb8;

// Pointers to start of weapon data areas
ptr soMelee             = hd_dll_af49a6;
ptr soRanged            = hd_dll_af4a34;

// Pointers to start of weapon string areas
ptr soStringMelee       = hd_dll_af49cd;
ptr soStringRanged      = hd_dll_af4a5d;

// [mhfo-hd.dll + 0xaf4e70]
num numCarveDTs         @ (header.ptrs.important_nums + 0x1C)
[[name("Number of Carve Drop Tables")]];

// [mhfo-hd.dll + 0xaf4e98]
num numPartBreakDTs     @ (header.ptrs.important_nums + 0x1E)
[[name("Number of Part Breat Drop Tables")]];


// Pointers to start and end of carve and break drop data
ptr soPartBreaks        = hd_dll_af4e82;
ptr soCarves            = hd_dll_af4e5a;
ptr soGRHCCarves        = hd_dll_af774d;
ptr soHCCarves          = hd_dll_af5bdc;

ptr soQuestLists		= hd_dll_af8cb2;

// TODO: Add an entry for `hd_dll_af5214` and `hd_dll_af5261` once I figure out
// what the data at those pointers describes
ptr soArenaEquipment 	= hd_dll_af51b6;
ptr soArenaItems		= hd_dll_af5177;
ptr soArenaStageChunk0 	= hd_dll_af521a;
ptr soArenaStageChunk1 	= hd_dll_af51ec;

ptr soSpecialShops 		= hd_dll_af8f43;
/*
	This information does seem to be accurate, and I'm saving it in case it
	comes in handy, however as of current I will avoid using it for accuracy
*/
num numLegA				@ (hd_dll_af47af + 0x0);
num numUnk				@ (hd_dll_af47af + 0x2);
num numHeadA			@ (hd_dll_af47af + 0x4);
num numBodyA			@ (hd_dll_af47af + 0x6);
num numArmA				@ (hd_dll_af47af + 0x8);
num numWaistA			@ (hd_dll_af47af + 0xA);

// Ghidra labels this _DAT_1e714f8
num numMeleeW           @ (hd_dll_af47af + 0xC);
// Ghidra labels this _DAT_1e7414fc
num numRangedW          @ (hd_dll_af47af + 0xE);
