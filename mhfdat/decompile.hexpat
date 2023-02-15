#pragma once

// [mhfo-hd.dll + 0xaf4690]

u32 header1 @ 0x0 [[comment("Must equal 1A 66 68 6D")]];
u32 header2 @ 0x4 [[comment("Must equal 00 00 00 59")]];
u32 header3 @ 0xC [[comment("Must equal 00 00 0B C8")]];

// Variables are named after their file and offset
// as reported by Ghidra's "Byte Source Offset"

// Yes this is very monotonous copying addresses by hand, but I want to
// preserve the location of this information before I condence it into a
// an array for space efficiency

ptr hd_dll_af469d @ 0x910; 
ptr hd_dll_af46a3 @ 0x10; 
//mhfdat.bin + 0x3 = 00

ptr hd_dll_af46c9 @ 0x988; 
ptr hd_dll_af46e9 @ 0xAF0; 
ptr hd_dll_af4709 @ 0xB04; 
ptr hd_dll_af4729 @ 0xB18; 
ptr hd_dll_af4749 @ 0xB30; 

// TODO: Figure out what [mhfo-hd.dll + 0xaf475a] is doing

ptr hd_dll_af4772 @ 0xB34; 

// TODO: Same deal with [mhfo-hd.dll + 0xaf4783]

ptr hd_dll_af4794 @ 0xB5C; 

ptr hd_dll_af47af @ 0xE8; 
ptr hd_dll_af47b5 @ 0xE4; 
ptr hd_dll_af47c9 @ 0x4C; 
ptr hd_dll_af47cc @ 0x34; 
ptr hd_dll_af47cf @ 0x38; 
ptr hd_dll_af47d2 @ 0x3c; 
ptr hd_dll_af47d5 @ 0x40; 
ptr hd_dll_af47d8 @ 0x44; 
ptr hd_dll_af47db @ 0xB48; 
ptr hd_dll_af47e1 @ 0x48; 

// TODO: Another loop at [mhfo-hd.dll + 0xaf47f6]

ptr hd_dll_af480f @ 0x50;
ptr hd_dll_af482e @ 0x64;
ptr hd_dll_af4852 @ 0x54;
ptr hd_dll_af4871 @ 0x68;
ptr hd_dll_af4893 @ 0x58;
ptr hd_dll_af48b2 @ 0x6C;
ptr hd_dll_af48d4 @ 0x5C;
ptr hd_dll_af48fd @ 0x70;
ptr hd_dll_af4922 @ 0x60;
ptr hd_dll_af4941 @ 0x74;
ptr hd_dll_af4963 @ 0x78;
ptr hd_dll_af49a6 @ 0x7C;
ptr hd_dll_af49cd @ 0x88;
ptr hd_dll_af49d3 @ 0x8c;
ptr hd_dll_af4a34 @ 0x80;
ptr hd_dll_af4a5d @ 0x84;
ptr hd_dll_af4a63 @ 0x90;
ptr hd_dll_af4ac4 @ 0x94;
ptr hd_dll_af4b16 @ 0x98;
ptr hd_dll_af4b80 @ 0x9C;
ptr hd_dll_af4bc6 @ 0xC4;
ptr hd_dll_af4bf5 @ 0xC8;
ptr hd_dll_af4bfb @ 0xCC;

// TODO: Something funky at [mhfo-hd.dll + 0xaf4c01]

ptr hd_dll_af4cc5 @ 0xD8;
ptr hd_dll_af4cd1 @ 0xD0;
ptr hd_dll_af4cd7 @ 0xD4;
ptr hd_dll_af4d08 @ 0xE0;
ptr hd_dll_af4d14 @ 0xDC;
ptr hd_dll_af4d2d @ 0xEC;
ptr hd_dll_af4d58 @ 0xF0;
ptr hd_dll_af4d7b @ 0xF4;
ptr hd_dll_af4da3 @ 0x100;
ptr hd_dll_af4da9 @ 0x234;
ptr hd_dll_af4daf @ 0xF8;
ptr hd_dll_af4db5 @ 0xFC;
ptr hd_dll_af4de0 @ 0x110;
ptr hd_dll_af4dec @ 0x104;
ptr hd_dll_af4df2 @ 0x108;
ptr hd_dll_af4df8 @ 0x10C;
ptr hd_dll_af4e0f @ 0x118;
ptr hd_dll_af4e1b @ 0x114;
ptr hd_dll_af4e3a @ 0x11C;
ptr hd_dll_af4e5a @ 0x120;
ptr hd_dll_af4e82 @ 0x124;
ptr hd_dll_af4eb8 @ 0x12C;
ptr hd_dll_af4ec1 @ 0x128;
ptr hd_dll_af4ef0 @ 0xA40;
ptr hd_dll_af4f23 @ 0x130;

// Interesting malloc at [mhfo-hd.dll + 0xaf4f29]

ptr hd_dll_af4fc1 @ 0x134;
ptr hd_dll_af4ff0 @ 0x138;
ptr hd_dll_af5038 @ 0xA0;
ptr hd_dll_af503e @ 0xA4;
ptr hd_dll_af5044 @ 0xA8;
ptr hd_dll_af504a @ 0xAC;
ptr hd_dll_af5073 @ 0xB0;
ptr hd_dll_af5079 @ 0xB4;
ptr hd_dll_af507f @ 0xB8;
ptr hd_dll_af5085 @ 0xBC;
ptr hd_dll_af508b @ 0xC0;

// Really funky code at [mhfo-hd.dll + 0xaf5091]

ptr hd_dll_af5145 @ 0x13C;
ptr hd_dll_af5177 @ 0x144;
ptr hd_dll_af517d @ 0x140;
ptr hd_dll_af51b6 @ 0x148;
ptr hd_dll_af51e0 @ 0x150;
ptr hd_dll_af51ec @ 0x14C;
ptr hd_dll_af5214 @ 0x158;
ptr hd_dll_af521a @ 0x154;
ptr hd_dll_af5261 @ 0x15C;
ptr hd_dll_af5298 @ 0x160;
ptr hd_dll_af52ba @ 0x168;
ptr hd_dll_af52c0 @ 0x164;
ptr hd_dll_af52f3 @ 0x16C;
ptr hd_dll_af530c @ 0x8FC;
ptr hd_dll_af5397 @ 0x180;
ptr hd_dll_af53c0 @ 0x184;
ptr hd_dll_af53f0 @ 0x188;
ptr hd_dll_af5421 @ 0x18C;
ptr hd_dll_af5427 @ 0x190;
ptr hd_dll_af542d @ 0x194;
ptr hd_dll_af5455 @ 0x198;
ptr hd_dll_af5491 @ 0x19C;
ptr hd_dll_af54d3 @ 0x1A0;
ptr hd_dll_af5542 @ 0x1A4;
ptr hd_dll_af5570 @ 0x1A8;
ptr hd_dll_af55a0 @ 0x1AC;
ptr hd_dll_af55d0 @ 0x1B0;
ptr hd_dll_af5611 @ 0x1B4;
ptr hd_dll_af5640 @ 0x1B8;
ptr hd_dll_af5646 @ 0x1BC;
ptr hd_dll_af5661 @ 0x1C0;
ptr hd_dll_af567c @ 0x1C4;
ptr hd_dll_af5682 @ 0x1EC;
ptr hd_dll_af5693 @ 0x1F0;
ptr hd_dll_af56a4 @ 0x1F4;
ptr hd_dll_af56b5 @ 0x1F8;
ptr hd_dll_af56c6 @ 0x1FC;
ptr hd_dll_af56cc @ 0x1D8;
ptr hd_dll_af56d2 @ 0x1DC;
ptr hd_dll_af56d8 @ 0x1E0;
ptr hd_dll_af56de @ 0x1E4;
ptr hd_dll_af56e4 @ 0x1E8;
ptr hd_dll_af56ea @ 0x1D4;

// Funky loop at [mhfo-hd.dll + 0xaf56f0]

ptr hd_dll_af5772 @ 0x204;
ptr hd_dll_af5778 @ 0x208;
ptr hd_dll_af577e @ 0x20C;
ptr hd_dll_af5784 @ 0x210;
ptr hd_dll_af578a @ 0x214;
ptr hd_dll_af57b9 @ 0x218;
ptr hd_dll_af57bf @ 0x200;
ptr hd_dll_af57f2 @ 0x1C8;
ptr hd_dll_af583d @ 0x1CC;
ptr hd_dll_af5843 @ 0x1D0;
ptr hd_dll_af5849 @ 0x21C;
ptr hd_dll_af584f @ 0x220;
ptr hd_dll_af5855 @ 0x224;
ptr hd_dll_af584b @ 0x228;
ptr hd_dll_af5861 @ 0x22C;
ptr hd_dll_af5867 @ 0x230;
ptr hd_dll_af586d @ 0x238;
ptr hd_dll_af588d @ 0x23C;
ptr hd_dll_af58aa @ 0x248;
ptr hd_dll_af58ca @ 0x240;
ptr hd_dll_af58ea @ 0x244;
ptr hd_dll_af590a @ 0x250;
ptr hd_dll_af592a @ 0x24C;
ptr hd_dll_af594a @ 0x254;
ptr hd_dll_af596a @ 0x258;
ptr hd_dll_af5970 @ 0x25C;
ptr hd_dll_af5976 @ 0x260;
ptr hd_dll_af59a1 @ 0x264;
ptr hd_dll_af59a7 @ 0x268;
ptr hd_dll_af59ad @ 0x26C;
ptr hd_dll_af59b3 @ 0xAEC;
ptr hd_dll_af59b9 @ 0xB84;
ptr hd_dll_af59bf @ 0xBAC;
ptr hd_dll_af59c5 @ 0x270;
ptr hd_dll_af59cb @ 0x274;
ptr hd_dll_af5a21 @ 0x278;
ptr hd_dll_af5a27 @ 0x27C;
ptr hd_dll_af5a2d @ 0x280;
ptr hd_dll_af5a33 @ 0x284;
ptr hd_dll_af5a39 @ 0x288;
ptr hd_dll_af5a3f @ 0x28C;
ptr hd_dll_af5a45 @ 0x290;
ptr hd_dll_af5a4b @ 0x294;
ptr hd_dll_af5a51 @ 0x298;
ptr hd_dll_af5a57 @ 0x29C;
ptr hd_dll_af5a5d @ 0x2A0;
ptr hd_dll_af5a63 @ 0x2B0;
ptr hd_dll_af5a69 @ 0x2B4;
ptr hd_dll_af5a6f @ 0x2B8;
ptr hd_dll_af5a75 @ 0x2BC;
ptr hd_dll_af5a7b @ 0x2CC;
ptr hd_dll_af5a81 @ 0x2D0;
ptr hd_dll_af5a87 @ 0x2D4;
ptr hd_dll_af5a8d @ 0x2D8;
ptr hd_dll_af5a93 @ 0x2DC;
ptr hd_dll_af5a99 @ 0x2E0;
ptr hd_dll_af5a9f @ 0x2e8;
ptr hd_dll_af5aa5 @ 0x2EC;
ptr hd_dll_af5aab @ 0x2F0;
ptr hd_dll_af5ab1 @ 0x2A8;

ptr hd_dll_af5ae0 @ 0x2A4;
ptr hd_dll_af5ae6 @ 0x2AC;

ptr hd_dll_af5b1b @ 0x2C0;
ptr hd_dll_af5b21 @ 0x2C4;
ptr hd_dll_af5b27 @ 0x2C8;

ptr hd_dll_af5b6c @ 0x2E4;
ptr hd_dll_af5b9d @ 0x318;

ptr hd_dll_af5bd0 @ 0x324;
ptr hd_dll_af5bd6 @ 0x328;
ptr hd_dll_af5bdc @ 0x32C;
ptr hd_dll_af5be2 @ 0x2F4;
ptr hd_dll_af5be8 @ 0x2F8;
ptr hd_dll_af5bee @ 0x2FC;
ptr hd_dll_af5bf4 @ 0x300;
ptr hd_dll_af5bfa @ 0x304;
ptr hd_dll_af5c00 @ 0x308;
ptr hd_dll_af5c06 @ 0x30C;
ptr hd_dll_af5c0c @ 0x310;
ptr hd_dll_af5c12 @ 0x314;
ptr hd_dll_af5c18 @ 0x31C;
ptr hd_dll_af5c1e @ 0x320;
ptr hd_dll_af5c24 @ 0x330;
ptr hd_dll_af5c2a @ 0x334;
ptr hd_dll_af5c30 @ 0x338;
ptr hd_dll_af5c36 @ 0x33C;
ptr hd_dll_af5c3c @ 0x340;
ptr hd_dll_af5c42 @ 0x344;
ptr hd_dll_af5c48 @ 0x348;
ptr hd_dll_af5c4e @ 0x34C;
ptr hd_dll_af5c54 @ 0x350;
ptr hd_dll_af5c5a @ 0x354;
ptr hd_dll_af5c60 @ 0x358;
ptr hd_dll_af5c66 @ 0x718;
ptr hd_dll_af5c6c @ 0x908;
ptr hd_dll_af5c72 @ 0x35C;
ptr hd_dll_af5c78 @ 0x360;
ptr hd_dll_af5c7e @ 0x364;
ptr hd_dll_af5c84 @ 0x368;
ptr hd_dll_af5c8a @ 0x36C;
ptr hd_dll_af5c90 @ 0x370;
ptr hd_dll_af5c96 @ 0x374;
ptr hd_dll_af5c9c @ 0x378;
ptr hd_dll_af5ca2 @ 0x37C;
ptr hd_dll_af5ca8 @ 0x380;
ptr hd_dll_af5cae @ 0x384;
ptr hd_dll_af5cb4 @ 0x388;
ptr hd_dll_af5cba @ 0x38C;
ptr hd_dll_af5cc0 @ 0x3a0;
ptr hd_dll_af5cc6 @ 0x3a4;
ptr hd_dll_af5ccc @ 0x390;
ptr hd_dll_af5cd2 @ 0x394;
ptr hd_dll_af5cd8 @ 0x398;
ptr hd_dll_af5cde @ 0x39C;
ptr hd_dll_af5ce4 @ 0x4FC;
ptr hd_dll_af5cea @ 0x3A8;
ptr hd_dll_af5cf0 @ 0x3AC;
ptr hd_dll_af5cf6 @ 0x3B0;
ptr hd_dll_af5cfc @ 0x3B4;
ptr hd_dll_af5d02 @ 0x3B8;
ptr hd_dll_af5d08 @ 0x3BC;
ptr hd_dll_af5d0e @ 0x3C0;
ptr hd_dll_af5d14 @ 0x3C4;
ptr hd_dll_af5d1a @ 0x3C8;
ptr hd_dll_af5d20 @ 0x3CC;
ptr hd_dll_af5d26 @ 0x3D0;
ptr hd_dll_af5d2c @ 0x3D4;
ptr hd_dll_af5d32 @ 0x3D8;
