#pragma once

namespace itemdata {

	// Add 1 to n (Used for pattern formatting)
	fn plusone (u8 n) {
		return n+1;
	};
	
	fn getItemName(auto i) {
		return getItemName(($-soItemData)/0x24);
	};

	struct Item {
		u16 unk00;
		u8 rarity [[format("itemdata::plusone")]];
		u8 maxStack;
		u8 unk04;
		u8 icon [[comment("Item Icon??")]];
		u8 iconColor [[comment("Icon color??")]]; // 00 = White, 01 = Red, 02 = Green, 03 = Blue
		u8 unk07 [[hidden]];
		u32 unk08 [[hidden]];
		u32 buyPrice;
		u32 sellPrice;
		u8 unk14 [[name("Related to item type?")]]; // 04 = Consumable, 05 = Placeable
		u8 unk15 [[hidden]];
		u16 unk16 [[hidden]];
		u32 unk18 [[hidden]];
		padding[8];
	} 
	[[format("itemdata::getItemName")]]
	;

	Item items[numItems] @ soItemData;
}
