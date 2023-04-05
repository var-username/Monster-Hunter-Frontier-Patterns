#pragma once
// [mhfo-hd.dll + 0xaf4dcb]
s32p itemNames[numItems] @ soStringItem
[[name("Item Names")]];

// [mhfo-hd.dll + 0xaf4f06]
s32p itemSources[numItems] @ soStrItemSource
[[name("Item Source Strings")]];

// [mhfo-hd.dll + 0xaf4edb]
// Yes, that +0x18 is hard coded in
s32p itemDescriptions[numItems + 0x18] @ soStrItemDesc 
[[name("Item Descriptions"),
comment("Actual item descriptions start at array index 24")]];
