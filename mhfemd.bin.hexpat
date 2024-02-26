#pragma pattern_limit 500000

#include <std/io.pat>
#include <std/mem.pat>
#include <std/core.pat>
#include <misc/MonsterIDs.hexpat>
#include <misc/types.pat>

//#define __DECOMPILE 1

#include <mhfemd/header.hexpat>

struct monsterStatRow{
	float hp [[comment("This is a multiplier for the base hp, which varies by monster!")]];
	float dmg;
	float def;
	float stagger;
	float unk10;
	float unk14;
} [[static]]; //size of 0x18;

struct MonsterStats {
	monsterStatRow statBlock[68] [[inline]];
} [[inline]]; //size of 0x660

// [mhfo-hd.dll + 0xaf96a5]
u8 numMonsters @ (header.important_nums + 4) [[name("Number of monsters")]];

// [mhfo-hd.dll + 0xaf96d2]
s16 sNumMonsters = u16(numMonsters);

// [mhfo-hd.dll + 0xaf9710]
struct unk_struct_af9710 {
	if ((std::mem::read_signed($, 4)) && (std::mem::read_signed($ + 4, 4))) {
		u32 unk00; padding[4];
	} else {
		padding[8];
	}
};

struct hitzoneStats {
	u8;
	u8 cutting;
	u8 impact;
	u8 shot;
	u8 fire;
	u8 water;
	u8 ice;
	u8 thunder;
	u8 dragon;
	u8 stun;
} [[static]];

struct hitzoneStatTable {
	hitzoneStats hitzones
		// This unfortunately uses a lot of resources.
		// Comment out to limit each table to a single hitzone
		[ while (std::mem::read_unsigned($, 4) != 0) ]
	;
} [[inline]];

struct enrageStats {
	u16 anger;
	u16 frames [[comment("How long enrage lasts in frames")]];
	float agility [[comment("No idea what this does")]];
	float attack;
	float defense;
	float buildupMult[11] 
	[[comment("How quickly enrage builds. Starts at 100% hp, then 90%, etc.")]]
	; 
} [[static, inline]];

using genMonsterStats;
/// By request from SephVII, name stat block entries by monster
fn fmtMonsterStatBlock (auto n) {
	MonsterID m = u8(std::core::array_index());
	return std::format("{}", fmtMonsterID(m));
};

// [mhfo-hd.dll + 0xaf96d8]
struct monsterStatBlock {
	padding[8];
	// [mhfo-hd.dll + 0xaf96ec]
	MonsterStats *stats: ptr; 
	
	//[mhfo-hd.dll + 0xaf973d]
	ptVar<hitzoneStatTable> unk04[0xC] [[name("Ptrs to Hitzone stats?")]]; 
	
	padding[0xC]; // This is just improvizing

	/**
		[3]  = Goushu
		[7]  = GR
		[8]  = Something
		[9]  = Zenith
		[11] = Something
	 */
	ptVar<enrageStats> unk40[0xC] [[name("Ptrs to Enrage stats?")]];
	
	float unk70 [0xC] [[sealed]]; //Improvising
	u16 unkA0 [[name("Base Health")]];
	u16 unkA2 [[comment("Health for large? See vespoid")]];
	u16;
	u16;
	
	// [mhfo-hd.dll + 0xaf96dd]
	ptr;
	
	padding[4];
	if (std::mem::read_signed($, 4)) {
		// [mhfo-hd.dll + 0xaf9723]
		unk_struct_af9710 *unkAC[200]: ptr;
	} else {
		padding[4];
	}
	padding[4];
} [[format("fmtMonsterStatBlock")]]; // size of 0xC0

// [mhfo-hd.dll + 0xaf96d8]
monsterStatBlock monsterStatTable[sNumMonsters] @ (header.monStatTable) 
[[name("Monster Stat Table")]]; 

using specificValues;
fn fmtSpecificValues(specificValues n) {
	return std::format("{} | {}", fmtMonsterID(n.monID), n.rank);
};

struct specificValues {
	MonsterID monID;
	padding[1];

	/**	
		0 = Low-rank
		1 = High-rank
		3 = Gou
		7 = G-Rank
		-1 = ???
	 */
	u16 rank;

	float attack;
	float defense;
	float aggro;
	float enrage_def;
	float hp;
	float flinch;
} [[static, format("fmtSpecificValues")]];

specificValues specificValues[ while (std::mem::read_signed($, 4)) ] 
	@ header.specificValues [[name("Specific Values (HC Stats)")]];

struct ULvalues {
	MonsterID monID;
	padding[3];
	float attack;
	float defense;
	float aggro;
	float enrage_def;
	float hp;
	float flinch;
} [[static]];

ULvalues ulValues [ while (std::mem::read_unsigned($, 8)) ]
	@ header.ulValues [[name("UL Stats")]];

#ifdef __DECOMPILE
#include <mhfemd/decompile.hexpat>
#endif
