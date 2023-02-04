#pragma once
s32p itemNames[(eoStringItem-soStringItem)/4] @ soStringItem;

s32p itemSources[while(std::mem::read_unsigned($, 4)!=0x00000000)] @ soStrItemSource;
s32p itemDescriptions[while(std::mem::read_unsigned($, 4)!=0x00000000)] @ (soStrItemDesc + 0x60);
