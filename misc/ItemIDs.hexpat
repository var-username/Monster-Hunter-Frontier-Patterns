#pragma once

using ItemID;
/// Format ItemID to make it easier to look up on Ferias
fn fmtItemID(ItemID n) {
    return std::format("{:04X}", n);
};
using ItemID = u16 [[format("fmtItemID")]];
