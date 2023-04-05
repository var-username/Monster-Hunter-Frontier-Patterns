#pragma once

#include <misc/types.pat>
#include <mhfdat/decompile/decompile_pointers.hexpat>


// [mhfo-hd.dll + 0xaf4fa4]
num numMonsterDesc      @ (hd_dll_af46a3 + 0x22) 
[[name("Number of monster descriptions")]];

ptr soRegularWUpgrades  = 0xB43CC0;
ptr soG50WUpgrades      = hd_dll_af6c0e;
ptr soRegAUpgrades      = 0x16EED60;

ptr soForging1          = hd_dll_af8d48;
ptr soForging2          = hd_dll_af8d54;
ptr soForging3          = hd_dll_af8d5a;
ptr soForging4          = hd_dll_af47cf;
ptr soForging5          = hd_dll_af47cc;
ptr soWUpgradePath      = hd_dll_af47d2;
ptr soEvoUpgrades       = hd_dll_af8726;

// Pointers to start of armor data areas
ptr soHead              = hd_dll_af480f;
ptr soBody              = hd_dll_af4852; 
ptr soArm               = hd_dll_af4893;
ptr soWaist             = hd_dll_af48d4;
ptr soLeg               = hd_dll_af4922;

// Pointers to start of armor string areas
ptr soStringHead        = hd_dll_af482e;
ptr soStringBody        = hd_dll_af4871;
ptr soStringArm         = hd_dll_af48b2;
ptr soStringWaist       = hd_dll_af48fd;
ptr soStringLeg         = hd_dll_af4941;

// [mhfo-hd.dll + 0xaf4dcb]
num numItems            @ (hd_dll_af46a3 + 0x8) 
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
num numCarveDTs         @ (hd_dll_af46a3 + 0x1C)
[[name("Number of Carve Drop Tables")]];

// [mhfo-hd.dll + 0xaf4e98]
num numPartBreakDTs     @ (hd_dll_af46a3 + 0x1E)
[[name("Number of Part Breat Drop Tables")]];


// Pointers to start and end of carve and break drop data
ptr soPartBreaks        = hd_dll_af4e82;
ptr soCarves            = hd_dll_af4e5a;
ptr soGRHCCarves        = hd_dll_af774d;
ptr soHCCarves          = hd_dll_af5bdc;

/*
	This information does seem to be accurate, and I'm saving it in case it
	comes in handy, however as of current I will avoid using it for accuracy
*/
num numRangedW          @ (hd_dll_af47af + 0xC);
num numMeleeW           @ (hd_dll_af47af + 0xE);
