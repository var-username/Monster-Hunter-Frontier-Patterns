#pragma once

#include <misc/types.pat>

// [mhfo-hd.dll + 0xaf4fa4]
num numMonsterDesc      @ (header.ptrs.important_nums + 0x22) 
	[[name("Number of monsters")]];

// [mhfo-hd.dll + 0xaf4dcb]
num numItems            @ (header.ptrs.important_nums + 0x8) 
	[[name("Number of total Items")]];

// [mhfo-hd.dll + 0xaf4e70]
num numCarveDTs         @ (header.ptrs.important_nums + 0x1C)
	[[name("Number of Carve Drop Tables")]];

// [mhfo-hd.dll + 0xaf4e98]
num numPartBreakDTs     @ (header.ptrs.important_nums + 0x1E)
	[[name("Number of Part Breat Drop Tables")]];

// TODO: Add an entry for `hd_dll_af5261` once I figure out
// what the data at that pointer describes

/*
	This information does seem to be accurate, and I'm saving it in case it
	comes in handy, however as of current I will avoid using it for accuracy
*/
num numLegA				@ (header.ptrs.hd_dll_af47af + 0x0);
num numUnk				@ (header.ptrs.hd_dll_af47af + 0x2);
num numHeadA			@ (header.ptrs.hd_dll_af47af + 0x4);
num numBodyA			@ (header.ptrs.hd_dll_af47af + 0x6);
num numArmA				@ (header.ptrs.hd_dll_af47af + 0x8);
num numWaistA			@ (header.ptrs.hd_dll_af47af + 0xA);

// Ghidra labels this _DAT_1e714f8
num numMeleeW           @ (header.ptrs.hd_dll_af47af + 0xC);
// Ghidra labels this _DAT_1e7414fc
num numRangedW          @ (header.ptrs.hd_dll_af47af + 0xE);
