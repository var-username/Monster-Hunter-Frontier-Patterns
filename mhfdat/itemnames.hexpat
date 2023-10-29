#pragma once
// [mhfo-hd.dll + 0xaf4dcb]
s32p itemNames[numItems] @ header.ptrs.itemNames
    [[name("Item Names")]];

// [mhfo-hd.dll + 0xaf4f06]
s32p itemSources[numItems] @ header.ptrs.itemSourceStrings
    [[name("Item Source Strings")]];

// [mhfo-hd.dll + 0xaf4edb]
// Yes, that +0x18 is hard coded in
s32p itemDescriptions[numItems + 0x18] @ header.ptrs.itemDesc 
    [[name("Item Descriptions"),
      comment("Actual item descriptions start at array index 24")
    ]];
