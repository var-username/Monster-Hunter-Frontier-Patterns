#include <std/sys.pat>
#include <std/mem.pat>
#include <std/io.pat>

str __header_fail_msg = "File header does not match expected ecd header";

u32 header @ 0x0;

std::assert_warn(header == 0x1A646365, __header_fail_msg);

u16 index @ 0x4;
u32 fsize @ 0x8;

// CRC32 of the file after decryption, before unpacking
u32 crc32 @ 0xC;

// Taken straight from LibReFrontier/Crypto/decEcd
u32 rnd = (crc32 << 16) | (crc32 >> 16) | 1;
std::print(std::format("rnd: {:04X}", rnd));

std::mem::Section rndBufEcd = std::mem::create_section("rndBufEcd");

u32 rndBufEcdBytes[12] @ 0x00 in rndBufEcd;
rndBufEcdBytes[0] = 0x2E524B4A; rndBufEcdBytes[1] = 0x01000000; 
rndBufEcdBytes[2] = 0xCD0D0100; rndBufEcdBytes[3] = 0x01000000; 
rndBufEcdBytes[4] = 0xCD0D0100; rndBufEcdBytes[5] = 0x01000000; 
rndBufEcdBytes[6] = 0xCD0D0100; rndBufEcdBytes[7] = 0x01000000; 
rndBufEcdBytes[8] = 0x0D661900; rndBufEcdBytes[9] = 0x03000000; 
rndBufEcdBytes[10] = 0xDD892B7D; rndBufEcdBytes[11] = 0x01000000; 

fn loadU32BE(std::mem::Section buf, u32 offset) {
    u32 value @ offset in buf;
    return value;
};

fn getRndEcd(u32 index, u32 rnd) {
    rnd = rnd * loadU32BE(rndBufEcd, 8*index) + loadU32BE(rndBufEcd, 8*index + 4);
    return rnd;
};

u32 xorpad = getRndEcd(index, rnd);
std::print(std::format("xorpad: {:04X}", xorpad));
