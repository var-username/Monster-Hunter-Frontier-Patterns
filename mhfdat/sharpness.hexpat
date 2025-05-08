#pragma once

import std.mem;
#include <misc/s32p.pat>

struct SharpnessCell {
    u16 Sharpness_Quantity [8];
} [[static]];

struct SharpnessTable {
    // This array length likely isn't accurate, 
    // but it seems to line up fine enough
    SharpnessCell cell[0x80] [[inline]];
} [[inline]];

ptVar<SharpnessTable> ptSharpness[0xE] @ header.ptrs.SharpnessIds;
