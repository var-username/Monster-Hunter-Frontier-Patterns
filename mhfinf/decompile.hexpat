#include <std/core.pat>
#include <misc/s32p.pat>
#include <misc/types.pat>

u32 header1 @ 0x0 [[comment("Must equal 1A 66 6E 69")]];
u32 header2 @ 0x4 [[comment("Must equal 00 00 00 06")]];
u32 header3 @ 0xC [[comment("Must equal 00 00 00 88")]];

//ptr hd_dll_afa411 @ 0x10;
ptr hd_dll_afa414 @ 0x14;

//s16 hd_dll_afa421 @ hd_dll_afa411;
u16 hd_dll_afa427 @ (hd_dll_afa414 + 0x2);

//Complex loop at afa430

struct unk_struct {
	ptr loc;
	u16 count @ hd_dll_afa411 + 2*(std::core::array_index()+1);
	ptr pointers[count] @ loc;
};

unk_struct hd_dll_afa50d[28] @ 0x18;
