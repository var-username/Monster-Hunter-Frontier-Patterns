#pragma once

#include <misc/s32p.pat>

fn meleeName (u16 n) {
    return rIPPS(soStringMelee, n);
};

fn getEquipType(u8 n) {
		 if (n==0x00) return "Legs";
	else if (n==0x01) return "";
	else if (n==0x02) return "Head";
	else if (n==0x03) return "Chest";
	else if (n==0x04) return "Arms";
    else if (n==0x05) return "Waist";
	else if (n==0x06) return "Melee";
	else if (n==0x07) return "Ranged";
	else 			  return "!!!ERROR!!!";
};

fn getEquipName(u32 n) {
    u8 equipType = u8 (n);
    u16 equipID = u16 (n>>16);
    
    str equipName = std::format("{:04X}", equipID);
         if (equipType == 0) 
        equipName = rIPPS(soStringLeg, equipID);
    else if (equipType == 2) 
        equipName = rIPPS(soStringHead, equipID);
    else if (equipType == 3)
        equipName = rIPPS(soStringBody, equipID);
    else if (equipType == 4)
        equipName = rIPPS(soStringArm, equipID);
    else if (equipType == 5)
        equipName = rIPPS(soStringWaist, equipID);
    else if (equipType == 6) 
        equipName = rIPPS(soStringMelee, equipID);
    else if (equipName == 7) 
        equipName = rIPPS(soStringRanged, equipID);

    return std::format("{} | {}", getEquipType(equipType), equipName);
};

using WUpgradePath;
fn upgradeName (WUpgradePath n) {
	return rIPPS(soStringMelee, (($-soWUpgradePath)/36));
};

struct RegWUpgrade {
    u16 weaponID [[format("meleeName")]];
    padding[10];
    u16 upgradeMaterial1 [[format("getItemName")]];
    u8 numMaterial1;
    padding[5];
    u16 upgradeMaterial2 [[format("getItemName")]];
    u8 numMaterial2;
    padding[5];
    u16 upgradeMaterial3 [[format("getItemName")]];
    u8 numMaterial3;
    padding[5];
} [[comment("On using the materials listed, the weapon will upgrade to the listed weaponID, if it exists")]];

struct WUpgradePath {
    u16 upgradeMaterial1 [[format("getItemName"), color("8888FF")]];
    u16 numMaterial1 [[color("FF8888")]];
    padding[4];
    u16 upgradeMaterial2 [[format("getItemName"), color("8888FF")]];
    u16 numMaterial2 [[color("FF8888")]];
    padding[4];
    u16 upgradeMaterial3 [[format("getItemName"), color("8888FF")]];
    u16 numMaterial3 [[color("FF8888")]];
    padding[4];
    u16 upgradesTo1 [[format("meleeName")]];
    u16 upgradesTo2 [[format("meleeName")]];
    u16 upgradesTo3 [[format("meleeName")]];
    u16 upgradesTo4 [[format("meleeName")]];
    padding[4];
} [[format("upgradeName"), color("88FF88")]];

struct g50WUpgrade {
    u16 weaponId [[format("meleeName")]];
    u16 level1;
    u16 level2;
    u16 fullSuccRate;
    u32 zennyCost;
    u16 upgradeMaterial1 [[format("getItemName")]];
    u8 numMaterial1;
    padding[5];
    u16 upgradeMaterial2 [[format("getItemName")]];
    u8 numMaterial2;
    padding[5];
    u16 upgradeMaterial3 [[format("getItemName")]];
    u8 numMaterial3;
    padding[9];
};

struct RegAUpgradeRow {
    u16 itemID [[format("getItemName")]];
    u16 lv1Upgrade;
    u16 lv2Upgrade;
    u16 lv3Upgrade;
    u16 lv4Upgrade;
    u16 lv5Upgrade;
    u16 lv6Upgrade;
    u16 lv7Upgrade;
};

struct RegA16Upgrade {
    RegAUpgradeRow itemsForUpgrade[16];
    padding[32];
};

struct ExoticA32Upgrade {
    RegAUpgradeRow itemsForUpgrade[32];
    padding[32];
};

struct ExoticA48Upgrade {
    RegAUpgradeRow itemsForUpgrade[48];
    padding[32];
};

struct ExoticA64Upgrade {
    RegAUpgradeRow itemsForUpgrade[64];
    padding[32];
};

struct UnknownCrafting {
    u32 equipID [[color("0088FF"), format("getEquipName")]];
    bool purchaseable @ $-0x03;
	u16 materialID1 [[color("22FF22"), format("getItemName"), comment("Item ID")]];
	u16 materialAmnt1 [[color("FFFF22")]];
	padding[4];
	u16 materialID2 [[color("22FF22"), format("getItemName"), comment("Item ID")]];
	u16 materialAmnt2 [[color("FFFF22")]];
	padding[4];
	u16 materialID3 [[color("22FF22"), format("getItemName"), comment("Item ID")]];
	u16 materialAmnt3 [[color("FFFF22")]];
	padding[4];
    u16 materialID4 [[color("22FF22"), format("getItemName"), comment("Item ID")]];
	u16 materialAmnt4 [[color("FFFF22")]];
    padding[4];
	u16 unk24 [[comment("Some kind of flag?")]];
	padding[2];
	u16 HRreq;
	u16 unk2A [[comment("Some kind of flag?")]];
	bool previewAble;
	padding[3];
	u8 footer [[color("8888FF"), comment("0F")]];
	padding[3];
    u8 unk34 [[comment("W02=exotic, A01=Festi?, A02=Diva?, A03=SP?, A04=hiden, A05=exotic")]];
    padding[3];
} [[color("660066")]];

//WUpgradePath wUpgradePath1[13] @ 0xAE0DC4;
WUpgradePath wUpgradePath[17568] @ soWUpgradePath;

g50WUpgrade g50WeaponUpgrades[81914] @ soG50WUpgrades;
RegA16Upgrade armorUpgrades1[475] @ soRegAUpgrades;
ExoticA32Upgrade exoticAUpgrade1[2] @ 0x17103C0;
RegA16Upgrade armorUpgrades2[(0x1763D20 - 0x1710800)/288] @ 0x1710800;
ExoticA48Upgrade exoticAUpgrade2[1] @ 0x1763D20;
RegA16Upgrade armorUpgrades3[(0x17DE6E0 - 0x1764040)/288] @ 0x1764040;
ExoticA64Upgrade exoticAUpgrade3[1] @ 0x17DE6E0;
RegA16Upgrade armorUpgrades4[(0x1844A40 - 0x17DEB00)/288] @ 0x17DEB00;

UnknownCrafting miscCrafting1[while(std::mem::read_unsigned($, 1)!=0xFF)] @ 0x1848880;
UnknownCrafting miscCrafting2[while(std::mem::read_unsigned($, 1)!=0xFF)] @ 0x188FD80;
UnknownCrafting miscCrafting3[while(std::mem::read_unsigned($, 1)!=0xFF)] @ 0x1894CC0;
UnknownCrafting miscCrafting4[while(std::mem::read_unsigned($, 1)!=0xFF)] @ soForging4;
UnknownCrafting miscCrafting5[while(std::mem::read_unsigned($, 1)!=0xFF)] @ soForging5;


//Unknown struct starting at 0x0156BF40
//maybe evolution weapons?
//Changed from CE, reduced g Cost?

//Test data at 0x0156DB70

struct evoUpgradeSub {
    u16 unkSub0;
    u16 unkSub2;
    padding[4];
    u16 unkSub8;
    padding[2];
} [[single_color, sealed]];

struct evoUpgrade {
    u32 gCost;
    u16 unk04;
    u16 level;
    evoUpgradeSub sub[11];
    u16 unk8C [[comment("Increments with level from 650 to 850")]]; 
    u8 unk8E; padding[1];
    u16 unk90; padding[2];
    u32 unk94 [[comment("Always 33 33 33 3F??")]]; 
    padding[2]; u16 unk9A [[comment("Always 80 3F??")]];
    u32 unk9C [[comment("Always 9A 99 99 3F??")]];
    padding[2]; 
    u16 unkA2 [[comment("Always 20 40??")]];
    u32 unkA4 [[comment("Always 3D 0A B7 3F??")]]; 
    u16 unkA8 [[comment("Increments")]];
    u16 unkAA [[comment("Increments")]];
    u8 unkAC [[comment("Increments with level. 32 32, 33 33, ... in HR")]];
    u8 unkAD [[comment("Increments with level")]];
    padding[2];
};

//evoUpgrade testEvo[10] @ 0x0156DB70;

evoUpgrade evoUpgradesHR[100] @ 0x0156BF40;
evoUpgrade evoUpgradesHR5[100] @ $;
evoUpgrade evoUpgradesGR[100] @ $;
evoUpgrade evoUpgradesZR[100] @ $;
