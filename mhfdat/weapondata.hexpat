#pragma once

#include <misc/s32p.pat>

// Add 1 to n (Used for pattern formatting)
fn plusone (u8 n) {
	return n+1;
};

// Multiply n by 10 (Used for pattern formatting)
fn timesten (u8 n) {
	return n*10;
};

// 0x34 is the size of MeleeWeaponEntry
fn meleeNameWE (auto n) {
	return rIPPS(soStringMelee, (($-soMelee)/0x34));
};
	
fn className (u8 n) {
		 if (n==0x00) return "Great Sword";
	else if (n==0x01) return "Heavy Bowgun";
	else if (n==0x02) return "Hammer";
	else if (n==0x03) return "Lance";
	else if (n==0x04) return "Sword and Shield";
	else if (n==0x05) return "Light Bowgun";
	else if (n==0x06) return "Dual Blades";
	else if (n==0x07) return "Long Sword";
	else if (n==0x08) return "Hunting Horn";
	else if (n==0x09) return "Gunlance";
	else if (n==0x0A) return "Bow";
	else if (n==0x0B) return "Tonfa";
	else if (n==0x0C) return "Switch Axe F";
	else if (n==0x0D) return "Magnet Spike";
	else 			  return "!!!ERROR!!!";
};
	
fn elementName (u8 n) {
		 if (n==0x00) return "None";
	else if (n==0x01) return "Fire";
	else if (n==0x02) return "Water";
	else if (n==0x03) return "Thunder";
	else if (n==0x04) return "Dragon";
	else if (n==0x05) return "Ice";
	else if (n==0x06) return "Flame";
	else if (n==0x07) return "Light";
	else if (n==0x08) return "Thunder Pole";
	else if (n==0x09) return "Tenshou";
	else if (n==0x0A) return "Okiko";
	else if (n==0x0B) return "Black Flame";
	else if (n==0x0C) return "Kanade";
	else if (n==0x0D) return "Darkness";
	else if (n==0x0E) return "Crimson Demon";
	else if (n==0x0F) return "Wind";
	else if (n==0x10) return "Sound";
	else if (n==0x11) return "Burning Zero";
	else if (n==0x12) return "Emperor's Roar";
	else 			  return "!!!ERROR!!!";
};
	
fn ailmentName (u8 n) {
		 if (n==0x00) return "None";
	else if (n==0x01) return "Poison";
	else if (n==0x02) return "Paralysis";
	else if (n==0x03) return "Sleep";
	else if (n==0x04) return "Blast";
	else 			  return "!!!ERROR!!!";
};
	
fn eqType (u8 n) {
		 if (n==0x00) return "General";
	else if (n==0x01) return "SP";
	else if (n==0x02) return "Gou";
	else if (n==0x04) return "Evolution";
	else if (n==0x08) return "HC";
	else if (n==0x24) return "Ravi";
	else 			  return "!!!ERROR!!!";
};
	
struct MeleeWeaponEntry {
	u16 modelId [[color("0088FF")]];
	u8 rarity [[format("plusone"), color("22FF22")]];
	u8 classId [[format("className"), color("0088FF")]];
	u32 zennyCost [[comment("Seems to be twice what Ferias reports"), color("22FF22")]];
	u16 sharpnessId [[color("FFFF00")]];
	u16 rawDamage [[comment("In-game attack is raw damage * some multiplier. SnS:1.4x, GS:4.8x"), color("22FF22")]]; 
	u16 defense [[color("22FF22")]];
	s8 affinity [[color("22FF22")]];
	u8 elementId [[format("elementName"), color("00FF00")]];
	u8 eleDamage [[format("timesten"), color("00FF00")]];
	u8 ailmentId [[format("ailmentName"), color("00FF00")]];
	u8 ailDamage [[format("timesten"), color("00FF00")]];
	u8 slots [[color("00FF00")]];
	u8 unk14 [[hidden]]; 
	u8 unk15 [[hidden, comment("Maybe related to particle effects? 2 for dark effects? 1 for ice?"), color("FF0000")]];
	u16 upgradePath [[comment("Maybe what weapon it upgrades from, how many indecies to look back. 0xFF for none?"), color("FF0000")]]; 
	u16 otherModel [[comment("Often the same or similar to modelId. Maybe drawn modelId?"), color("FF0000")]]; 
	u8 eqType [[format("eqType"), color("FFFF00")]]; 
	u8 unk1B [[hidden]];
	u32 unk1C [[hidden]]; u32 unk20 [[hidden]];
	u16 unk24 [[color("FF0000")]]; 
	u16 unk26 [[hidden]];
	u8 unk28 [[hidden]]; u8 unk29 [[hidden]]; 
	u8 unk2A [[hidden]]; u8 zeroF [[comment("Always 0F?"), color("FF0000")]];
	u32 unk2C [[hidden]]; u32 unk30 [[hidden]];
} [[format("meleeNameWE")]];
	
struct RangedWeaponEntry {
	u16 modelId;
	u8 rarity [[format("plusone")]];
	u8 maxSlotsMaybe;
	u8 classId [[format("className")]];
	u8 unk05 [[hidden]];
	u8 eq [[format("eqType")]];
	u8 unk07 [[hidden]];
	u32 unk08 [[hidden]]; u32 unk0C [[hidden]]; u32 unk10 [[hidden]];
	u32 zennyCost;
	u16 rawDamage;
	u16 defense;
	u8 recoilMaybe;
	u8 slots;
	s8 affinity;
	u8 sortOrderMaybe;
	u8 unk20 [[hidden]];
	u8 elementId [[format("elementName")]];
	u8 eleDamage [[format("timesten")]];
	u8 unk23 [[hidden]];
	u32 unk24 [[hidden]]; u32 unk28 [[hidden]]; 
	u32 unk2C [[hidden]]; u32 unk30 [[hidden]];
	u32 unk34 [[hidden]]; u32 unk38 [[hidden]];
};

// [mhfo-hd.dll + 0xaf49a9]
MeleeWeaponEntry meleeData[while(std::mem::read_signed($,2)!=-1)] @ soMelee
[[name("Melee Weapon Data")]];

// [mhfo-hd.dll + 0xaf4a3a]
RangedWeaponEntry rangedData[while(std::mem::read_signed($,2)!=-1)] @ soRanged
[[name("Ranged Weapon Data")]];
