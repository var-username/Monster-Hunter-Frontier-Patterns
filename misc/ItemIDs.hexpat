#pragma once

#include <std/io.pat>

using ItemID;
/// Format ItemID to make it easier to look up on Ferias
fn fmtItemID(ItemID n) {
    return std::format("{:04X}", n.id);
};

struct ItemID {
    u16 id;
} [[sealed, format("fmtItemID")]];
