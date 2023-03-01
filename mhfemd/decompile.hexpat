#include <misc/MonsterIds.hexpat>

using ptr = s32
//[[hidden]]
;

//ptr hd_dll_af96a1 @ 0x00;
//u8 hd_dll_af96a5 @ (hd_dll_af96a1 + 4);

ptr hd_dll_af96ab @ 0x4;
ptr hd_dll_af96ae[0xC] @ hd_dll_af96ab;
ptr hd_dll_af96be @ 0x18;
ptr hd_dll_af96c1[3] @ hd_dll_af96be;
//ptr hd_dll_af96cc @ 0xC;

/* struct unk_struct_af9710 {
	if ((std::mem::read_signed($, 4)) && (std::mem::read_signed($ + 4, 4))) {
		ptr unk00; padding[4];
	} else {
		padding[8];
	}
}; */

/* s16 hd_dll_af96d2 = u16(hd_dll_af96a5);

struct unk_struct_af96d8 {
	ptr *unk00: u32; //af96ec
	ptr unk04[0xC]; //af973d
	ptr unk34[0xC]; //af9748
	padding[0x44]; // 0x64
	ptr unkA8; //af96dd
	padding[4];
	if (std::mem::read_signed($, 4)) {
		unk_struct_af9710 *unkAC[200]: u32; // af9723
	} else {
		padding[4];
	}
	padding[0xC];
}; // size of 0xC0

unk_struct_af96d8 hd_dll_af96d8[hd_dll_af96d2] @ (hd_dll_af96cc + 8); */

ptr hd_dll_af975c @ 0x08;
ptr hd_dll_af975f @ 0x10;
ptr hd_dll_af9762[0xC] @ hd_dll_af975f;
ptr hd_dll_af9778 @ 0x1C;
ptr hd_dll_af977b @ 0x14;

s16 hd_dll_af9780 @ (hd_dll_af96a1 + 0xC);
struct unk_struct_af978a{MonsterId id; padding[3]; ptr; float;};
unk_struct_af978a hd_dll_af978a[hd_dll_af9780] @ hd_dll_af9778;

ptr hd_dll_af97a0 @ 0x24;
float *hd_dll_af97a3[] : u32 @ 0x20;
s16 hd_dll_af97a6 @ (hd_dll_af96a1 + 0x10);
ptr hd_dll_af97b2[hd_dll_af97a6] @ hd_dll_af97a0;

ptr hd_dll_af97c4 @ 0x28;
// Seemingly useless loop at af97ce?
ptr hd_dll_af97dc[while(std::mem::read_unsigned($,4))] @ hd_dll_af97c4;

ptr hd_dll_af97f7 @ 0x40;
ptr hd_dll_af97fa @ 0x2c;
ptr hd_dll_af97fd @ 0x30;
ptr hd_dll_af9800 @ 0x34;
ptr hd_dll_af9803 @ 0x38;
ptr hd_dll_af9806 @ 0x3c;

s16 hd_dll_af9809 @ (hd_dll_af96a1 + 0x16);
ptr hd_dll_af9816[hd_dll_af9809] @ hd_dll_af97f7;
s16 hd_dll_af9827 @ (hd_dll_af96a1 + 0x18);
ptr hd_dll_af982b @ 0x44;

struct p4_ptr {
	padding[4]; ptr pointer;
};
p4_ptr hd_dll_af9834[hd_dll_af9827] @ (hd_dll_af982b);

ptr hd_dll_af984b @ 0x48;
s16 hd_dll_af9850 @ (hd_dll_af96a1 + 0x1c);
ptr hd_dll_af9854 @ 0x4c;

struct unk_struct_af985f {
	padding[0x1A]; s16 unk1A;
	if (unk1A) {
		ptr unk1C;
	} else {
		padding[4];
	}
};
unk_struct_af985f hd_dll_af985f[hd_dll_af9850] @ hd_dll_af9854;

ptr hd_dll_af987c @ 0x50;
ptr hd_dll_af987f @ 0x54;
ptr hd_dll_af9882 @ 0x58;
ptr hd_dll_af9885 @ 0x5c;

//u32 hd_dll_0503af[16] @ (hd_dll_af97a0 + 0x7a0);
