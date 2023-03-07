#pragma once

#include <std/io.pat>

struct s32px4{s32p unk0[4];};
struct u32x10 {u32 unk[0x10];};
struct ptu32x10 {u32x10 *pointer : u32;};
struct u8PaddD {u8; padding[0xD];};
struct u16Padd2 {u16; padding[2];};
struct u16Padd4 {u16; padding[4];};
struct u16Padd6 {u16; padding[6];};
struct u16Padd20 {u16; padding[0x20];};
struct u16Padd26 {u16; padding[0x26];};
struct u16Padd2E {u16; padding[0x2E];};
struct u16Padd32 {u16; padding[0x32];};
struct u16Padd3A {u16; padding[0x3A];};
struct u16Padd46 {u16; padding[0x46];};
struct u32Padd4 {u32; padding[4];};

// Variables are named after their file and offset as reported by Ghidra's 
// "Byte Source Offset"

// [mhfo-hd.dll + 0xaf4690]

u32 header1 @ 0x0 [[comment("Must equal 1A 66 68 6D")]];
u32 header2 @ 0x4 [[comment("Must equal 00 00 00 59")]];
u32 header3 @ 0xC [[comment("Must equal 00 00 0B C8")]];

// These variables are all copied into a new buffer, plus the new buffer's 
// base position in memory, implying the program will use these as pointers 
// to other positions in the file

// Monotony moved to decompile_pointers.hexpat
//#include <mhfdat/decompile/decompile_pointers.hexpat>

// Lots of times, the program seems to read elements of an array 
// in the buffer, but does nothing with them. Maybe it's counting something?

/*
	// I have no idea what these are for but apparently they're stored into ram.
	// Ghidra labels these as _DAT_1e7414f8 and _DAT_1e7414fc respectively
	u16 hd_dll_af47c1_1 @ (hd_dll_af47af + 0xe8);
	u32 hd_dll_af47c1 = u32 (hd_dll_af47c1_1);
	u16 hd_dll_af47c5_1 @ (hd_dll_af47b5 + 0xe4);
	u32 hd_dll_af47c5 = u32 (hd_dll_af47c5_1);
*/

/* Commented out to reduce clutter

	//s32px4 hd_dll_af4966[while(std::mem::read_signed($,4))] @ hd_dll_af4963;

	//u16Padd32 hd_dll_af49a9[while(std::mem::read_signed($,2)!=-1)] @ hd_dll_af49a6;
	//ptr hd_dll_af49d9[(sizeof(hd_dll_af49a9)/sizeof(u16Padd32))] @ hd_dll_af49cd;
	// Commented out because this is bugged to be put in the wrong place 
	//s32px4 hd_dll_af49df[(sizeof(hd_dll_af49a9)/sizeof(u16Padd32))] @ hd_dll_af49d3;

	//u16Padd3A hd_dll_af4a3a[while(std::mem::read_signed($,2)!=-1)] @ hd_dll_af4a34;
	//ptr hd_dll_af4a69[(sizeof(hd_dll_af4a3a)/sizeof(u16Padd3A))] @ hd_dll_af4a5d;
	// Commented out because this is bugged to be put in the wrong place 
	//s32px4 hd_dll_af4a6f[(sizeof(hd_dll_af4a3a)/sizeof(u16Padd3A))] @ hd_dll_af4a63;

	// List of pointers to armor stats
	ptr hd_dll_af4aca[6] @ hd_dll_af4ac4;
	
	// Lists of pointers to armor/weapon ptString lists
	ptr hd_dll_af4b1c[8] @ hd_dll_af4b16;

	// List of pointers to armor ptString lists
	ptr hd_dll_af4b86[5] @ hd_dll_af4b80;

	ptu32x10 hd_dll_af4bcc[while(std::mem::read_signed($,4)!=0)] @ hd_dll_af4bc6;
	
	// [mhfo-hd.dll + 0xaf4c01]

	struct struct_af4c11_2 {
		ptr ptr;

		if (ptr != 0) {
			u16Padd6 unk[while(std::mem::read_signed($,2))] @ ptr;
		}
	};

	struct struct_af4c11 {
		ptr sub[3];
		u16 count;
		padding[2];

		if (sub[0] != 0) {
			ptr unk0[count] @ sub[0];
		} if (sub[1] != 0) {
			u32Padd4 unk1[count] @ (sub[1] + 4);
		} if (sub[2] != 0) {
			struct_af4c11_2 unk2[count] @ sub[2];
		}
	};

	struct_af4c11 hd_dll_af4c11[0xE] @ hd_dll_af4bf5;
	ptr hd_dll_af4c01[0xE] @ hd_dll_af4bfb;
 
	// [mhfo-hd.dll + 0xaf4ce0]

	struct struct_af4ce0 {
		ptr ptr;
		u16Padd26 unk[while(std::mem::read_signed($,2)!=-1)] @ ptr;
	};

	struct_af4ce0 hd_dll_af4ce0[while(std::mem::read_signed($,4))] @ hd_dll_af4cc5;

	u16Padd2 hd_dll_af4d20[while(std::mem::read_signed($,2)!=-1)] @ hd_dll_af4d08;
	u16Padd20 hd_dll_af4d43[while(std::mem::read_signed($,2)!=-1)] @ hd_dll_af4d2d;

	// Some function is called, parameter is hd_dll_af4d2d

	// Refrontier calls this array Hunter Pearl Skill unlocks
	u16Padd2E hd_dll_af4d6f[while(std::mem::read_signed($,2)!=-1)] @ hd_dll_af4d58;

	// Could probably just make this while(read_signed), but whatever
	ptr hd_dll_af4d91[std::mem::read_signed(hd_dll_af46a3 + 0x5E,2)] @ hd_dll_af4d7b;

	u16Padd2 hd_dll_af4e03[while(std::mem::read_signed($,2))] @ hd_dll_af4de0;
	u16Padd2 hd_dll_af4e29[while(std::mem::read_signed($,2)!=-1)] @ hd_dll_af4e0f;
	u16Padd4 hd_dll_af4e49[while(std::mem::read_signed($,2)!=-1)] @ hd_dll_af4e3a;

	// Each of these u8s are written to incrementally, 0 to [0xaf4fa4]
	u8PaddD hd_dll_af4fa8[numMonsterDesc] @ hd_dll_af4f23;

	s32p hd_dll_af4fd7[numMonsterDesc] @ hd_dll_af4fc1 [[name("Monster Descriptions")]];

	struct struct_af5001 {
		ptr unk0; 
		ptr unk1; 
		padding[4];

		if (unk0!=0) {
			u16Padd26 unk[while(std::mem::read_unsigned($,2)!=0x8000)] @ (unk0 + 0x1E);
		}
	};

	struct_af5001 hd_dll_af5001[0xB1] @ hd_dll_af4ff0;

	ptr hd_dll_af505b[0xE] @ hd_dll_af504a;
*/

/* Yeah I have no idea how this works 
	// [mhfo-hd.dll + 0xaf5091]

	u16 max @ (hd_dll_af46a3 + 0x1A);
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
