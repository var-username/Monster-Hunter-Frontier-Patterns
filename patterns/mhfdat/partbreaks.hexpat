#pragma once

#include <misc/MonsterIDs.hexpat>

// Part Break Pointer Array starts at 0x016ABA40
// u32 pointer to Park Break Array

// Part Break Array starts at 0x16AD478
// Structure is 
// {
// u16 Drop Change (01 00 = 1%)
// u16 Item ID
// u16 Number of items per drop
// }
// Repeat until FF FF terminator
// Pad with 0's until address is multiple of 4

using PartBreakDrop;
fn partBreakDropFmt (PartBreakDrop n) {
    return std::format("{:02}% {}x {}", n.percentage, n.number, 
        getItemName(n.itemID));
};

// Part break drop
struct PartBreakDrop {
    u16 percentage;
    u16 itemID [[format("getItemName")]];
    u16 number;
} [[format("partBreakDropFmt"), single_color]];

// List of drops from break 
struct PartBreakDropTable {
    PartBreakDrop breakDrops [while(std::mem::read_signed($,2)!=-1)] 
        [[inline]];
} [[inline]];


using CarveDrop;
fn carveDropFmt (CarveDrop n) {
    return std::format("{:02}% {}", n.percentage, getItemName(n.itemID));
};

// Carve drop
struct CarveDrop {
    u16 percentage;
    u16 itemID[[format("getItemName")]];
} [[format("carveDropFmt")]];

// Carve drop table
struct CarveDropTable {
    CarveDrop carves [while(std::mem::read_signed($,2)!=-1)] [[inline]];
} [[inline]];

// [mhfo-hd.dll + 0xaf4e98]
// Pointer to part break drop table
ptVar<PartBreakDropTable> ptPartBreakDTs[numPartBreakDTs] 
    @ header.ptrs.partBreakItemDrops;

// [mhfo-hd.dll + 0xaf4e70]
// Pointer to carve drop table
ptVar<CarveDropTable> ptCarveDTs[numCarveDTs] 
    @ header.ptrs.carveItemDrops;

struct HC_GR_Carve {
    MonsterID monId;
    padding[1];
    u16 item [[format("getItemName")]];
};

HC_GR_Carve GRHCCarves[while(std::mem::read_signed($,2)!=-1)] 
    @ header.ptrs.carveGRHCItemDrops;

struct HC_Carve {
    MonsterID monId;
    padding[1];
    u16 item1 [[format("getItemName")]];
    u16 item2 [[format("getItemName")]];
    u16 item3 [[format("getItemName")]];
    u16 item4 [[format("getItemName")]];
};

HC_Carve HCCarves[while(std::mem::read_signed($,2)!=-1)] 
    @ header.ptrs.carveHCItemDrops;
