// Very large limits just in case, feel free to make these more sensible
#pragma pattern_limit 10000000
#pragma array_limit 200000
#include <std/sys.pat>
#include <std/mem.pat>
#include <std/io.pat>
#include <misc/s32p.pat>

//#define __ITEMNAMES 1
//#define __ITEMDATA 1
//#define __SHOP 1
//#define __WEAPONDATA 1
//#define __WEAPONNAMES 1
//#define __EQUIPDATA 1
//#define __EQUIPNAMES 1
//#define __CRAFTING 1
//#define __PARTBREAKS 1
//#define __QUESTLIST 1

//#define __DECOMPILE 1

#include <mhfdat/constants.hexpat>

str __header_fail_msg = "File header does not match expected mhfdat header";
u32 header1 @ 0x0 [[comment("Must equal 1A 66 68 6D")]];
u32 header2 @ 0x4 [[comment("Must equal 00 00 00 59")]];
u32 header3 @ 0xC [[comment("Must equal 00 00 0B C8")]];

std::assert_warn(header1 == 0x1A66686D, __header_fail_msg);
std::assert_warn(header2 == 0x00000059, __header_fail_msg);
std::assert_warn(header3 == 0x00000BC8, __header_fail_msg);

#ifdef __ITEMNAMES
#include <mhfdat/itemnames.hexpat>
#endif

/**
    @param n The item ID
    @return The item ID, formatted as expected by Ferias /sozai/sozai.htm?{ID}
    Optionally also returns the item name, comment out the first return
    to disable.
*/
fn getItemName(u16 n) {
    return std::format("{:04X} | {}", n, rIPPS(soStringItem, n));
	return std::format("{:04X}", n);
};

#ifdef __ITEMDATA
#include <mhfdat/itemdata.hexpat>
#endif

#ifdef __SHOP
#include <mhfdat/shop.hexpat>
#endif

#ifdef __EQUIPDATA
#include <mhfdat/equipdata.hexpat>
#endif

#ifdef __EQUIPNAMES
#include <mhfdat/equipnames.hexpat>
#endif

#ifdef __WEAPONDATA
#include <mhfdat/weapondata.hexpat>
#endif

#ifdef __WEAPONNAMES
#include <mhfdat/weaponnames.hexpat>
#endif

#ifdef __CRAFTING
#include <mhfdat/crafting.hexpat>
#endif

#ifdef __PARTBREAKS
#include <mhfdat/partbreaks.hexpat>
#endif

#ifdef __QUESTLIST
#include <mhfdat/questlist.hexpat>
#endif

#ifdef __DECOMPILE
#include <mhfdat/decompile/decompile.hexpat>
#endif

//s32p CreatureDescriptions [142] @ 0x16AAC20;
