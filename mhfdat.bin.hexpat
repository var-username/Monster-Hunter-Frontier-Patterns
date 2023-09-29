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
//#define __ARENA 1

//#define __DECOMPILE 1

#include <mhfdat/header.hexpat>
#include <mhfdat/constants.hexpat>

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
    return std::format("{:04X} | {}", n, rIPPS(header.ptrs.itemNames, n));
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

#ifdef __ARENA
#include <mhfdat/arena.hexpat>
#endif

#ifdef __DECOMPILE
#include <mhfdat/decompile/decompile.hexpat>
#endif

//s32p CreatureDescriptions [142] @ 0x16AAC20;
