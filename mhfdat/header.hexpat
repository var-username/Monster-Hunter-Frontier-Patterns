#pragma once

#include <misc/types.pat>
#include <mhfdat/decompile/decompile_pointers.hexpat>

struct signature {
    u32 header1                 [[comment("Must equal 1A 66 68 6D")]];
    u32 header2                 [[comment("Must equal 00 00 00 59")]];
    padding[4];
    u32 header3                 [[comment("Must equal 00 00 0B C8")]];
};

struct ptr_table {
    // + 0x010
    ptr important_nums          [[name("Important Numbers Pointer")]];
    padding[0x14];

    unk_ptr hd_dll_af5f9b;
    
    padding[0x8];
    
    ptr armorForging            [[name("Armor Forging Pointer")]]; 
    ptr otherWeaponForging      [[name("Other Weapon Forging Pointer")]];
    ptr weaponUpgradePath       [[name("Weapon Upgrade Path Pointer")]];
    
    unk_ptr hd_dll_af47d5;
    unk_ptr hd_dll_af47d8;
    unk_ptr hd_dll_af47e1;

    ptr armorUpgradeMats        [[name("Armor Upgrade Materials Pointer")]];

    // + 0x050
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
    unk_ptr hd_dll_af503e;
    unk_ptr hd_dll_af5044;
    unk_ptr hd_dll_af504a;
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

    // + 0x140
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
