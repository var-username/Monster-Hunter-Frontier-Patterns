#pragma pattern_limit 10000000
#pragma array_limit 200000
#include <std/mem.pat>
#include <std/io.pat>

//#define __ITEMNAMES 1
//#define __ITEMDATA 1
//#define __SHOP 1
//#define __WEAPONNAMES 1
//#define __WEAPONDATA 1
//#define __EQUIPNAMES 1
//#define __EQUIPDATA 1
//#define __CRAFTING 1
//#define __PARTBREAKS 1

// Read Pointer to String
fn rPS (u32 p) {
	return std::mem::read_string(p, 100);
};

// Read Pointer to Pointer to String 
fn rPPS (u32 p, u32 s=4) {
	return rPS(std::mem::read_unsigned(p, s));
};

// Read Indirect Pointer to Pointer to String
fn rIPPS (u32 b, u32 i, u32 s=4) {
	return rPPS(b + (i*s));
};

// u32 pointer to a string
struct s32p {
	u32 string 
	[[format("rPS")]]
	;
} [[inline]];

// Add 1 to n (Used for pattern formatting)
fn plusone (u8 n) {
	return n+1;
};

// Multiply n by 10 (Used for pattern formatting)
fn timesten (u8 n) {
	return n*10;
};

#include <mhfdat.bin.constants.hexpat>

#ifdef __ITEMNAMES
#include <mhfdat.bin.itemnames.hexpat>
#endif

fn getItemName(u16 n) {
    return std::format("{:04X} | {}", n, rIPPS(soStringItem, n));
	return std::format("{:04X}", n);
};

#ifdef __ITEMDATA
#include <mhfdat.bin.itemdata.hexpat>
#endif

#ifdef __SHOP
#include <mhfdat.bin.shop.hexpat>
#endif

#ifdef __EQUIPNAMES
#include <mhfdat.bin.equipnames.hexpat>
#endif

#ifdef __EQUIPDATA
#include <mhfdat.bin.equipdata.hexpat>
#endif

#ifdef __WEAPONNAMES
#include <mhfdat.bin.weaponnames.hexpat>
#endif

#ifdef __WEAPONDATA
#include <mhfdat.bin.weapondata.hexpat>
#endif

#ifdef __CRAFTING
#include <mhfdat.bin.crafting.hexpat>
#endif

#ifdef __PARTBREAKS
#include <mhfdat.bin.partbreaks.hexpat>
#endif

//s32p CreatureDescriptions [142] @ 0x16AAC20;
