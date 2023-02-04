#pragma once

using ptr = u32 
[[hidden]]
;

ptr soRegularWUpgrades = 0xB43CC0;  ptr eoRegularWUpgrades = 0xB7B63F;
ptr soG50WUpgrades      @ 0x5FC;    ptr eoG50WUpgrades = 0x11D0B7F;
ptr soRegAUpgrades = 0x16EED60;     ptr eoRegAUpgrades = 0x1844A3F;

ptr soForging5          @ 0x34;
ptr soForging4          @ 0x38;
ptr soWUpgradePath      @ 0x3C;

// Pointers to start and end of armor data areas
ptr soHead              @ 0x50;     ptr eoHead              @ 0xE8; 
ptr soBody              @ 0x54;     ptr eoBody              @ 0x50; 
ptr soArm               @ 0x58;     ptr eoArm               @ 0x54; 
ptr soWaist             @ 0x5C;     ptr eoWaist             @ 0x58; 
ptr soLeg               @ 0x60;     ptr eoLeg               @ 0x5C;

// Pointers to start and end of armor string areas
ptr soStringHead        @ 0x64;     ptr eoStringHead        @ 0x170;
ptr soStringBody        @ 0x68;     ptr eoStringBody        @ 0x64;
ptr soStringArm         @ 0x6C;     ptr eoStringArm         @ 0x68;
ptr soStringWaist       @ 0x70;     ptr eoStringWaist       @ 0x6C;
ptr soStringLeg         @ 0x74;     ptr eoStringLeg         @ 0x70;

// Pointers to start and end of item data areas
ptr soItemData          @ 0xFC;     ptr eoItemData          @ 0xA70;

// Pointers to start and end of item string areas
ptr soStringItem        @ 0x100;    ptr eoStringItem        @ 0xFC;
ptr soStrItemSource     @ 0xA40;
ptr soStrItemDesc       @ 0x12C;

// Pointers to start and end of weapon data areas
ptr soMelee             @ 0x7C;     ptr eoMelee             @ 0x90;
ptr soRanged            @ 0x80;     ptr eoRanged            @ 0x178;

// Pointers to start and end of weapon string areas
ptr soStringMelee       @ 0x88;     ptr eoStringMelee       @ 0x174; 
ptr soStringRanged      @ 0x84;     ptr eoStringRanged      @ 0x88;

// Pointers to start and end of carve and break drop data
ptr soPartBreaks        @ 0x124;    ptr eoPartBreaks = 0x16AD49C;
ptr soCarves            @ 0x120;    ptr eoCarves     = 0x16B8D84;
