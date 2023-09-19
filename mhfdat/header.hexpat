#pragma once

#include <misc/types.pat>
#include <mhfdat/decompile/decompile_pointers.hexpat>

struct signature {
    u32 header1 [[comment("Must equal 1A 66 68 6D")]];
    u32 header2 [[comment("Must equal 00 00 00 59")]];
    padding[4];
    u32 header3 [[comment("Must equal 00 00 0B C8")]];
};

struct ptr_table {
    ptr important_nums      [[name("Important Numbers Pointer")]];
    padding[0x14];

    unk_ptr hd_dll_af5f9b;
    
    padding[0x8];
    
    ptr armorForging        [[name("Armor Forging Pointer")]]; 
    ptr otherWeaponForging  [[name("Other Weapon Forging Pointer")]];
    ptr weaponUpgradePath   [[name("Weapon Upgrade Path Pointer")]];
    
    unk_ptr hd_dll_af47d5;
    unk_ptr hd_dll_af47d8;
    unk_ptr hd_dll_af47e1;

    ptr armorUpgradeMats    [[name("Armor Upgrade Materials Pointer")]];

    ptr headArmor           [[name("Head Armor Data Pointer")]];
    ptr bodyArmor           [[name("Body Armor Data Pointer")]];
    ptr armArmor            [[name("Arm Armor Data Pointer")]];
    ptr waistArmor          [[name("Waist Armor Data Pointer")]];
    ptr legArmor            [[name("Leg Armor Data Pointer")]];
};

struct mhfdat_header {
    signature sig [[name("File header signature")]];
    ptr_table ptrs [[name("Top level pointer table")]];
};

mhfdat_header header @ 0x0 [[name("mhfdat Header")]];

str __header_fail_msg = "File header does not match expected mhfdat header";

std::assert_warn(header.sig.header1 == 0x1A66686D, __header_fail_msg);
std::assert_warn(header.sig.header2 == 0x00000059, __header_fail_msg);
std::assert_warn(header.sig.header3 == 0x00000BC8, __header_fail_msg);
