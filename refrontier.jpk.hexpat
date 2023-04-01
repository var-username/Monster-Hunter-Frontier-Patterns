#include <std/sys.pat>
#include <std/mem.pat>
#include <std/io.pat>

str __header_fail_msg = "File header does not match expected jpk header";

u32 header @ 0x0;

std::assert_warn(header == 0x1A524B4A, __header_fail_msg);

// 0 = RW, 2 = HFIRW, 3 = Lz, 4 = HFI
u16 type @ 0x6;

u32 startOffset @ 0x8;
u32 outSize @ 0xC;
