// Very large limits just in case, feel free to make these more sensible
#pragma pattern_limit 10000000
#pragma array_limit 200000
import std.mem;
import std.io;
#include <misc/s32p.pat>

u32 hd_dll_1cbc3f @ 0x00;

struct menu_entry {s32p title; s32p description; u32 unk08; padding[0x2C];};
menu_entry hd_dll_1cbc46[0x18] @ (hd_dll_1cbc3f + 0x30);

u32 hd_dll_1cbc5b @ 0x04;

if (std::mem::read_unsigned(0x08, 4)) {
	//u32 hd_dll_1cbc66 @ ;
} 
