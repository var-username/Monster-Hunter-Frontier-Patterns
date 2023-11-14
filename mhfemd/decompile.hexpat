#include <misc/MonsterIDs.hexpat>
#include <misc/types.pat>

ptr hd_dll_af96ab @ 0x4;
ptr hd_dll_af96ae[0xC] @ hd_dll_af96ab;
ptr hd_dll_af96be @ 0x18;
ptr hd_dll_af96c1[3] @ hd_dll_af96be;

ptr hd_dll_af975c @ 0x08;
ptr hd_dll_af975f @ 0x10;
ptr hd_dll_af9762[0xC] @ hd_dll_af975f;
ptr hd_dll_af9778 @ 0x1C;
ptr hd_dll_af977b @ 0x14;

num hd_dll_af9780 @ (hd_dll_af96a1 + 0xC);
struct unk_struct_af978a{MonsterID id; padding[3]; ptr; float;};
unk_struct_af978a hd_dll_af978a[hd_dll_af9780] @ hd_dll_af9778;

ptr hd_dll_af97a0 @ 0x24;
float *hd_dll_af97a3[] : u32 @ 0x20;
num hd_dll_af97a6 @ (hd_dll_af96a1 + 0x10);
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

num hd_dll_af9809 @ (hd_dll_af96a1 + 0x16);
ptr hd_dll_af9816[hd_dll_af9809] @ hd_dll_af97f7;
num hd_dll_af9827 @ (hd_dll_af96a1 + 0x18);
ptr hd_dll_af982b @ 0x44;

struct p4_ptr {
	padding[4]; ptr pointer;
};
p4_ptr hd_dll_af9834[hd_dll_af9827] @ (hd_dll_af982b);

ptr hd_dll_af984b @ 0x48;
num hd_dll_af9850 @ (hd_dll_af96a1 + 0x1c);
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

/* [mhfo-hd.dll + 0x02fb40] FUN_10030740
	u32 hd_dll_02fbda @ 0x4C;
	num hd_dll_02fbe4 = hd_dll_af9850;
*/

/* [mhfo-hd.dll + 0x050360] FUN_10050f60

	// This is messy, but whatever
	struct struct_0503bb {
		u32; padding[0xC];
	};

	ptr hd_dll_0503ac = hd_dll_af97a0;
	struct_0503bb hd_dll_0503bb[4] @ (hd_dll_0503ac + 0x7a0);
	struct_0503bb hd_dll_0503df[4] @ (hd_dll_0503ac + 0x7a4);
	struct_0503bb hd_dll_0503fa[4] @ (hd_dll_0503ac + 0x7a8);
	struct_0503bb hd_dll_05041e[4] @ (hd_dll_0503ac + 0x7ac);
*/

/* [mhfo-hd.dll + 0x0508a0] FUN_100514a0
	u32 hd_dll_050925 = hd_dll_af96cc;
	//u32 hd_dll_050928 @ (hd_dll_050925 + 0x48 + Function + read(param_1[1] + 3) * 0x30 * 4);
*/

/* [mhfo-hd.dll + 0x051280] FUN_10051e80
	u32 hd_dll_0512a9 = hd_dll_af96cc;
	// u32 hd_dll_0512b2 @ hd_dll_0512a9 + 0xb0 + (read(FUNC_RET + 3) * 0xC0);
*/

/* [mhfo-hd.dll + 0x052b90] FUN_10053790
	u32 hd_dll_052c8b = hd_dll_af96cc;
	// u32 hd_dll_052c94 @ hd_dll_052c8b + 0xB0 + (read(FUNC_RET + 3) * 0xC0);
*/

/* [mhfo-hd.dll + 0x05df80] FUN_1005eb80
	u32 hd_dll_05dfaa = hd_dll_af96cc;
	// u32 hd_dll_05dfb6 @ hd_dll_05dfaa + 0xB0 + (read(param_1[1] + 3) * 0xC0);
	// u32 hd_dll_05e156 @ hd_dll_05dfaa + 0xB0 + (read((FUNC_RET >> 0x20) + 3) * 0xC0);
*/

/* [mhfo-hd.dll + 0x05e530] FUN_1005f130
	u32 hd_dll_05e56d = hd_dll_af96cc;
	// u32 hd_dll_05e576 @ hd_dll_05e56d + 0xB0 + (read(read(param_1 + 4)) * 0xC0);
*/

/* [mhfo-hd.dll + 0x05f3d0] FUN_1005ffd0
	u32 hd_dll_05f3e9 = hd_dll_af96cc;
	// u32 hd_dll_05f3f2 @ hd_dll_05f3e9 + 0xB0 + (read(param_1 + 3) * 0xC0);
*/

/* [mhfo-hd.dll + 0x05f550] FUN_10060150
	u32 hd_dll_05f583 = hd_dll_af96cc;
	// u32 hd_dll_05f592 @ hd_dll_05f583 + 0xB0 + (read(param_1 + 3) * 0xC0);
*/

/* [mhfo-hd.dll + 0x0dfb50] FUN_100e0750
	// @ ((@ 0x24) + 0x4C4)
	// @ ((@ 0x24) + 0x4C8)
	// @ ((@ 0x24) + 0x4BC)
	// @ ((@ 0x24) + 0x4C0)
	// @ ((@ 0x24) + 0x4B4)
	// @ ((@ 0x24) + 0x4B8)
*/

/* [mhfo-hd.dll + 0x0e4fe0] FUN_100e5be0
	// @ ((@ 0x8) + 0x2a + (read(param_1 + 3) * 0x34))
*/

/* [mhfo-hd.dll + 0x0a0e70] FUN_100a1a70
	// @ ((@ 0x8) + 0x2a + (read(param_1 + 3) * 0x34))
*/
