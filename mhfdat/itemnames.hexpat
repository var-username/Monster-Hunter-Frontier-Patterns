#pragma once
s32p itemNames[(eoStringItem-soStringItem)/4] @ soStringItem;

s32p itemSources[while(std::mem::read_unsigned($, 4))] @ soStrItemSource;
s32p itemDescriptions[while(std::mem::read_unsigned($, 4))] @ (soStrItemDesc + 0x60);
