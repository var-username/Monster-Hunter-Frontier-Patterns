#pragma once
// [mhfo-hd.dll + 0xaf4dcb]
s32p itemNames[numItems] @ soStringItem;

// [mhfo-hd.dll + 0xaf4f06]
s32p itemSources[numItems] @ soStrItemSource;

// [mhfo-hd.dll + 0xaf4edb]
// Yes, that +0x18 is hard coded in
s32p itemDescriptions[numItems + 0x18] @ soStrItemDesc 
[[comment("Actual item descriptions start at array index 24")]];
