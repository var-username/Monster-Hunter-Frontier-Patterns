#pragma pattern_limit 500000

#include <std/mem.pat>
#include <std/core.pat>
#include <misc/MonsterIds.hexpat>

//#define __DECOMPILE 1

ptr unkPtr_at_00000058 @ 0x58; //Modified by comfy to point to new data

struct unknownData {
	u32 unk[while(std::mem::read_unsigned($,16))];
};

struct unknownDatap {
	unknownData *ptr : u32 [[inline]];
};

//unknownDatap ptrArray[0x15] @ 0x04;

struct maybeMonsterData {
	MonsterId id;
	padding[3];

	float unk[6];
};

maybeMonsterData test[while(std::mem::read_unsigned($,8))] @ unkPtr_at_00000058;


struct monsterStatTable{
	float hp [[comment("This is a multiplier for the base hp, which varies by monster!")]];
	float dmg;
	float def;
	float stagger;
	float unk10;
	float unk14;
}; //size of 0x18;

struct MonsterStats {
	monsterStatTable statTable[68] [[inline]];
} [[inline]]; //size of 0x660

u32 hd_dll_af96a1 @ 0x00;
u8 hd_dll_af96a5 @ (hd_dll_af96a1 + 4) [[name("Number of monsters")]];
ptr hd_dll_af96cc @ 0xC  [[name("Pointer to Monster Stat Block")]];

s16 hd_dll_af96d2 = u16(hd_dll_af96a5);

struct unk_struct_af9710 {
	if ((std::mem::read_signed($, 4)) && (std::mem::read_signed($ + 4, 4))) {
		u32 unk00; padding[4];
	} else {
		padding[8];
	}
};

struct unk_struct_af96d8 {
	MonsterStats *stats: u32; //af96ec
	u32 unk04[0xC] [[static, sealed]]; //af973d
	padding[0xC]; // This is just improvizing
	u32 unk40[0xC] [[static, sealed]]; // Improvizing
	float unk70 [0xC] [[static, sealed]]; //Improvising
	u16 unkA0 [[name("Base Health")]];
	u16 unkA2 [[comment("Health for large? See vespoid")]];
	u16;
	u16;
	u32; //af96dd
	padding[4];
	if (std::mem::read_signed($, 4)) {
		unk_struct_af9710 *unkAC[200]: u32; // af9723
		//padding[4];
	} else {
		padding[4];
	}
	padding[0xC];
}; // size of 0xC0

unk_struct_af96d8 hd_dll_af96d8[hd_dll_af96d2] @ (hd_dll_af96cc + 8) 
[[name("Monster Stat Block")]]; 


#ifdef __DECOMPILE
#include <mhfemd/decompile.hexpat>
#endif
