#pragma pattern_limit 500000

#include <std/mem.pat>
#include <std/core.pat>
#include <misc/MonsterIds.hexpat>

//#define __DECOMPILE 1

u32 unkPtr_at_00000058 @ 0x58; //Modified by comfy to point to new data

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

	u32 unk[6];
};

maybeMonsterData test[while(std::mem::read_unsigned($,8))] @ unkPtr_at_00000058;

#ifdef __DECOMPILE
#include <mhfemd/decompile.hexpat>
#endif

struct monsterStatTable{
	float hp [[comment("This is a multiplier for the base hp, which varies by monster!")]];
	float dmg;
	float def;
	float stagger;
	float unk10;
	float unk14;
}; //size of 0x18;

struct MonsterStats {
	monsterStatTable statTable[68];
}; //size of 0x660

u32 hd_dll_af96a1 @ 0x00;
u8 hd_dll_af96a5 @ (hd_dll_af96a1 + 4);
u32 hd_dll_af96cc @ 0xC;

s16 hd_dll_af96d2 = u16(hd_dll_af96a5);

struct unk_struct_af9710 {
	if ((std::mem::read_signed($, 4)) && (std::mem::read_signed($ + 4, 4))) {
		u32 unk00; padding[4];
	} else {
		padding[8];
	}
};

using unk_struct_af96d8;
fn name_unk_struct_af96d8(ref unk_struct_af96d8 n) {
	return getMonsterId(n.idx);
};

struct unk_struct_af96d8 {
	MonsterStats *stats: u32; //af96ec
	u32 unk04[0xC] [[static, sealed]]; //af973d
	u32 unk34[0xC] [[static, sealed]]; //af9748
	padding[0x44]; // 0x64
	u32; //af96dd
	padding[4];
	if (std::mem::read_signed($, 4)) {
		unk_struct_af9710 *unkAC[200]: u32; // af9723
		//padding[4];
	} else {
		padding[4];
	}
	padding[0xC];
	//u32 idx = std::core::array_index();
} //[[format("name_unk_struct_af96d8")]]
; // size of 0xC0

unk_struct_af96d8 hd_dll_af96d8[hd_dll_af96d2] @ (hd_dll_af96cc + 8);

// Bird Wyverns
MonsterStats Farunokku_Stats @ 0x236500;
MonsterStats Forokururu_Stats @ 0x231640;
MonsterStats Velocidrome_Stats @ 0x24D720;
MonsterStats Gendrome_Stats @ 0x24CF40;
MonsterStats Iodrome_Stats @ 0x253D80;
MonsterStats Gypceros_Stats @ 0x255D00;
MonsterStats Purple_Gypceros_Stats @ 0x2535A0;
MonsterStats Hypnocatrice_Stats @ 0x246100;
MonsterStats Breeding_Hypnocatrice_Stats @ 0x249040;
MonsterStats Silver_Hypnocatrice_Stats @ 0x245920;
MonsterStats Toridcless_Stats @ 0x226120;
MonsterStats Yian_KutKu_Stats @ 0x24BF80;
MonsterStats Blue_Yian_KutKu_Stats @ addressof(Yian_KutKu_Stats);
MonsterStats Yian_Garuga_Stats @ 0x252DC0;

MonsterStats Blangonga_Stats @ 0x250660;
MonsterStats Bulldrome_Stats @ 0x24C760;
MonsterStats Congalala_Stats @ 0x24FE80;
MonsterStats Gogomoa_Stats @ 0x23BBA0;
MonsterStats Gougarf_Stats @ 0x232600;
MonsterStats Orugaron_Stats @ 0x240280;
MonsterStats Midogaron_Stats @ 0x237CA0;
MonsterStats Rajang_Stats @ 0x24F6A0;
MonsterStats Voljang_Stats @ 0x2239C0;

MonsterStats Akantor_Stats @ 0x24AFC0;
MonsterStats Anorupatisu_Stats @ 0x238C60;
MonsterStats Barioth_Stats @ 0x228880;
MonsterStats Basarios_Stats @ 0x254D40;
MonsterStats Berukyurosu_Stats @ 0x242200;
MonsterStats Doragyurosu_Stats @ 0x23EAE0;
