#pragma once

// Shop seems to be pointed to by a list of pointers,
// pointed to by hd_dll_af4c11.sub[2]

u32 shopInventory; 
shopInventory = std::mem::find_sequence(0, 0x0F, 01, 01, 00, 00, 00, 00, 00, 03, 01, 01, 00, 00, 00, 00, 00);
//shopInventory = 0x00C78C40;

u128 shopHeader @ shopInventory;

//u32 shopPointer @ 0x00C78C28;

struct ItemOut {
	u16 id [[format("getItemName")]];
	padding[6];
};

struct NPointPrice {
	// 01 00 01 = NCafe(Gatherables)
	// 03 02 01 = NCafe(HR5+)(Mats (HR5~7))
	// 06 06 01 = NCafe(GR1+)(GItems (GR1+))
	// 04 02 01 = NCafe(HR5+)(Decorations)
	// 04 01 01 = NCafe(HR3+)(Decorations)
	// 02 00 01 = NCafe(HR3+)(Mats (HR 1~4))
	// 02 01 01 = NCafe(Mats (HR 1~4))
	// 03 03 01 = NCafe(SR Equip)(Mats (HR 5~7))
	// 05 03 01 = NCafe(SR Equip)(Other Items)
	// 05 01 01 = NCafe(HR3+)(Other Items)
	// 05 02 01 = NCafe(HR5+)(Other Items)
	u8; u8; u8; 
	
	padding[1];
	u16 id [[format("getItemName")]];
	padding[2];
	u16 price;
	padding[2];
};

// TODO: Figure out where this array actually starts
// The GCP Exchange is right above it, so figure out how they're separated too
NPointPrice nCafeShop[100] @ 0x16A3A60;
