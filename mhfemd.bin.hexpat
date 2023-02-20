#include <std/mem.pat>
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
