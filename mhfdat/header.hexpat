#pragma once

#include <misc/types.pat>

struct signature {
    u32 header1                 [[comment("Must equal 1A 66 68 6D")]];
    u32 header2                 [[comment("Must equal 00 00 00 59")]];
    padding[4];
    u32 header3                 [[comment("Must equal 00 00 0B C8")]];
};

struct ptr_table {
    // @ 0x010
    ptr important_nums          [[name("Important Numbers Pointer")]];
    padding[0x14];

    unk_ptr hd_dll_af5f9b;
    
    padding[0x8];
    
    ptr armorForging            [[name("Armor Forging Pointer")]]; 
    ptr otherWeaponForging      [[name("Other Weapon Forging Pointer")]];
    ptr meleeWeaponUpgradePath  [[name("Melee Weapon Upgrade Path Pointer")]];
    ptr rangedWeaponUpgradePath [[name("Ranged Weapon Upgrade Path Pointer")]];
    unk_ptr hd_dll_af47d8;
    unk_ptr hd_dll_af47e1;

    ptr armorUpgradeMats        [[name("Armor Upgrade Materials Pointer")]];

    // @ 0x050
    ptr headArmor               [[name("Head Armor Data Pointer")]];
    ptr bodyArmor               [[name("Body Armor Data Pointer")]];
    ptr armArmor                [[name("Arm Armor Data Pointer")]];
    ptr waistArmor              [[name("Waist Armor Data Pointer")]];
    ptr legArmor                [[name("Leg Armor Data Pointer")]];

    ptr headArmorNames          [[name("Head Armor Names Pointer")]];
    ptr bodyArmorNames          [[name("Body Armor Names Pointer")]];
    ptr armArmorNames           [[name("Arm Armor Names Pointer")]];
    ptr waistArmorNames         [[name("Waist Armor Names Pointer")]];
    ptr legArmorNames           [[name("Leg Armor Names Pointer")]];

    ptr equipDesc               [[name("Equipment Descriptions Poiner")]];

    ptr meleeWeapons            [[name("Melee Weapon Data Pointer")]];
    ptr rangedWeapons           [[name("Ranged Weapon Data Pointer")]];
    ptr rangedWeaponNames       [[name("Ranged Weapon Names Pointer")]];
    ptr meleeWeaponNames        [[name("Melee Weapon Names Pointer")]];
    ptr meleeWeaponDesc         [[name("Melee Weapon Descriptions Pointer")]];
    ptr rangedWeaponDesc        [[name("Ranged Weapon Descriptions Pointer")]];

    ptr armorStatArray          [[name("Armor Stat Pointer Array"), 
                                  comment("Seems redundant")
                                ]];
    ptr armorWeaponStatArray    [[name("Armor and Weapon Stat Pointer Array"),
                                  comment("Probably redundant")
                                ]];
    ptr armorNameArray          [[name("Armor Name Pointer Array"),
                                  comment("Probably redundant")
                                ]];
    
    
    unk_ptr hd_dll_af5038;      // @ 0x0A0
    ptr BulletSets              [[name("Bullet Sets Pointer")]];
    unk_ptr hd_dll_af5044;
    ptr SharpnessIds           [[name("Sharpness Ids Pointer")]];
    unk_ptr hd_dll_af5073;      // @ 0x0B0
    unk_ptr hd_dll_af5079;
    unk_ptr hd_dll_af507f;
    unk_ptr hd_dll_af5085;
    unk_ptr hd_dll_af508b;      // @ 0x0C0
    unk_ptr hd_dll_af4bc6;
    unk_ptr hd_dll_af4bf5;
    unk_ptr hd_dll_af4bfb;
    unk_ptr hd_dll_af4cd1;      // @ 0x0D0
    unk_ptr hd_dll_af4cd7;
    unk_ptr hd_dll_af4cc5;
    unk_ptr hd_dll_af4d14;
    unk_ptr hd_dll_af4d08;      // @ 0x0E0
    unk_ptr hd_dll_af47b5;
    unk_ptr hd_dll_af47af       [[comment
                                  ("Seems to point to how many of certain 
                                    objects there are, such as weapons") 
                                ]];
    unk_ptr hd_dll_af4d2d;
    
    // + 0x0F0
    ptr hunterPearlSkills       [[name("Hunter Pearl Skills")]];

    unk_ptr hd_dll_af4d7b;
    unk_ptr hd_dll_af4daf;

    ptr itemData                [[name("Item Data Pointer")]];
    ptr itemNames               [[name("Item Names Pointer")]];

    unk_ptr hd_dll_af4dec;
    unk_ptr hd_dll_af4df2;
    unk_ptr hd_dll_af4df8;
    
    unk_ptr hd_dll_af4de0;      // @ 0x110
    unk_ptr hd_dll_af4e1b;
    unk_ptr hd_dll_af4e0f;
    unk_ptr hd_dll_af4e3a;

    // + 0x120
    ptr carveItemDrops          [[name("Carve Drop Data Pointer")]];
    ptr partBreakItemDrops      [[name("Part Break Drop Data Pointer")]];
    unk_ptr hd_dll_af4ec1;
    ptr itemDesc                [[name("Item Descriptions Pointer")]];

    unk_ptr hd_dll_af4f23;      // @ 0x130
    ptr monsterDesc             [[name("Monster Descriptions Pointer")]];
    unk_ptr hd_dll_af4ff0;
    unk_ptr hd_dll_af5145;

    unk_ptr hd_dll_af517d;      // @ 0x140
    ptr arenaItems              [[name("Arena Item Data Pointer")]];
    ptr arenaEquipment          [[name("Arena Equipment Data Pointer")]];
    ptr arenaStageIDC1          [[name("Arena Stage ID Chunk 1")]];

    unk_ptr hd_dll_af51e0;      // @ 0x150
    ptr arenaStageIDC0          [[name("Arena Stage ID Chunk 0")]];
    ptr arenaAmmo               [[name("Arena Ammo Pointer??")]];
    unk_ptr hd_dll_af5261;

    // + 0x160
    ptr machaPotRewards         [[name("Macha Pot Rewards Pointer")]];

    unk_ptr hd_dll_af52c0;
    unk_ptr hd_dll_af52ba;
    unk_ptr hd_dll_af52f3;

    padding[0x10];              // @ 0x170

    unk_ptr hd_dll_af5397;      // @ 0x180
    unk_ptr hd_dll_af53c0;
    unk_ptr hd_dll_af53f0;
    unk_ptr hd_dll_af5421;
    unk_ptr hd_dll_af5427;      // @ 0x190
    unk_ptr hd_dll_af542d;
    unk_ptr hd_dll_af5455;
    unk_ptr hd_dll_af5491;
    unk_ptr hd_dll_af54d3;      // @ 0x1A0
    unk_ptr hd_dll_af5542;
    unk_ptr hd_dll_af5570;
    unk_ptr hd_dll_af55a0;
    unk_ptr hd_dll_af55d0;      // @ 0x1B0
    unk_ptr hd_dll_af5611;
    unk_ptr hd_dll_af5640;
    unk_ptr hd_dll_af5646;
    unk_ptr hd_dll_af5661;      // @ 0x1C0
    unk_ptr hd_dll_af567c;
    unk_ptr hd_dll_af57f2;
    unk_ptr hd_dll_af583d;
    unk_ptr hd_dll_af5843;      // @ 0x1D0
    unk_ptr hd_dll_af56ea;
    unk_ptr hd_dll_af56cc;
    unk_ptr hd_dll_af56d2;
    unk_ptr hd_dll_af56d8;      // @ 0x1E0
    unk_ptr hd_dll_af56de;
    unk_ptr hd_dll_af56e4;
    unk_ptr hd_dll_af5682;
    unk_ptr hd_dll_af5693;      // @ 0x1F0
    unk_ptr hd_dll_af56a4;
    unk_ptr hd_dll_af56b5;
    unk_ptr hd_dll_af56c6;
    unk_ptr hd_dll_af57bf;      // @ 0x200
    unk_ptr hd_dll_af5772;
    unk_ptr hd_dll_af5778;
    unk_ptr hd_dll_af577e;
    unk_ptr hd_dll_af5784;      // @ 0x210
    unk_ptr hd_dll_af578a;
    unk_ptr hd_dll_af57b9;
    unk_ptr hd_dll_af5849;
    unk_ptr hd_dll_af584f;      // @ 0x220
    unk_ptr hd_dll_af5855;
    unk_ptr hd_dll_af584b;
    unk_ptr hd_dll_af5861;
    unk_ptr hd_dll_af5867;      // @ 0x230
    unk_ptr hd_dll_af4da9;
    unk_ptr hd_dll_af586d;
    unk_ptr hd_dll_af588d;
    unk_ptr hd_dll_af58ca;      // @ 0x240
    unk_ptr hd_dll_af58ea;
    unk_ptr hd_dll_af58aa;
    unk_ptr hd_dll_af592a;
    unk_ptr hd_dll_af590a;      // @ 0x250
    unk_ptr hd_dll_af594a;
    unk_ptr hd_dll_af596a;
    unk_ptr hd_dll_af5970;
    unk_ptr hd_dll_af5976;      // @ 0x260
    unk_ptr hd_dll_af59a1;
    unk_ptr hd_dll_af59a7;
    unk_ptr hd_dll_af59ad;
    unk_ptr hd_dll_af59c5;      // @ 0x270
    unk_ptr hd_dll_af59cb;
    unk_ptr hd_dll_af5a21;
    unk_ptr hd_dll_af5a27;
    unk_ptr hd_dll_af5a2d;      // @ 0x280
    unk_ptr hd_dll_af5a33;
    unk_ptr hd_dll_af5a39;
    unk_ptr hd_dll_af5a3f;
    unk_ptr hd_dll_af5a45;      // @ 0x290
    unk_ptr hd_dll_af5a4b;
    unk_ptr hd_dll_af5a51;
    unk_ptr hd_dll_af5a57;
    unk_ptr hd_dll_af5a5d;      // @ 0x2A0
    unk_ptr hd_dll_af5ae0;
    unk_ptr hd_dll_af5ab1;
    unk_ptr hd_dll_af5ae6;
    unk_ptr hd_dll_af5a63;      // @ 0x2B0
    unk_ptr hd_dll_af5a69;
    unk_ptr hd_dll_af5a6f;
    unk_ptr hd_dll_af5a75;
    unk_ptr hd_dll_af5b1b;      // @ 0x2C0
    unk_ptr hd_dll_af5b21;
    unk_ptr hd_dll_af5b27;
    unk_ptr hd_dll_af5a7b;
    unk_ptr hd_dll_af5a81;      // @ 0x2D0
    unk_ptr hd_dll_af5a87;
    unk_ptr hd_dll_af5a8d;
    unk_ptr hd_dll_af5a93;
    unk_ptr hd_dll_af5a99;      // @ 0x2E0
    unk_ptr hd_dll_af5b6c;
    unk_ptr hd_dll_af5a9f;
    unk_ptr hd_dll_af5aa5;
    unk_ptr hd_dll_af5aab;      // @ 0x2F0
    unk_ptr hd_dll_af5be2;
    unk_ptr hd_dll_af5be8;
    unk_ptr hd_dll_af5bee;
    unk_ptr hd_dll_af5bf4;      // @ 0x300
    unk_ptr hd_dll_af5bfa;
    unk_ptr hd_dll_af5c00;
    unk_ptr hd_dll_af5c06;
    unk_ptr hd_dll_af5c0c;      // @ 0x310
    unk_ptr hd_dll_af5c12;
    unk_ptr hd_dll_af5b9d;
    unk_ptr hd_dll_af5c18;
    unk_ptr hd_dll_af5c1e;      // @ 0x320
    unk_ptr hd_dll_af5bd0;
    unk_ptr hd_dll_af5bd6;

    ptr carveHCItemDrops        [[name("HC Carve Drop Data Pointer")]];

    unk_ptr hd_dll_af5c24;      // @ 0x330
    unk_ptr hd_dll_af5c2a;
    unk_ptr hd_dll_af5c30;
    unk_ptr hd_dll_af5c36;
    unk_ptr hd_dll_af5c3c;      // @ 0x340
    unk_ptr hd_dll_af5c42;
    unk_ptr hd_dll_af5c48;
    unk_ptr hd_dll_af5c4e;
    unk_ptr hd_dll_af5c54;      // @ 0x350
    unk_ptr hd_dll_af5c5a;
    unk_ptr hd_dll_af5c60;
    unk_ptr hd_dll_af5c72;
    unk_ptr hd_dll_af5c78;      // @ 0x360
    unk_ptr hd_dll_af5c7e;
    unk_ptr hd_dll_af5c84;
    unk_ptr hd_dll_af5c8a;
    unk_ptr hd_dll_af5c90;      // @ 0x370
    unk_ptr hd_dll_af5c96;
    unk_ptr hd_dll_af5c9c;
    unk_ptr hd_dll_af5ca2;
    unk_ptr hd_dll_af5ca8;      // @ 0x380
    unk_ptr hd_dll_af5cae;
    unk_ptr hd_dll_af5cb4;
    unk_ptr hd_dll_af5cba;
    unk_ptr hd_dll_af5ccc;      // @ 0x390
    unk_ptr hd_dll_af5cd2;
    unk_ptr hd_dll_af5cd8;
    unk_ptr hd_dll_af5cde;
    unk_ptr hd_dll_af5cc0;      // @ 0x3A0
    unk_ptr hd_dll_af5cc6;
    unk_ptr hd_dll_af5cea;
    unk_ptr hd_dll_af5cf0;
    unk_ptr hd_dll_af5cf6;      // @ 0x3B0
    unk_ptr hd_dll_af5cfc;
    unk_ptr hd_dll_af5d02;
    unk_ptr hd_dll_af5d08;
    unk_ptr hd_dll_af5d0e;      // @ 0x3C0
    unk_ptr hd_dll_af5d14;
    unk_ptr hd_dll_af5d1a;
    unk_ptr hd_dll_af5d20;
    unk_ptr hd_dll_af5d26;      // @ 0x3D0
    unk_ptr hd_dll_af5d2c;
    unk_ptr hd_dll_af5d32;
    unk_ptr hd_dll_af5d60;
    unk_ptr hd_dll_af5d90;      // @ 0x3E0
    unk_ptr hd_dll_af5dc0;
    unk_ptr hd_dll_af5df0;
    unk_ptr hd_dll_af5e20;
    unk_ptr hd_dll_af5e50;      // @ 0x3F0
    unk_ptr hd_dll_af5e80;
    unk_ptr hd_dll_af5eb0;
    unk_ptr hd_dll_af5ee0;
    unk_ptr hd_dll_af5f10;      // @ 0x400
    unk_ptr hd_dll_af5f40;
    unk_ptr hd_dll_af5f46;
    unk_ptr hd_dll_af5f71;
    unk_ptr hd_dll_af5f77;      // @ 0x410
    unk_ptr hd_dll_af5f7d;
    unk_ptr hd_dll_af5f83;
    unk_ptr hd_dll_af5f89;
    unk_ptr hd_dll_af5f8f;      // @ 0x420
    unk_ptr hd_dll_af5f95;
    padding[0x4];
    unk_ptr hd_dll_af5fa1;
    unk_ptr hd_dll_af5fa7;      // @ 0x430
    unk_ptr hd_dll_af5fad;
    unk_ptr hd_dll_af5fb3;
    unk_ptr hd_dll_af5fb9;
    unk_ptr hd_dll_af5fbf;      // @ 0x440
    unk_ptr hd_dll_af5ff0;
    unk_ptr hd_dll_af6020;
    unk_ptr hd_dll_af6050;
    unk_ptr hd_dll_af6056;      // @ 0x450
    unk_ptr hd_dll_af605c;
    unk_ptr hd_dll_af6062;
    unk_ptr hd_dll_af6090;
    unk_ptr hd_dll_af60c0;      // @ 0x460
    unk_ptr hd_dll_af60f0;
    unk_ptr hd_dll_af6120;
    unk_ptr hd_dll_af6150;
    unk_ptr hd_dll_af6180;      // @ 0x470
    unk_ptr hd_dll_af61b0;
    unk_ptr hd_dll_af61e0;
    unk_ptr hd_dll_af61e6;
    unk_ptr hd_dll_af61ec;      // @ 0x480
    unk_ptr hd_dll_af61f2;
    unk_ptr hd_dll_af61f8;
    unk_ptr hd_dll_af61fe;
    unk_ptr hd_dll_af6204;      // @ 0x490
    unk_ptr hd_dll_af620a;
    unk_ptr hd_dll_af623d;
    unk_ptr hd_dll_af6243;
    unk_ptr hd_dll_af6249;      // @ 0x4A0
    unk_ptr hd_dll_af6280;
    unk_ptr hd_dll_af6286;
    unk_ptr hd_dll_af628C;
    unk_ptr hd_dll_af6292;      // @ 0x4B0
    unk_ptr hd_dll_af6298;
    unk_ptr hd_dll_af62d4;
    unk_ptr hd_dll_af62c8;
    unk_ptr hd_dll_af62ce;      // @ 0x4C0
    unk_ptr hd_dll_af62da;
    unk_ptr hd_dll_af62e0;
    unk_ptr hd_dll_af629e;
    unk_ptr hd_dll_af62a4;      // @ 0x4D0
    unk_ptr hd_dll_af62aa;
    unk_ptr hd_dll_af62b0;
    unk_ptr hd_dll_af62b6;
    unk_ptr hd_dll_af62bc;      // @ 0x4E0
    unk_ptr hd_dll_af62c2;
    unk_ptr hd_dll_af6304;
    unk_ptr hd_dll_af630a;
    unk_ptr hd_dll_af6310;      // @ 0x4F0
    unk_ptr hd_dll_af632e;
    unk_ptr hd_dll_af6316;
    unk_ptr hd_dll_af5ce4;
    unk_ptr hd_dll_af631c;      // @ 0x500
    unk_ptr hd_dll_af6322;
    unk_ptr hd_dll_af6328;
    unk_ptr hd_dll_af6334;
    unk_ptr hd_dll_af6434;      // @ 0x510
    unk_ptr hd_dll_af643a;
    unk_ptr hd_dll_af6440;
    unk_ptr hd_dll_af6477;
    unk_ptr hd_dll_af647d;      // @ 0x520
    unk_ptr hd_dll_af6588;
    unk_ptr hd_dll_af658e;
    unk_ptr hd_dll_af659a;
    unk_ptr hd_dll_af65ea;      // @ 0x530
    unk_ptr hd_dll_af65f0;
    unk_ptr hd_dll_af65f6;
    unk_ptr hd_dll_af65fc;
    unk_ptr hd_dll_af6602;      // @ 0x540
    unk_ptr hd_dll_af6608;
    unk_ptr hd_dll_af660e;
    ptr seasonalEventTiming     [[name("Seasonal Event Timing Table Pointer")]];
    unk_ptr hd_dll_af661a;      // @ 0x550
    unk_ptr hd_dll_af6640;
    unk_ptr hd_dll_af6646;
    unk_ptr hd_dll_af664c;
    unk_ptr hd_dll_af6652;      // @ 0x560
    unk_ptr hd_dll_af6658;
    unk_ptr hd_dll_af665e;
    unk_ptr hd_dll_af6664;
    unk_ptr hd_dll_af666a;      // @ 0x570
    unk_ptr hd_dll_af6670;
    unk_ptr hd_dll_af6676;
    unk_ptr hd_dll_af667c;
    unk_ptr hd_dll_af6682;      // @ 0x580
    unk_ptr hd_dll_af6688;
    unk_ptr hd_dll_af668e;
    unk_ptr hd_dll_af6694;
    unk_ptr hd_dll_af669a;      // @ 0x590
    unk_ptr hd_dll_af66a0;
    unk_ptr hd_dll_af66a6;
    unk_ptr hd_dll_af66ac;
    unk_ptr hd_dll_af66b2;      // @ 0x5A0
    unk_ptr hd_dll_af66b8;
    unk_ptr hd_dll_af66be;
    unk_ptr hd_dll_af66c4;
    unk_ptr hd_dll_af66ca;      // @ 0x5B0
    unk_ptr hd_dll_af66d0;
    unk_ptr hd_dll_af703a;
    unk_ptr hd_dll_af66d6;
    unk_ptr hd_dll_af66dc;      // @ 0x5C0
    unk_ptr hd_dll_af67da;
    unk_ptr hd_dll_af683c;
    unk_ptr hd_dll_af689c;
    unk_ptr hd_dll_af68fc;      // @ 0x5D0
    unk_ptr hd_dll_af695c;
    unk_ptr hd_dll_af69bc;
    unk_ptr hd_dll_af6a1c;
    unk_ptr hd_dll_af6a7c;      // @ 0x5E0
    unk_ptr hd_dll_af6adc;
    unk_ptr hd_dll_af6b3c;
    unk_ptr hd_dll_af6b9c;

    // @ 0x5F0
    ptr weaponGRForging         [[name("G-Rank Weapon Forging Pointer")]];
    ptr armorGRForging          [[name("G-Rank Armor Forging Pointer")]];
    unk_ptr hd_dll_af6c08;
    ptr weaponG50Forging        [[name("G-50 Weapon Forging Pointer")]];

    unk_ptr hd_dll_af6c14;      // @ 0x600
    unk_ptr hd_dll_af6c1a;
    unk_ptr hd_dll_af6c20;
    unk_ptr hd_dll_af6c26;
    unk_ptr hd_dll_af6c2c;      // @ 0x610
    unk_ptr hd_dll_af6c32;
    unk_ptr hd_dll_af6c98;
    unk_ptr hd_dll_af6d00;
    unk_ptr hd_dll_af6d60;      // @ 0x620
    unk_ptr hd_dll_af6d66;
    unk_ptr hd_dll_af6d6c;
    unk_ptr hd_dll_af6da0;
    unk_ptr hd_dll_af6da6;      // @ 0x630
    unk_ptr hd_dll_af6dac;
    unk_ptr hd_dll_af6db2;
    unk_ptr hd_dll_af6db8;
    unk_ptr hd_dll_af6dbe;      // @ 0x640
    unk_ptr hd_dll_af6e7c;
    unk_ptr hd_dll_af6eab;
    unk_ptr hd_dll_af6eb1;
    unk_ptr hd_dll_af6eb7;      // @ 0x650
    unk_ptr hd_dll_af6e82;
    unk_ptr hd_dll_af6f6f;
    unk_ptr hd_dll_af6f75;
    unk_ptr hd_dll_af6f7b;      // @ 0x660
    unk_ptr hd_dll_af6f81;
    unk_ptr hd_dll_af6fa8;
    unk_ptr hd_dll_af6fca;
    unk_ptr hd_dll_af6fec;      // @ 0x670
    unk_ptr hd_dll_af6ff2;
    unk_ptr hd_dll_af6ff8;
    unk_ptr hd_dll_af6ffe;
    unk_ptr hd_dll_af7004;      // @ 0x680
    unk_ptr hd_dll_af700a;
    unk_ptr hd_dll_af7010;
    unk_ptr hd_dll_af7016;
    unk_ptr hd_dll_af701c;      // @ 0x690
    unk_ptr hd_dll_af7022;
    unk_ptr hd_dll_af7028;
    unk_ptr hd_dll_af702e;
    unk_ptr hd_dll_af7034;      // @ 0x6A0
    unk_ptr hd_dll_af7052;
    unk_ptr hd_dll_af7040;
    unk_ptr hd_dll_af7046;
    unk_ptr hd_dll_af7058;      // @ 0x6B0
    unk_ptr hd_dll_af705e;
    unk_ptr hd_dll_af7064;
    unk_ptr hd_dll_af706a;
    unk_ptr hd_dll_af7070;      // @ 0x6C0
    unk_ptr hd_dll_af704c;
    unk_ptr hd_dll_af7076;
    unk_ptr hd_dll_af70bc;
    unk_ptr hd_dll_af710a;      // @ 0x6D0
    unk_ptr hd_dll_af715a;
    unk_ptr hd_dll_af71aa;
    unk_ptr hd_dll_af71fa;
    unk_ptr hd_dll_af724a;      // @ 0x6E0
    unk_ptr hd_dll_af738a;
    unk_ptr hd_dll_af7390;
    unk_ptr hd_dll_af7396;
    unk_ptr hd_dll_af739c;      // @ 0x6F0
    unk_ptr hd_dll_af73d7;
    unk_ptr hd_dll_af73dd;
    unk_ptr hd_dll_af73e3;
    unk_ptr hd_dll_af73e9;      // @ 0x700
    unk_ptr hd_dll_af740a;
    padding[0x8];
    padding[0x4];               // @ 0x710
    unk_ptr hd_dll_af771d;
    unk_ptr hd_dll_af5c66;
    unk_ptr hd_dll_af7723;
    unk_ptr hd_dll_af7729;      // @ 0x720
    unk_ptr hd_dll_af772f;
    unk_ptr hd_dll_af7735;
    unk_ptr hd_dll_af773b;
    unk_ptr hd_dll_af7741;      // @ 0x730
    unk_ptr hd_dll_af7747;

    ptr carveGRHCItemDrops      [[name("Carve GR HC Drop Data Pointer")]];

    unk_ptr hd_dll_af7753;
    unk_ptr hd_dll_af729a;      // @ 0x740
    unk_ptr hd_dll_af72ea;
    unk_ptr hd_dll_af733a;
    unk_ptr hd_dll_af7759;
    unk_ptr hd_dll_af775f;      // @ 0x750
    unk_ptr hd_dll_af7765;
    padding[4];
    unk_ptr hd_dll_af7771;
    unk_ptr hd_dll_af7777;      // @ 0x760
    unk_ptr hd_dll_af777d;
    unk_ptr hd_dll_af7783;
    unk_ptr hd_dll_af7789;
    unk_ptr hd_dll_af778f;      // @ 0x770
    unk_ptr hd_dll_af7795;
    unk_ptr hd_dll_af779b;
    unk_ptr hd_dll_af77a1;
    unk_ptr hd_dll_af77a7;      // @ 0x780
    unk_ptr hd_dll_af77ef;
    unk_ptr hd_dll_af77f5;
    unk_ptr hd_dll_af77fb;
    unk_ptr hd_dll_af7801;      // @ 0x790
    unk_ptr hd_dll_af7807;
    unk_ptr hd_dll_af780d;
    unk_ptr hd_dll_af7813;
    unk_ptr hd_dll_af7819;      // @ 0x7A0
    unk_ptr hd_dll_af781f;
    unk_ptr hd_dll_af7825;

    ptr weaponSpecialForging    [[name("Special Weapon Forging Pointer")]];
    
    ptr armorPremiumForging    [[name("Armor Premium Forging Pointer")]];      // @ 0x7B0
    unk_ptr hd_dll_af787b;
    unk_ptr hd_dll_af7881;
    unk_ptr hd_dll_af7887;
    unk_ptr hd_dll_af78b2;      // @ 0x7C0
    unk_ptr hd_dll_af7a30;
    unk_ptr hd_dll_af7a36;
    unk_ptr hd_dll_af7a3c;
    unk_ptr hd_dll_af7a42;      // @ 0x7D0
    unk_ptr hd_dll_af7a48;
    unk_ptr hd_dll_af7a7c;
    unk_ptr hd_dll_af78e0;
    unk_ptr hd_dll_af7a82;      // @ 0x7E0
    unk_ptr hd_dll_af7a88;
    unk_ptr hd_dll_af7910;
    unk_ptr hd_dll_af7940;
    unk_ptr hd_dll_af7970;      // @ 0x7F0
    unk_ptr hd_dll_af79a0;
    unk_ptr hd_dll_af79d0;
    unk_ptr hd_dll_af7a00;
    unk_ptr hd_dll_af7a8e;      // @ 0x800
    unk_ptr hd_dll_af7a94;
    unk_ptr hd_dll_af7a9a;
    unk_ptr hd_dll_af7aa0;
    unk_ptr hd_dll_af7aa6;      // @ 0x810
    unk_ptr hd_dll_af7ae3;
    unk_ptr hd_dll_af7ae9;
    unk_ptr hd_dll_af7aef;
    unk_ptr hd_dll_af7af5;      // @ 0x820
    unk_ptr hd_dll_af7afb;
    unk_ptr hd_dll_af7b01;
    padding[0x4];
    unk_ptr hd_dll_af7b07;      // @ 0x830
    unk_ptr hd_dll_af7b0d;
    unk_ptr hd_dll_af7b13;
    unk_ptr hd_dll_af7b19;
    unk_ptr hd_dll_af7b1f;      // @ 0x840
    unk_ptr hd_dll_af7b25;
    unk_ptr hd_dll_af7b2b;
    unk_ptr hd_dll_af7b31;
    unk_ptr hd_dll_af7b37;      // @ 0x850
    unk_ptr hd_dll_af7b3d;
    unk_ptr hd_dll_af7b43;
    unk_ptr hd_dll_af7b49;
    unk_ptr hd_dll_af7b4f;      // @ 0x860
    unk_ptr hd_dll_af7b73;
    unk_ptr hd_dll_af7b79;
    unk_ptr hd_dll_af7b7f;
    unk_ptr hd_dll_af7b85;      // @ 0x870
    unk_ptr hd_dll_af7b8b;
    unk_ptr hd_dll_af7b91;
    unk_ptr hd_dll_af7be3;
    unk_ptr hd_dll_af7c0a;      // @ 0x880
    unk_ptr hd_dll_af7c10;
    unk_ptr hd_dll_af7c42;
    unk_ptr hd_dll_af7c9c;
    unk_ptr hd_dll_af7b5b;      // @ 0x890
    unk_ptr hd_dll_af7b61;
    unk_ptr hd_dll_af7b67;
    unk_ptr hd_dll_af7ca2;
    unk_ptr hd_dll_af7cc8;      // @ 0x8A0
    unk_ptr hd_dll_af7cce;
    unk_ptr hd_dll_af7cd4;
    unk_ptr hd_dll_af7cda;
    unk_ptr hd_dll_af7b55;      // @ 0x8B0
    unk_ptr hd_dll_af7ce0;
    unk_ptr hd_dll_af7ce6;
    unk_ptr hd_dll_af7cec;
    unk_ptr hd_dll_af7d34;      // @ 0x8C0
    unk_ptr hd_dll_af7d67;
    unk_ptr hd_dll_af7e55;
    unk_ptr hd_dll_af7e5b;
    unk_ptr hd_dll_af7e79;      // @ 0x8D0
    unk_ptr hd_dll_af7e7f;
    unk_ptr hd_dll_af7e85;
    unk_ptr hd_dll_af7e8b;
    unk_ptr hd_dll_af7e91;      // @ 0x8E0
    unk_ptr hd_dll_af7e97;
    unk_ptr hd_dll_af7e9d;
    unk_ptr hd_dll_af7ea3;
    unk_ptr hd_dll_af7d73;      // @ 0x8F0
    unk_ptr hd_dll_af7d6d;
    padding[4];
    unk_ptr hd_dll_af530c;
    unk_ptr hd_dll_af8165;      // @ 0x900
    unk_ptr hd_dll_af8171;
    unk_ptr hd_dll_af5c6c;
    unk_ptr hd_dll_af8177;
    unk_ptr hd_dll_af469d;      // @ 0x910
    unk_ptr hd_dll_af818f;
    unk_ptr hd_dll_af81cc;
    unk_ptr hd_dll_af821c;
    unk_ptr hd_dll_af8183;      // @ 0x920
    unk_ptr hd_dll_af817d;
    unk_ptr hd_dll_af8189;
    unk_ptr hd_dll_af816b;
    unk_ptr hd_dll_af82c4;      // @ 0x930
    unk_ptr hd_dll_af82ca;
    unk_ptr hd_dll_af82d0;
    unk_ptr hd_dll_af82d6;

    // @ 0x940
    ptr weaponTowerForging      [[name("Tower Weapon Forging Pointer")]];

    unk_ptr hd_dll_af8320;
    unk_ptr hd_dll_af8326;
    unk_ptr hd_dll_af832c;
    unk_ptr hd_dll_af8332;      // @ 0x950
    unk_ptr hd_dll_af8338;
    unk_ptr hd_dll_af833e;
    unk_ptr hd_dll_af8344;
    unk_ptr hd_dll_af834a;      // @ 0x960
    unk_ptr hd_dll_af8350;
    unk_ptr hd_dll_af8356;
    unk_ptr hd_dll_af835c;
    unk_ptr hd_dll_af8362;      // @ 0x970
    unk_ptr hd_dll_af8368;
    unk_ptr hd_dll_af836e;
    unk_ptr hd_dll_af8374;
    unk_ptr hd_dll_af837a;      // @ 0x980
    unk_ptr hd_dll_af8380;
    unk_ptr hd_dll_af46c9; 
    unk_ptr hd_dll_af839f;
    unk_ptr hd_dll_af83a5;      // @ 0x990
    unk_ptr hd_dll_af83ab;

    ptr armorTowerForging       [[name("Tower Armor Forging Pointer")]];

    unk_ptr hd_dll_af83b7;
    padding[4];                 // @ 0x9A0
    unk_ptr hd_dll_af83bd;
    padding[4];
    unk_ptr hd_dll_af83c3;
    padding[4];                 // @ 0x9B0
    unk_ptr hd_dll_af84a9;
    unk_ptr hd_dll_af8536;
    unk_ptr hd_dll_af84f4;
    unk_ptr hd_dll_af8581;      // @ 0x9C0
    padding[4];
    unk_ptr hd_dll_af85c4;
    padding[4];
    unk_ptr hd_dll_af85ca;      // @ 0x9D0
    padding[4];
    unk_ptr hd_dll_af85d0;
    unk_ptr hd_dll_af85d6;
    unk_ptr hd_dll_af8601;      // @ 0x9E0
    unk_ptr hd_dll_af8630;
    unk_ptr hd_dll_af8660;
    unk_ptr hd_dll_af8690;
    unk_ptr hd_dll_af86c0;      // @ 0x9F0
    unk_ptr hd_dll_af86f0;
    unk_ptr hd_dll_af86f6;
    unk_ptr hd_dll_af86fc;
    unk_ptr hd_dll_af8702;      // @ 0xA00
    unk_ptr hd_dll_af8708;
    unk_ptr hd_dll_af870e;
    unk_ptr hd_dll_af8714;
    unk_ptr hd_dll_af871a;      // @ 0xA10
    unk_ptr hd_dll_af8720;

    ptr evoUpgrades             [[name("Evolution Upgrade Pointer")]];

    unk_ptr hd_dll_af872c;
    padding[4];                 // @ 0xA20
    unk_ptr hd_dll_af874a;
    unk_ptr hd_dll_af8750;
    unk_ptr hd_dll_af875c;
    unk_ptr hd_dll_af8762;      // @ 0xA30
    unk_ptr hd_dll_af8768;
    unk_ptr hd_dll_af876e;
    unk_ptr hd_dll_af8756;

    // @ 0xA40
    ptr itemSourceStrings       [[name("Item Source Strings Pointer")]];

    unk_ptr hd_dll_af8774;
    unk_ptr hd_dll_af877a;
    padding[4];
    unk_ptr hd_dll_af8780;      // @ 0xA50
    unk_ptr hd_dll_af87bb;
    unk_ptr hd_dll_af87c1;
    unk_ptr hd_dll_af87f2;
    unk_ptr hd_dll_af87f8;      // @ 0xA60
    padding[4];
    unk_ptr hd_dll_af87fe;
    unk_ptr hd_dll_af8804;
    unk_ptr hd_dll_af8819;      // @ 0xA70
    padding[4];
    unk_ptr hd_dll_af8886;
    padding[4];
    unk_ptr hd_dll_af888c;      // @ 0xA80
    unk_ptr hd_dll_af88c7;
    unk_ptr hd_dll_af88f2;
    padding[4];
    padding[4];                 // @ 0xA90
    unk_ptr hd_dll_af8cac;

    ptr questList               [[name("Quest List Struct Pointer")]];

    unk_ptr hd_dll_af8cf8;
    unk_ptr hd_dll_af8cfe;      // @ 0xAA0
    unk_ptr hd_dll_af8d0f;
    unk_ptr hd_dll_af8d1d;
    unk_ptr hd_dll_af8d23;
    unk_ptr hd_dll_af8d29;      // @ 0xAB0
    unk_ptr hd_dll_af8d2f;

    ptr transmogForging         [[name("Transmog Forging Pointer")]];

    ptr transmogForging2        [[name("Second Transmog Forging Pointer")]];

    // @ 0xAC0
    ptr zenithWeaponForging     [[name("Zenith Weapon Forging Pointer")]];
    ptr armorZenithForging     [[name("Zenith Armor Forging")]];

    unk_ptr hd_dll_af8d66;
    unk_ptr hd_dll_af8dc1;
    unk_ptr hd_dll_af8dc7;      // @ 0xAD0
    unk_ptr hd_dll_af8d60;
    unk_ptr hd_dll_af7da4;
    unk_ptr hd_dll_af7daa;
    unk_ptr hd_dll_af8e16;      // @ 0xAE0
    unk_ptr hd_dll_af8e5e;
    unk_ptr hd_dll_af7b6d;
    unk_ptr hd_dll_af59b3;
    unk_ptr hd_dll_af46e9;      // @ 0xAF0
    unk_ptr hd_dll_af8eae;
    unk_ptr hd_dll_af8eb4;
    unk_ptr hd_dll_af8eba;
    unk_ptr hd_dll_af8f01;      // @ 0xB00
    unk_ptr hd_dll_af4709;
    unk_ptr hd_dll_af8f07;
    unk_ptr hd_dll_af8f0d;
    unk_ptr hd_dll_af8f13;      // @ 0xB10
    unk_ptr hd_dll_af8f19;
    unk_ptr hd_dll_af4729;
    unk_ptr hd_dll_af8f1f;
    unk_ptr hd_dll_af8f25;      // @ 0xB20
    unk_ptr hd_dll_af8f2b;
    unk_ptr hd_dll_af8f31;

    ptr specialShops            [[name("Special Shops Pointer")]];

    unk_ptr hd_dll_af4749;      // @ 0xB30
    unk_ptr hd_dll_af4772;
    unk_ptr hd_dll_af8f80;
    unk_ptr hd_dll_af8fca;
    unk_ptr hd_dll_af8fd0;      // @ 0xB40
    unk_ptr hd_dll_af8fd6;
    unk_ptr hd_dll_af47db;
    unk_ptr hd_dll_af8fdc;
    unk_ptr hd_dll_af8ff6;      // @ 0xB50
    unk_ptr hd_dll_af903a;
    unk_ptr hd_dll_af9088;
    unk_ptr hd_dll_af4794;
    unk_ptr hd_dll_af90cc;      // @ 0xB60
    unk_ptr hd_dll_af90d2;
    unk_ptr hd_dll_af90d8;
    unk_ptr hd_dll_af90de;
    unk_ptr hd_dll_af90e4;      // @ 0xB70
    unk_ptr hd_dll_af90ea;
    unk_ptr hd_dll_af90f0;
    unk_ptr hd_dll_af8f37;
    unk_ptr hd_dll_af8f3d;      // @ 0xB80
    unk_ptr hd_dll_af59b9;
    unk_ptr hd_dll_af9107;
    unk_ptr hd_dll_af91ba;
    unk_ptr hd_dll_af91e4;      // @ 0xB90
    unk_ptr hd_dll_af9323;
    unk_ptr hd_dll_af9399;
    unk_ptr hd_dll_af93fc;
    unk_ptr hd_dll_af9402;      // @ 0xBA0
    unk_ptr hd_dll_af9450;
    unk_ptr hd_dll_af9408;
    unk_ptr hd_dll_af59bf;
};

struct mhfdat_header {
    signature sig               [[name("File header signature")]];
    ptr_table ptrs              [[name("Top level pointer table")]];
};

mhfdat_header header @ 0x0      [[name("mhfdat Header")]];

str __header_fail_msg = "File header does not match expected mhfdat header";

std::assert_warn(header.sig.header1 == 0x1A66686D, __header_fail_msg);
std::assert_warn(header.sig.header2 == 0x00000059, __header_fail_msg);
std::assert_warn(header.sig.header3 == 0x00000BC8, __header_fail_msg);
