#pragma once

namespace itemdata {

	u32 count = (eoItemData - soItemData) / 0x24;

	using Item;
	
	fn getItemName(Item i) {
		return getItemName(($-soItemData)/0x24);
	};

	struct Item {
		u16 unk00;
		u8 rarity [[format("plusone")]];
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

	Item items[count] @ soItemData;
}
