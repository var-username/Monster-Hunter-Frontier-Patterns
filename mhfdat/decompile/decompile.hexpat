#pragma once

#include <misc/types.pat>
#include <std/io.pat>

struct varPaddT<T, auto pad> {T; padding[pad];};
struct s32px4 {s32p unk0[4];};
struct u32x10 {u32 unk[0x10] [[inline]];};
struct ptu32x10 {u32x10 *pointer : u32 [[inline]];};

struct ptrToStringArray {
	ptr ptr; 
	s32p dest[while(std::mem::read_signed($,4))] @ ptr;
};

// Variables are named after their file and offset as reported by Ghidra's 
// "Byte Source Offset"

// [mhfo-hd.dll + 0xaf4690]

/*!	
	`ptr` variables are all copied into a new buffer, plus the new buffer's 
 	base position in memory, implying the program will use these as pointers 
	to other positions in the file
*/

/*	
	Lots of times, the program seems to read elements of an array 
	in the buffer, but does nothing with them. Maybe it's counting something?
*/

u16 hd_dll_af4753 @ (header.ptrs.important_nums + 0x400); 
u16 hd_dll_af477c @ (header.ptrs.important_nums + 0x402);

// Commented out to reduce clutter

	s32px4 hd_dll_af4966 [while(std::mem::read_signed($,4))] @ 
		header.ptrs.equipDesc [[name("Pointers to equipment descriptions?")]];

	#ifdef __WEAPONNAMES
	s32px4 hd_dll_af49df[numMelee] @ header.ptrs.meleeWeaponDesc
	//[[name("Pointers to Melee Weapon Descriptions")]]
	;

	s32px4 hd_dll_af4a6f[numRanged] @ header.ptrs.rangedWeaponDesc
	//[[name("Pointers to Ranged Weapon Descriptions")]]
	;
	#endif

	// List of pointers to armor stats
	ptr hd_dll_af4aca[6] @ header.ptrs.armorStatArray
	[[
		name("Pointers to armor stats"), 
		comment("[0] = Legs, [1] = Head, [2] = Head, [3] = Body, [4] = Arm, [5] = Waist")
	]];
	
	// Lists of pointers to armor/weapon ptString lists
	ptr hd_dll_af4b1c[8] @ header.ptrs.armorWeaponStatArray
	[[
		name("Pointers to armor/weapon name pointers"),
		comment("[0] = Legs, [2] = Head, [3] = Body, [4] = Arm, [5] = Waist, [6] = Melee, [7] = Ranged")
	]];

	// List of pointers to armor ptString lists
	ptr hd_dll_af4b86[5] @ header.ptrs.armorNameArray
	[[
		name("Pointers to armor name pointers"),
		comment("[0] = Head, [1] = Body, [2] = Arm, [3] = Waist, [4] = Legs")
	]];

	ptu32x10 hd_dll_af4bcc[while(std::mem::read_signed($,4)!=0)] 
		@ header.ptrs.hd_dll_af4bc6;
	
	// [mhfo-hd.dll + 0xaf4c01]

	struct struct_af4c11_2 {
		ptr ptr;

		if (ptr != 0) {
			varPaddT<u16, 0x6> unk[while(std::mem::read_signed($,2))] @ ptr;
		}
	};

	struct struct_af4c11 {
		ptr sub[3];
		u16 count;
		padding[2];

		if (sub[0] != 0) {
			ptr unk0[count] @ sub[0];
		} if (sub[1] != 0) {
			varPaddT<u32, 0x4> unk1[count] @ (sub[1] + 4);
		} if (sub[2] != 0) {
			// Seems to be that sub[2] points to a shop section
			struct_af4c11_2 unk2[count] @ sub[2];

			//unk2[5] points to the primary shop inventory ReFrontier's
			// cheat shop modifies
		}
	};

	struct_af4c11 hd_dll_af4c11[0xE] @ header.ptrs.hd_dll_af4bf5
		[[name("Equipment Description Pointers")]];
	ptr hd_dll_af4c01[0xE] @ header.ptrs.hd_dll_af4bfb;
 
	// [mhfo-hd.dll + 0xaf4ce0]

	struct struct_af4ce0 {
		ptr ptr;
		varPaddT<u16, 0x26> unk[while(std::mem::read_signed($,2)!=-1)] @ ptr;
	};

	struct_af4ce0 hd_dll_af4ce0[while(std::mem::read_signed($,4))] 
		@ header.ptrs.hd_dll_af4cc5;

	varPaddT<u16, 0x2> hd_dll_af4d20[while(std::mem::read_signed($,2)!=-1)] 
		@ header.ptrs.hd_dll_af4d08;
	varPaddT<u16, 0x20> hd_dll_af4d43[while(std::mem::read_signed($,2)!=-1)] 
		@ header.ptrs.hd_dll_af4d2d;

	// Some function is called, parameter is hd_dll_af4d2d

	// Refrontier calls this array Hunter Pearl Skill unlocks
	varPaddT<u16, 0x2E> hd_dll_af4d6f[while(std::mem::read_signed($,2)!=-1)] 
		@ header.ptrs.hunterPearlSkills 
		[[name("Hunter Pearl Skill unlocks")]];

	// Could probably just make this while(read_signed), but whatever
	ptr hd_dll_af4d91[std::mem::read_signed(header.ptrs.important_nums + 0x5E,2)] 
		@ header.ptrs.hd_dll_af4d7b;

	varPaddT<u16, 0x2> hd_dll_af4e03[while(std::mem::read_signed($,2))] 
		@ header.ptrs.hd_dll_af4de0;
	varPaddT<u16, 0x2> hd_dll_af4e29[while(std::mem::read_signed($,2)!=-1)] 
		@ header.ptrs.hd_dll_af4e0f;
	varPaddT<u16, 0x4> hd_dll_af4e49[while(std::mem::read_signed($,2)!=-1)] 
		@ header.ptrs.hd_dll_af4e3a;

	// Each of these u8s are written to incrementally, 0 to [0xaf4fa4]
	varPaddT<u8, 0xD> hd_dll_af4fa8[numMonsterDesc] @ header.ptrs.hd_dll_af4f23;

	s32p hd_dll_af4fd7[numMonsterDesc] @ header.ptrs.monsterDesc 
		[[name("Monster Descriptions")]];

	struct struct_af5001 {
		ptr unk0; 
		ptr unk1; 
		padding[4];

		if (unk0!=0) {
			varPaddT<u16, 0x26> unk[while(std::mem::read_unsigned($,2)!=0x8000)] 
				@ (unk0 + 0x1E);
		}
	};

	struct_af5001 hd_dll_af5001[0xB1] @ header.ptrs.hd_dll_af4ff0;

	ptr hd_dll_af505b[0xE] @ header.ptrs.hd_dll_af504a;
//

/* Yeah I have no idea how this works 
	// [mhfo-hd.dll + 0xaf5091]

	u16 max @ (header.ptrs.important_nums + 0x1A);
	u16 n = 1;

	struct struct_af5091 {
		u16 uVar12; // iVar24 + 8 * (n-1)
		padding[6];
		u16 uVar1; // iVar24 + 8*n
		padding[6];
	};

	while (max > n) {
		u32 iVar24 = hd_dll_af508b;
		u16 uVar1 @ (iVar24 + (n * 8));
		u16 uVar12 @ (iVar24 + 8 * (n - 1));

		if (uVar1 <= uVar12) {
			u32 local_140 = n - 1;
			u32 iVar27 = 0;
			while (local_140 >= iVar27) {
				u32 iVar9 = (local_140 + iVar27) / 2;
				if (std::mem::read_signed(iVar24 + 8 * n,2) < std::mem::read_signed(iVar24 + 8 * iVar9,2)) {
					local_140 = iVar9 - 1;
				} else {
					iVar27 = iVar9 + 1;
				}
			}

			std::print("{}", iVar24 + 8*n);

			u8 local_130 @ iVar24 + 8 * n;
			u8 local_12c @ iVar24 + 8 * n + 4;
			//iVar24 += iVar27 * 8;
			// Function(iVar24 + 8, iVar24, (iVar4 - iVar27)*8)
			//iVar24 = hd_dll_af508b;
			// Writes
		}

		n += 1;
	}
*/

// Commented out to reduce clutter
	struct item_num_pair {
		u16 id [[format("getItemName")]];
		u16 num;
	};
	
	struct num_item_pair {
		u16 num;
		u16 id [[format("getItemName")]];
	};

	// A pointer to an array of num_item_pair's
	struct ptrToNumItemPair {
		ptr ptr;

		if (ptr != 0) {
			num_item_pair dest[while(std::mem::read_signed($,2)!=-1)] @ ptr;
		}
	};

	// Array of pointers to arrays of num_item_pairs's
	ptrToNumItemPair hd_dll_af514b[0xE] @ header.ptrs.hd_dll_af5145;

	num hd_dll_af526a @ (header.ptrs.important_nums + 0x48);
	ptr hd_dll_af5277[hd_dll_af526a] @ header.ptrs.hd_dll_af5261;

	struct macha_pot_rewards {
		item_num_pair items[6] [[inline]];
	} [[single_color, inline]];

	struct ptMacha {
		macha_pot_rewards *ptr : ptr [[inline]];
	};

	ptMacha hd_dll_af52a7[while(std::mem::read_signed($,4))] 
		@ header.ptrs.machaPotRewards [[name("Macha Pot Rewards")]];

	struct struct_af52db {
		s32p; s32p; padding[0xC];
	};
	num hd_dll_af52c6 @ (header.ptrs.important_nums + 0x4E);
	struct_af52db hd_dll_af52db[hd_dll_af52c6 + 1] 
		@ header.ptrs.hd_dll_af52ba;

	// NOTE: Possibly incorrect, double check this
	u16 hd_dll_af52ff[while(std::mem::read_signed($,2))] 
		@ header.ptrs.hd_dll_af52f3;

	struct struct_af5312_1 {
		// This structure repeats 5 times. I'd make a for loop if I were able
		if (std::mem::read_signed($,4) && std::mem::read_signed($+4,4)) {
			ptr; u32;
		} else {
			padding[8];
		}

		if (std::mem::read_signed($,4) && std::mem::read_signed($+4,4)) {
			ptr; u32;
		} else {
			padding[8];
		}

		if (std::mem::read_signed($,4) && std::mem::read_signed($+4,4)) {
			ptr; u32;
		} else {
			padding[8];
		}

		if (std::mem::read_signed($,4) && std::mem::read_signed($+4,4)) {
			ptr; u32;
		} else {
			padding[8];
		}

		if (std::mem::read_signed($,4) && std::mem::read_signed($+4,4)) {
			ptr; u32;
		} else {
			padding[8];
		}
	};

	struct struct_af5312 {
		ptr ptr;

		if (ptr != 0) {
			struct_af5312_1 arr[0x28] @ ptr;
		}
	};

	struct_af5312 hd_dll_af5312 [0xB1] @ header.ptrs.hd_dll_af530c;

	num hd_dll_af53a0 @ (header.ptrs.important_nums + 0x26)
		[[name("Number of Hunting Horn Guide Pages?")]];
	s32p hd_dll_af53ad[hd_dll_af53a0] 
		@ header.ptrs.hd_dll_af5397 [[name("Hunting Horn Guide Pages?")]];

	num hd_dll_af53c9 @ (header.ptrs.important_nums + 0x28)
		[[name("Number of More Hunting Horn Tutorials?")]];
	s32p hd_dll_af53d6[hd_dll_af53c9] 
		@ header.ptrs.hd_dll_af53c0 [[name("More Hunting Horn Tutorial?")]];

	// TODO: Loop at [mhfo-hd.dll + 0xaf53ff]

	num hd_dll_af5436 @ (header.ptrs.important_nums + 0x2a);
	ptr hd_dll_af5443[hd_dll_af5436] @ header.ptrs.hd_dll_af542d;

	num hd_dll_af435e @ (header.ptrs.important_nums + 0x32);
//

/* // [mhfo-hd.dll + 0xaf83cf]

	// FUCK POINTERS IT TOOK SO GODDAMN LONG TO UNDERSTAND WHAT THE
	// REVERSED CODE WAS DOING AND THIS IS ALL IT CAME OUT TO IM GOING TO SCREAM
	ptr hd_dll_af83cf[11] @ 0x9b0;

	ptr hd_dll_af8472 @ hd_dll_af83cf[0];
	ptr hd_dll_af8476 @ (hd_dll_af8472 + 0xC);
	ptr hd_dll_af8486 @ (hd_dll_af8472 + 0x10);
	ptr hd_dll_af8496 @ (hd_dll_af8472 + 0x14);
	ptr hd_dll_af84a6 @ (hd_dll_af8472 + 0x18);
*/
