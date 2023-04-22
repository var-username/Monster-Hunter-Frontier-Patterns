#pragma once

namespace itemdata {

	u32 __sizeof_Item = 0x24;

	// Add 1 to n (Used for pattern formatting)
	fn plusone (u8 n) {
		return n+1;
	};
	
	fn getItemName(auto i) {
		return getItemName(($-soItemData)/__sizeof_Item);
	};

	struct Item {
		u16 unk00;
		u8 rarity [[format("itemdata::plusone")]];
		u8 maxStack;
		u8 unk04;
		u8 icon [[comment("Item Icon")]];

		/* TODO: Malckyor's code puts this as a u32, but 
			I think it'd be more accurate as a u16 or so. 
		*/

		/* TODO: I remember seeing an image showing the different 
			color codes in frontier. Find it and link it somewhere.
		*/
		u32 iconColor [[comment("Icon color")]]; 

		u16 unk08 [[hidden]];
		
		u32 buyPrice;
		u32 sellPrice;
		u16 type [[comment("Item Type")]]; // 04 = Consumable, 05 = Placeable
		
		u16 unk16 [[hidden]];
		u16 unk18 [[hidden]];
		u16 unk1A [[hidden]];
		u16 unk1C [[hidden]]; // itemVar
		u16 unk1E [[hidden]];
		u16 unk20 [[hidden]]; // itemVari
		u16 unk22 [[hidden]];
	} 
	[[format("itemdata::getItemName")]]
	;

	Item items[numItems] @ soItemData;
}
