#pragma once
ptr hd_dll_af469d @ 0x910;
ptr hd_dll_af46a3 @ 0x10;
ptr hd_dll_af46c9 @ 0x988; 
ptr hd_dll_af46e9 @ 0xAF0; 
ptr hd_dll_af4709 @ 0xB04; 
ptr hd_dll_af4729 @ 0xB18; 
ptr hd_dll_af4749 @ 0xB30; 

// DONE: [mhfo-hd.dll + 0xaf475a] seems to be accessing every short in
// and array of a defined size, but it doesn't do anything with them

ptr hd_dll_af4772 @ 0xB34; 

// DONE: Same deal with [mhfo-hd.dll + 0xaf4783] as above

ptr hd_dll_af4794 @ 0xB5C; 

ptr hd_dll_af47af @ 0xE8; 
ptr hd_dll_af47b5 @ 0xE4; 
ptr hd_dll_af47c9 @ 0x4C; 
ptr hd_dll_af47cc @ 0x34
[[name("Pointer to Other Weapon Forging Data")]]; 
ptr hd_dll_af47cf @ 0x38
[[name("Pointer to Armor Forging Data")]]; 
ptr hd_dll_af47d2 @ 0x3c
[[name("Pointer to Weapon Upgrade Path Data")]]; 
ptr hd_dll_af47d5 @ 0x40; 
ptr hd_dll_af47d8 @ 0x44; 
ptr hd_dll_af47db @ 0xB48; 
ptr hd_dll_af47e1 @ 0x48; 

// DONE: Loop at [mhfo-hd.dll + 0xaf47f6] analyzed. See hd_dll_af47ed

ptr hd_dll_af480f @ 0x50
[[name("Pointer to Head Armor Data")]];
ptr hd_dll_af482e @ 0x64
[[name("Pointer to Head Armor Name Pointers")]];
ptr hd_dll_af4852 @ 0x54
[[name("Pointer to Body Armor Data")]];
ptr hd_dll_af4871 @ 0x68
[[name("Pointer to Body Armor Name Pointers")]];
ptr hd_dll_af4893 @ 0x58
[[name("Pointer to Arm Armor Data")]];
ptr hd_dll_af48b2 @ 0x6C
[[name("Pointer to Arm Armor Name Pointers")]];
ptr hd_dll_af48d4 @ 0x5C
[[name("Pointer to Waist Armor Data")]];
ptr hd_dll_af48fd @ 0x70
[[name("Pointer to Waist Armor Name Pointers")]];
ptr hd_dll_af4922 @ 0x60
[[name("Pointer to Leg Armor Data")]];
ptr hd_dll_af4941 @ 0x74
[[name("Pointer to Leg Armor Name Pointers")]];

ptr hd_dll_af4963 @ 0x78
[[name("Pointer to Equipment Description Pointers")]];

ptr hd_dll_af49a6 @ 0x7C
[[name("Pointer to Melee Weapon Data")]];
ptr hd_dll_af49cd @ 0x88
[[name("Pointer to Melee Weapon Name Pointers")]];
ptr hd_dll_af49d3 @ 0x8c
[[name("Pointer to Melee Weapon Description Pointers")]];

ptr hd_dll_af4a34 @ 0x80
[[name("Pointer to Ranged Weapon Data")]];
ptr hd_dll_af4a5d @ 0x84
[[name("Pointer to Ranged Weapon Name Pointers")]];
ptr hd_dll_af4a63 @ 0x90
[[name("Pointer to Ranged Weapon Description Pointers")]];

ptr hd_dll_af4ac4 @ 0x94;
ptr hd_dll_af4b16 @ 0x98;
ptr hd_dll_af4b80 @ 0x9C;
ptr hd_dll_af4bc6 @ 0xC4;
ptr hd_dll_af4bf5 @ 0xC8;
ptr hd_dll_af4bfb @ 0xCC;

// DONE: Loop at [mhfo-hd.dll + 0xaf4c01] analyzed. See hd_dll_af4c11

ptr hd_dll_af4cc5 @ 0xD8;
ptr hd_dll_af4cd1 @ 0xD0;
ptr hd_dll_af4cd7 @ 0xD4;
ptr hd_dll_af4d08 @ 0xE0;
ptr hd_dll_af4d14 @ 0xDC;
ptr hd_dll_af4d2d @ 0xEC;
ptr hd_dll_af4d58 @ 0xF0;
ptr hd_dll_af4d7b @ 0xF4;
ptr hd_dll_af4da3 @ 0x100
[[name("Pointer to Item Name Pointers")]];
ptr hd_dll_af4da9 @ 0x234;
ptr hd_dll_af4daf @ 0xF8;
ptr hd_dll_af4db5 @ 0xFC
[[name("Pointer to Item Data")]];
ptr hd_dll_af4de0 @ 0x110;
ptr hd_dll_af4dec @ 0x104;
ptr hd_dll_af4df2 @ 0x108;
ptr hd_dll_af4df8 @ 0x10C;
ptr hd_dll_af4e0f @ 0x118;
ptr hd_dll_af4e1b @ 0x114;
ptr hd_dll_af4e3a @ 0x11C;
ptr hd_dll_af4e5a @ 0x120
[[name("Pointer to Carve Drop Data")]];
ptr hd_dll_af4e82 @ 0x124
[[name("Pointer to Part Break Data")]];
ptr hd_dll_af4eb8 @ 0x12C
[[name("Pointer to Item Description Pointers")]];
ptr hd_dll_af4ec1 @ 0x128;
ptr hd_dll_af4ef0 @ 0xA40
[[name("Pointer to Item Source String Pointers")]];
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

// TODO: Really funky code at [mhfo-hd.dll + 0xaf5091]

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
ptr hd_dll_af5bdc @ 0x32C
[[name("Pointer to HC Carve Data")]];
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

ptr hd_dll_af5d60 @ 0x3DC;
ptr hd_dll_af5d90 @ 0x3E0;
ptr hd_dll_af5dc0 @ 0x3E4;
ptr hd_dll_af5df0 @ 0x3E8;
ptr hd_dll_af5e20 @ 0x3EC;
ptr hd_dll_af5e50 @ 0x3F0;
ptr hd_dll_af5e80 @ 0x3F4;
ptr hd_dll_af5eb0 @ 0x3F8;
ptr hd_dll_af5ee0 @ 0x3FC;
ptr hd_dll_af5f10 @ 0x400;
ptr hd_dll_af5f40 @ 0x404;
ptr hd_dll_af5f46 @ 0x408;
ptr hd_dll_af5f71 @ 0x40C;
ptr hd_dll_af5f77 @ 0x410;
ptr hd_dll_af5f7d @ 0x414;
ptr hd_dll_af5f83 @ 0x418;
ptr hd_dll_af5f89 @ 0x41C;
ptr hd_dll_af5f8f @ 0x420;
ptr hd_dll_af5f95 @ 0x424;
ptr hd_dll_af5f9b @ 0x28;
ptr hd_dll_af5fa1 @ 0x42C;
ptr hd_dll_af5fa7 @ 0x430;
ptr hd_dll_af5fad @ 0x434;
ptr hd_dll_af5fb3 @ 0x438;
ptr hd_dll_af5fb9 @ 0x43C;
ptr hd_dll_af5fbf @ 0x440;

ptr hd_dll_af5ff0 @ 0x444;
ptr hd_dll_af6020 @ 0x448;
ptr hd_dll_af6050 @ 0x44C;
ptr hd_dll_af6056 @ 0x450;
ptr hd_dll_af605c @ 0x454;
ptr hd_dll_af6062 @ 0x458;

ptr hd_dll_af6090 @ 0x45C;
ptr hd_dll_af60c0 @ 0x460;
ptr hd_dll_af60f0 @ 0x464;
ptr hd_dll_af6120 @ 0x468;
ptr hd_dll_af6150 @ 0x46C;
ptr hd_dll_af6180 @ 0x470;
ptr hd_dll_af61b0 @ 0x474;

ptr hd_dll_af61e0 @ 0x478;
ptr hd_dll_af61e6 @ 0x47C;
ptr hd_dll_af61ec @ 0x480;
ptr hd_dll_af61f2 @ 0x484;
ptr hd_dll_af61f8 @ 0x488;
ptr hd_dll_af61fe @ 0x48C;
ptr hd_dll_af6204 @ 0x490;
ptr hd_dll_af620a @ 0x494;

ptr hd_dll_af623d @ 0x498;
ptr hd_dll_af6243 @ 0x49C;
ptr hd_dll_af6249 @ 0x4A0;

ptr hd_dll_af6280 @ 0x4A4;
ptr hd_dll_af6286 @ 0x4A8;
ptr hd_dll_af628C @ 0x4AC;
ptr hd_dll_af6292 @ 0x4B0;
ptr hd_dll_af6298 @ 0x4B4;
ptr hd_dll_af629e @ 0x4CC;
ptr hd_dll_af62a4 @ 0x4D0;
ptr hd_dll_af62aa @ 0x4D4;
ptr hd_dll_af62b0 @ 0x4D8;
ptr hd_dll_af62b6 @ 0x4DC;
ptr hd_dll_af62bc @ 0x4E0;
ptr hd_dll_af62c2 @ 0x4E4;
ptr hd_dll_af62c8 @ 0x4BC;
ptr hd_dll_af62ce @ 0x4C0;
ptr hd_dll_af62d4 @ 0x4B8;
ptr hd_dll_af62da @ 0x4C4;
ptr hd_dll_af62e0 @ 0x4C8;

ptr hd_dll_af6304 @ 0x4E8;
ptr hd_dll_af630a @ 0x4EC;
ptr hd_dll_af6310 @ 0x4F0;
ptr hd_dll_af6316 @ 0x4F8;
ptr hd_dll_af631c @ 0x500;
ptr hd_dll_af6322 @ 0x504;
ptr hd_dll_af6328 @ 0x508;
ptr hd_dll_af632e @ 0x4F4;
ptr hd_dll_af6334 @ 0x50C;

// TODO: Weird loop at [mhfo-hd.dll + 0xaf633a]

ptr hd_dll_af6434 @ 0x510;
ptr hd_dll_af643a @ 0x514;
ptr hd_dll_af6440 @ 0x518;

ptr hd_dll_af6477 @ 0x51C;
ptr hd_dll_af647d @ 0x520;

// TODO: Weird loop at [mhfo-hd.dll + 0xaf648b]

ptr hd_dll_af6588 @ 0x524;
ptr hd_dll_af658e @ 0x528;
ptr hd_dll_af659a @ 0x52C;

ptr hd_dll_af65ea @ 0x530;
ptr hd_dll_af65f0 @ 0x534;
ptr hd_dll_af65f6 @ 0x538;
ptr hd_dll_af65fc @ 0x53C;
ptr hd_dll_af6602 @ 0x540;
ptr hd_dll_af6608 @ 0x544;
ptr hd_dll_af660e @ 0x548;
ptr hd_dll_af6614 @ 0x54C;
ptr hd_dll_af661a @ 0x550;

ptr hd_dll_af6640 @ 0x554;
ptr hd_dll_af6646 @ 0x558;
ptr hd_dll_af664c @ 0x55C;
ptr hd_dll_af6652 @ 0x560;
ptr hd_dll_af6658 @ 0x564;
ptr hd_dll_af665e @ 0x568;
ptr hd_dll_af6664 @ 0x56C;
ptr hd_dll_af666a @ 0x570;
ptr hd_dll_af6670 @ 0x574;
ptr hd_dll_af6676 @ 0x578;
ptr hd_dll_af667c @ 0x57C;
ptr hd_dll_af6682 @ 0x580;
ptr hd_dll_af6688 @ 0x584;
ptr hd_dll_af668e @ 0x588;
ptr hd_dll_af6694 @ 0x58C;
ptr hd_dll_af669a @ 0x590;
ptr hd_dll_af66a0 @ 0x594;
ptr hd_dll_af66a6 @ 0x598;
ptr hd_dll_af66ac @ 0x59C;
ptr hd_dll_af66b2 @ 0x5A0;
ptr hd_dll_af66b8 @ 0x5A4;
ptr hd_dll_af66be @ 0x5A8;
ptr hd_dll_af66c4 @ 0x5AC;
ptr hd_dll_af66ca @ 0x5B0;
ptr hd_dll_af66d0 @ 0x5B4;
ptr hd_dll_af66d6 @ 0x5BC;
ptr hd_dll_af66dc @ 0x5C0;

// TODO: Weird loop at [mhfo-hd.dll + 0xaf66e2]

ptr hd_dll_af67da @ 0x5C4;
ptr hd_dll_af683c @ 0x5C8;
ptr hd_dll_af689c @ 0x5CC;
ptr hd_dll_af68fc @ 0x5D0;
ptr hd_dll_af695c @ 0x5D4;
ptr hd_dll_af69bc @ 0x5D8;
ptr hd_dll_af6a1c @ 0x5DC;
ptr hd_dll_af6a7c @ 0x5E0;
ptr hd_dll_af6adc @ 0x5E4;
ptr hd_dll_af6b3c @ 0x5E8;
ptr hd_dll_af6b9c @ 0x5EC;

ptr hd_dll_af6bfc @ 0x5f0
[[name("Pointer to G-Rank Weapon Forging Data")]];
ptr hd_dll_af6c02 @ 0x5f4
[[name("Pointer to G-Rank Armor Forging Data")]];
ptr hd_dll_af6c08 @ 0x5f8;
ptr hd_dll_af6c0e @ 0x5fc;
ptr hd_dll_af6c14 @ 0x600;
ptr hd_dll_af6c1a @ 0x604;
ptr hd_dll_af6c20 @ 0x608;
ptr hd_dll_af6c26 @ 0x60c;
ptr hd_dll_af6c2c @ 0x610;
ptr hd_dll_af6c32 @ 0x614;

ptr hd_dll_af6c98 @ 0x618;
ptr hd_dll_af6d00 @ 0x61c;

ptr hd_dll_af6d60 @ 0x620;
ptr hd_dll_af6d66 @ 0x624;
ptr hd_dll_af6d6c @ 0x628;

ptr hd_dll_af6da0 @ 0x62c;
ptr hd_dll_af6da6 @ 0x630;
ptr hd_dll_af6dac @ 0x634;
ptr hd_dll_af6db2 @ 0x638;
ptr hd_dll_af6db8 @ 0x63c;
ptr hd_dll_af6dbe @ 0x640;

// TODO: Odd loop at [mhfo-hd.dll + 0xaf6dc4]

ptr hd_dll_af6e7c @ 0x644;
ptr hd_dll_af6e82 @ 0x654;

ptr hd_dll_af6eab @ 0x648;
ptr hd_dll_af6eb1 @ 0x64c;
ptr hd_dll_af6eb7 @ 0x650;

// TODO: Odd loop at [mhfo-hd.dll + 0xaf6ebd]

ptr hd_dll_af6f6f @ 0x658;
ptr hd_dll_af6f75 @ 0x65c;
ptr hd_dll_af6f7b @ 0x660;
ptr hd_dll_af6f81 @ 0x664;
ptr hd_dll_af6fa8 @ 0x668;
ptr hd_dll_af6fca @ 0x66c;

ptr hd_dll_af6fec @ 0x670;
ptr hd_dll_af6ff2 @ 0x674;
ptr hd_dll_af6ff8 @ 0x678;
ptr hd_dll_af6ffe @ 0x67c;
ptr hd_dll_af7004 @ 0x680;
ptr hd_dll_af700a @ 0x684;
ptr hd_dll_af7010 @ 0x688;
ptr hd_dll_af7016 @ 0x68c;
ptr hd_dll_af701c @ 0x690;
ptr hd_dll_af7022 @ 0x694;
ptr hd_dll_af7028 @ 0x698;
ptr hd_dll_af702e @ 0x69c;
ptr hd_dll_af7034 @ 0x6a0;
ptr hd_dll_af703a @ 0x5b8;
ptr hd_dll_af7040 @ 0x6a8;
ptr hd_dll_af7046 @ 0x6ac;
ptr hd_dll_af704c @ 0x6c4;
ptr hd_dll_af7052 @ 0x6a4;
ptr hd_dll_af7058 @ 0x6b0;
ptr hd_dll_af705e @ 0x6b4;
ptr hd_dll_af7064 @ 0x6b8;
ptr hd_dll_af706a @ 0x6bc;
ptr hd_dll_af7070 @ 0x6c0;
ptr hd_dll_af7076 @ 0x6c8;
ptr hd_dll_af70bc @ 0x6cc;
ptr hd_dll_af710a @ 0x6d0;
ptr hd_dll_af715a @ 0x6d4;
ptr hd_dll_af71aa @ 0x6d8;
ptr hd_dll_af71fa @ 0x6dc;
ptr hd_dll_af724a @ 0x6e0;
ptr hd_dll_af729a @ 0x740;
ptr hd_dll_af72ea @ 0x744;
ptr hd_dll_af733a @ 0x748;

ptr hd_dll_af738a @ 0x6e4;
ptr hd_dll_af7390 @ 0x6e8;
ptr hd_dll_af7396 @ 0x6ec;
ptr hd_dll_af739c @ 0x6f0;

ptr hd_dll_af73d7 @ 0x6f4;
ptr hd_dll_af73dd @ 0x6f8;
ptr hd_dll_af73e3 @ 0x6fc;
ptr hd_dll_af73e9 @ 0x700;

ptr hd_dll_af740a @ 0x704;

// Lots of code

ptr hd_dll_af771d @ 0x714;
ptr hd_dll_af7723 @ 0x71c;
ptr hd_dll_af7729 @ 0x720;
ptr hd_dll_af772f @ 0x724;
ptr hd_dll_af7735 @ 0x728;
ptr hd_dll_af773b @ 0x72c;
ptr hd_dll_af7741 @ 0x730;
ptr hd_dll_af7747 @ 0x734;
ptr hd_dll_af774d @ 0x738
[[name("Pointer to G-Rank HC Carve Data")]];
ptr hd_dll_af7753 @ 0x73c;
ptr hd_dll_af7759 @ 0x74c;
ptr hd_dll_af775f @ 0x750;
ptr hd_dll_af7765 @ 0x754;
ptr hd_dll_af7771 @ 0x75c;
ptr hd_dll_af7777 @ 0x760;
ptr hd_dll_af777d @ 0x764;
ptr hd_dll_af7783 @ 0x768;
ptr hd_dll_af7789 @ 0x76c;
ptr hd_dll_af778f @ 0x770;
ptr hd_dll_af7795 @ 0x774;
ptr hd_dll_af779b @ 0x778;
ptr hd_dll_af77a1 @ 0x77c;
ptr hd_dll_af77a7 @ 0x780;

ptr hd_dll_af77ef @ 0x784;
ptr hd_dll_af77f5 @ 0x788;
ptr hd_dll_af77fb @ 0x78c;
ptr hd_dll_af7801 @ 0x790;
ptr hd_dll_af7807 @ 0x794;
ptr hd_dll_af780d @ 0x798;
ptr hd_dll_af7813 @ 0x79c;
ptr hd_dll_af7819 @ 0x7a0;
ptr hd_dll_af781f @ 0x7a4;
ptr hd_dll_af7825 @ 0x7a8;

ptr hd_dll_af786f @ 0x7b0;
ptr hd_dll_af7875 @ 0x7ac
[[name("Pointer to Special Weapon Forging Data")]];
ptr hd_dll_af787b @ 0x7b4;
ptr hd_dll_af7881 @ 0x7b8;
ptr hd_dll_af7887 @ 0x7bc;

ptr hd_dll_af78b2 @ 0x7c0;
ptr hd_dll_af78e0 @ 0x7dc;
ptr hd_dll_af7910 @ 0x7e8;
ptr hd_dll_af7940 @ 0x7ec;
ptr hd_dll_af7970 @ 0x7f0;
ptr hd_dll_af79a0 @ 0x7f4;
ptr hd_dll_af79d0 @ 0x7f8;
ptr hd_dll_af7a00 @ 0x7fc;

ptr hd_dll_af7a30 @ 0x7c4;
ptr hd_dll_af7a36 @ 0x7c8;
ptr hd_dll_af7a3c @ 0x7cc;
ptr hd_dll_af7a42 @ 0x7d0;
ptr hd_dll_af7a48 @ 0x7d4;

ptr hd_dll_af7a7c @ 0x7d8;
ptr hd_dll_af7a82 @ 0x7e0;
ptr hd_dll_af7a88 @ 0x7e4;
ptr hd_dll_af7a8e @ 0x800;
ptr hd_dll_af7a94 @ 0x804;
ptr hd_dll_af7a9a @ 0x808;
ptr hd_dll_af7aa0 @ 0x80c;
ptr hd_dll_af7aa6 @ 0x810;

ptr hd_dll_af7ae3 @ 0x814;
ptr hd_dll_af7ae9 @ 0x818;
ptr hd_dll_af7aef @ 0x81c;
ptr hd_dll_af7af5 @ 0x820;
ptr hd_dll_af7afb @ 0x824;
ptr hd_dll_af7b01 @ 0x828;
ptr hd_dll_af7b07 @ 0x830;
ptr hd_dll_af7b0d @ 0x834;
ptr hd_dll_af7b13 @ 0x838;
ptr hd_dll_af7b19 @ 0x83c;
ptr hd_dll_af7b1f @ 0x840;
ptr hd_dll_af7b25 @ 0x844;
ptr hd_dll_af7b2b @ 0x848;
ptr hd_dll_af7b31 @ 0x84c;
ptr hd_dll_af7b37 @ 0x850;
ptr hd_dll_af7b3d @ 0x854;
ptr hd_dll_af7b43 @ 0x858;
ptr hd_dll_af7b49 @ 0x85c;
ptr hd_dll_af7b4f @ 0x860;
ptr hd_dll_af7b55 @ 0x8b0;
ptr hd_dll_af7b5b @ 0x890;
ptr hd_dll_af7b61 @ 0x894;
ptr hd_dll_af7b67 @ 0x898;
ptr hd_dll_af7b6d @ 0xae8;
ptr hd_dll_af7b73 @ 0x864;
ptr hd_dll_af7b79 @ 0x868;
ptr hd_dll_af7b7f @ 0x86c;
ptr hd_dll_af7b85 @ 0x870;
ptr hd_dll_af7b8b @ 0x874;
ptr hd_dll_af7b91 @ 0x878;

ptr hd_dll_af7be3 @ 0x87c;
ptr hd_dll_af7c0a @ 0x880;
ptr hd_dll_af7c10 @ 0x884;
ptr hd_dll_af7c42 @ 0x888;
ptr hd_dll_af7c9c @ 0x88c;
ptr hd_dll_af7ca2 @ 0x89c;

ptr hd_dll_af7cc8 @ 0x8a0;
ptr hd_dll_af7cce @ 0x8a4;
ptr hd_dll_af7cd4 @ 0x8a8;
ptr hd_dll_af7cda @ 0x8ac;
ptr hd_dll_af7ce0 @ 0x8b4;
ptr hd_dll_af7ce6 @ 0x8b8;
ptr hd_dll_af7cec @ 0x8bc;

ptr hd_dll_af7d34 @ 0x8c0;
ptr hd_dll_af7d67 @ 0x8c4;
ptr hd_dll_af7d6d @ 0x8f4;
ptr hd_dll_af7d73 @ 0x8f0;
ptr hd_dll_af7da4 @ 0xad8;
ptr hd_dll_af7daa @ 0xadc;

// Odd loop at af7db0

ptr hd_dll_af7e55 @ 0x8c8;
ptr hd_dll_af7e5b @ 0x8cc;

ptr hd_dll_af7e79 @ 0x8d0;
ptr hd_dll_af7e7f @ 0x8d4;
ptr hd_dll_af7e85 @ 0x8d8;
ptr hd_dll_af7e8b @ 0x8dc;
ptr hd_dll_af7e91 @ 0x8e0;
ptr hd_dll_af7e97 @ 0x8e4;
ptr hd_dll_af7e9d @ 0x8e8;
ptr hd_dll_af7ea3 @ 0x8ec;

// Odd code at af7ea9

ptr hd_dll_af8165 @ 0x900;
ptr hd_dll_af816b @ 0x92c;
ptr hd_dll_af8171 @ 0x904;
ptr hd_dll_af8177 @ 0x90c;
ptr hd_dll_af817d @ 0x924;
ptr hd_dll_af8183 @ 0x920;
ptr hd_dll_af8189 @ 0x928;
ptr hd_dll_af818f @ 0x914;

ptr hd_dll_af81cc @ 0x918;
ptr hd_dll_af821c @ 0x91c;

// Odd code at af8222

ptr hd_dll_af82c4 @ 0x930;
ptr hd_dll_af82ca @ 0x934;
ptr hd_dll_af82d0 @ 0x938;
ptr hd_dll_af82d6 @ 0x93c;

ptr hd_dll_af831a @ 0x940
[[name("Pointer to Tower Weapon Forging Data")]];
ptr hd_dll_af8320 @ 0x944;
ptr hd_dll_af8326 @ 0x948;
ptr hd_dll_af832c @ 0x94c;
ptr hd_dll_af8332 @ 0x950;
ptr hd_dll_af8338 @ 0x954;
ptr hd_dll_af833e @ 0x958;
ptr hd_dll_af8344 @ 0x95c;
ptr hd_dll_af834a @ 0x960;
ptr hd_dll_af8350 @ 0x964;
ptr hd_dll_af8356 @ 0x968;
ptr hd_dll_af835c @ 0x96c;
ptr hd_dll_af8362 @ 0x970;
ptr hd_dll_af8368 @ 0x974;
ptr hd_dll_af836e @ 0x978;
ptr hd_dll_af8374 @ 0x97c;
ptr hd_dll_af837a @ 0x980;
ptr hd_dll_af8380 @ 0x984;

ptr hd_dll_af839f @ 0x98c;
ptr hd_dll_af83a5 @ 0x990;
ptr hd_dll_af83ab @ 0x994;
ptr hd_dll_af83b1 @ 0x998
[[name("Pointer to Tower Armor Forging Data")]];
ptr hd_dll_af83b7 @ 0x99c;
ptr hd_dll_af83bd @ 0x9a4;
ptr hd_dll_af83c3 @ 0x9ac;

ptr hd_dll_af84a9 @ 0x9b4;
ptr hd_dll_af84f4 @ 0x9bc;
ptr hd_dll_af8536 @ 0x9b8;
ptr hd_dll_af8581 @ 0x9c0;
ptr hd_dll_af85c4 @ 0x9c8;
ptr hd_dll_af85ca @ 0x9d0;
ptr hd_dll_af85d0 @ 0x9d8;
ptr hd_dll_af85d6 @ 0x9dc;
ptr hd_dll_af8601 @ 0x9e0;
ptr hd_dll_af8630 @ 0x9e4;
ptr hd_dll_af8660 @ 0x9e8;
ptr hd_dll_af8690 @ 0x9ec;
ptr hd_dll_af86c0 @ 0x9f0;
ptr hd_dll_af86f0 @ 0x9f4;
ptr hd_dll_af86f6 @ 0x9f8;
ptr hd_dll_af86fc @ 0x9fc;
ptr hd_dll_af8702 @ 0xa00;
ptr hd_dll_af8708 @ 0xa04;
ptr hd_dll_af870e @ 0xa08;
ptr hd_dll_af8714 @ 0xa0c;
ptr hd_dll_af871a @ 0xa10;
ptr hd_dll_af8720 @ 0xa14;
ptr hd_dll_af8726 @ 0xa18
[[name("Pointer to Evolution Upgrade Data")]];
ptr hd_dll_af872c @ 0xa1c;

// TODO: Pointers in an array at af8732

ptr hd_dll_af874a @ 0xa24;
ptr hd_dll_af8750 @ 0xa28;
ptr hd_dll_af8756 @ 0xa3c;
ptr hd_dll_af875c @ 0xa2c;
ptr hd_dll_af8762 @ 0xa30;
ptr hd_dll_af8768 @ 0xa34;
ptr hd_dll_af876e @ 0xa38;
ptr hd_dll_af8774 @ 0xa44;
ptr hd_dll_af877a @ 0xa48;
ptr hd_dll_af8780 @ 0xa50;

// TODO: Another array of pointers at af8786

ptr hd_dll_af87bb @ 0xa54;
ptr hd_dll_af87c1 @ 0xa58;

ptr hd_dll_af87f2 @ 0xa5c;
ptr hd_dll_af87f8 @ 0xa60;
ptr hd_dll_af87fe @ 0xa68;
ptr hd_dll_af8804 @ 0xa6c;

// TODO: Pointer array

ptr hd_dll_af8819 @ 0xa70;
 
// TODO: Big pointer array

ptr hd_dll_af8886 @ 0xa78;
ptr hd_dll_af888c @ 0xa80;
ptr hd_dll_af88c7 @ 0xa84;
ptr hd_dll_af88f2 @ 0xa88;

ptr hd_dll_af8cac @ 0xa94;
ptr hd_dll_af8cb2 @ 0xa98
[[name("Pointer to Quest List Struct")]];

ptr hd_dll_af8cf8 @ 0xa9c;
ptr hd_dll_af8cfe @ 0xaa0;
ptr hd_dll_af8d0f @ 0xaa4;
ptr hd_dll_af8d1d @ 0xaa8;
ptr hd_dll_af8d23 @ 0xaac;
ptr hd_dll_af8d29 @ 0xab0;
ptr hd_dll_af8d2f @ 0xab4;
ptr hd_dll_af8d48 @ 0xab8
[[name("Pointer to Transmog Forging Data")]];
ptr hd_dll_af8d4e @ 0xabc;
ptr hd_dll_af8d54 @ 0xac0
[[name("Pointer to Weapon Forging Data")]];
ptr hd_dll_af8d5a @ 0xac4
[[name("Pointer to Zenith Armor Forging Data")]];
ptr hd_dll_af8d60 @ 0xad4;
ptr hd_dll_af8d66 @ 0xac8;

ptr hd_dll_af8dc1 @ 0xacc;
ptr hd_dll_af8dc7 @ 0xad0;

ptr hd_dll_af8e16 @ 0xae0;
ptr hd_dll_af8e5e @ 0xae4;

ptr hd_dll_af8eae @ 0xaf4;
ptr hd_dll_af8eb4 @ 0xaf8;
ptr hd_dll_af8eba @ 0xafc;

ptr hd_dll_af8f01 @ 0xb00;
ptr hd_dll_af8f07 @ 0xb08;
ptr hd_dll_af8f0d @ 0xb0c;
ptr hd_dll_af8f13 @ 0xb10;
ptr hd_dll_af8f19 @ 0xb14;
ptr hd_dll_af8f1f @ 0xb1c;
ptr hd_dll_af8f25 @ 0xb20;
ptr hd_dll_af8f2b @ 0xb24;
ptr hd_dll_af8f31 @ 0xb28;
ptr hd_dll_af8f37 @ 0xb7c;
ptr hd_dll_af8f3d @ 0xb80;
ptr hd_dll_af8f43 @ 0xb2c;

ptr hd_dll_af8f80 @ 0xb38;

ptr hd_dll_af8fca @ 0xb3c;
ptr hd_dll_af8fd0 @ 0xb40;
ptr hd_dll_af8fd6 @ 0xb44;
ptr hd_dll_af8fdc @ 0xb4c;

ptr hd_dll_af8ff6 @ 0xb50;

ptr hd_dll_af903a @ 0xb54;

ptr hd_dll_af9088 @ 0xb58;

ptr hd_dll_af90cc @ 0xb60;
ptr hd_dll_af90d2 @ 0xb64;
ptr hd_dll_af90d8 @ 0xb68;
ptr hd_dll_af90de @ 0xb6c;
ptr hd_dll_af90e4 @ 0xb70;
ptr hd_dll_af90ea @ 0xb74;
ptr hd_dll_af90f0 @ 0xb78;
ptr hd_dll_af9107 @ 0xb88;

// TODO: Array of pointers

ptr hd_dll_af91ba @ 0xb8c;

ptr hd_dll_af91e4 @ 0xb90;

// TODO: Array of pointers

ptr hd_dll_af9323 @ 0xb94;

// TODO: Array of pointers

ptr hd_dll_af9399 @ 0xb98;

// TODO: Something?

ptr hd_dll_af93fc @ 0xb9c;
ptr hd_dll_af9402 @ 0xba0;
ptr hd_dll_af9408 @ 0xba8;

ptr hd_dll_af9450 @ 0xba4;
