#pragma once

#include <misc/s32p.pat>

struct SharpnessPattern {
    u8 Shaprness_Quantity[[
      name("Shaprness Quantity")
      ]];
    u8 Shaprness_Quantity[[
      name("Shaprness Quantity")
      ]];;
    u8 Shaprness_Quantity[[
      name("Shaprness Quantity")
      ]];;
    u8 Shaprness_Quantity[[
      name("Shaprness Quantity")
      ]];;
    u8 Shaprness_Quantity[[
      name("Shaprness Quantity")
      ]];;
    u8 Shaprness_Quantity[[
      name("Shaprness Quantity")
      ]];;
    u16 unk00;
    u16 unk01;
    u16 unk03;
    u16 unk04;
    u16 unk05;
};

SharpnessPattern Shaprness[NumSharpness] @ header.ptrs.SharpnessIds;