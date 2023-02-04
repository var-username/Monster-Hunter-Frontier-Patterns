namespace shopItems {
	u32 shopItemCount = (eoItemData - soItemData) / 0x24;

	u128 shopInventory; 
	shopInventory = std::mem::find_sequence(0, 0x0F, 01, 01, 00, 00, 00, 00, 00, 03, 01, 01, 00, 00, 00, 00, 00);
	//shopInventory = 0x00C78C40;

	u128 shopHeader @ shopInventory;

	//u128 shopPointer @ 0x00C78C28;

	struct ItemOut {
		u16 id [[format("getItemName")]];
		padding[6];
	};

	//ItemOut shopArray[shopItemCount-1] @ 0x01B63326;
}
