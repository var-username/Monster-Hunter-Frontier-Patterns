#pragma once

#include <misc/s32p.pat>

#ifndef __ITEMDATA
// Define plusone if it wasn't defined in itemdata.hexpat
// Add 1 to n (Used for pattern formatting)
fn plusone (u8 n) {
	return n+1;
};
#endif

// Multiply n by 10 (Used for pattern formatting)
fn timesten (u8 n) {
	return n*10;
};

// 0x34 is the size of MeleeWeaponEntry
fn meleeNameWE (auto n) {
	u16 weapon_id = (($-header.ptrs.meleeWeapons) / 0x34);
	str weapon_name = rIPPS(header.ptrs.meleeWeaponNames, weapon_id);
	return std::format("{:04X} | {}", weapon_id, weapon_name);
};

// 0x3C is the size of RangedWeaponEntry
fn rangedNameWE (auto n) {
	u16 weapon_id = (($-header.ptrs.rangedWeapons) / 0x3C);
	str weapon_name = rIPPS(header.ptrs.rangedWeaponNames, weapon_id);
	return std::format("{:04X} | {}", weapon_id, weapon_name);
};
	
// TODO: Maybe replace these functions with enums?
// It won't look as pretty but it'd make a bit more sense
fn className (u8 n) {
	str ret = "!!Unknown!!";

	match (n) {
		(0x00): ret = "Great Sword";
		(0x01): ret = "Heavy Bowgun";
		(0x02): ret = "Hammer";
		(0x03): ret = "Lance";
		(0x04): ret = "Sword and Shield";
		(0x05): ret = "Light Bowgun";
		(0x06): ret = "Dual Blades";
		(0x07): ret = "Long Sword";
		(0x08): ret = "Hunting Horn";
		(0x09): ret = "Gunlance";
		(0x0A): ret = "Bow";
		(0x0B): ret = "Tonfa";
		(0x0C): ret = "Switch Axe F";
		(0x0D): ret = "Magnet Spike";
	}

	return ret;
};
	
fn elementName (u8 n) {
	str ret = "!!Unknown!!";

	match (n) {
		(0x00): ret = "None";
		(0x01): ret = "Fire";
		(0x02): ret = "Water";
		(0x03): ret = "Thunder";
		(0x04): ret = "Dragon";
		(0x05): ret = "Ice";
		(0x06): ret = "Flame";
		(0x07): ret = "Light";
		(0x08): ret = "Thunder Pole";
		(0x09): ret = "Tenshou";
		(0x0A): ret = "Okiko";
		(0x0B): ret = "Black Flame";
		(0x0C): ret = "Kanade";
		(0x0D): ret = "Darkness";
		(0x0E): ret = "Crimson Demon";
		(0x0F): ret = "Wind";
		(0x10): ret = "Sound";
		(0x11): ret = "Burning Zero";
		(0x12): ret = "Emperor's Roar";
	}
	
	return ret;
};
	
fn ailmentName (u8 n) {
	str ret = "!!Unknown!!";

	match (n) {
		(0x00): ret = "None";
		(0x01): ret = "Poison";
		(0x02): ret = "Paralysis";
		(0x03): ret = "Sleep";
		(0x04): ret = "Blast";
	}

	return ret;
};
	
fn eqType (u8 n) {
	str ret = "!!Unknown!!";

	match (n) {
		(0x00): ret = "General";
		(0x01): ret = "SP";
		(0x02): ret = "Gou";
		(0x04): ret = "Evolution";
		(0x08): ret = "HC";
		(0x24): ret = "Ravi";
	}
	
	return ret;
};
	
struct MeleeWeaponEntry {
	u16 modelId [[color("0088FF")]];
	u8 rarity [[format("plusone"), color("22FF22")]];
	u8 classId [[format("className"), color("0088FF")]];
	
	u32 zennyCost [[
		comment("Seems to be twice what Ferias reports"), 
		color("22FF22")
	]];

	u16 sharpnessId [[color("FFFF00")]];

	u16 rawDamage [[
		comment("In-game attack is raw damage * some multiplier."), 
		color("22FF22")
	]]; 

	u16 defense [[color("22FF22")]];
	s8 affinity [[color("22FF22")]];

	u8 elementId [[format("elementName"), color("00FF00")]];
	u8 eleDamage [[format("timesten"), color("00FF00")]];

	u8 ailmentId [[format("ailmentName"), color("00FF00")]];
	u8 ailDamage [[format("timesten"), color("00FF00")]];

	u8 slots [[color("00FF00")]];

	u8 Weapon_attribute [[
		name("Weapon Attribute"),
		comment("Could be secondary weapon attribute, such as Swaxe Phial type?"),
		color("FF0000")
	]]; 
	
	u8 unk15 [[ 
		comment("Maybe related to particle effects? 2 for dark effects? 1 for ice?"), 
		color("FF0000")
	]];

	u16 upgradePath [[
		comment("Maybe what weapon it upgrades from, how many indecies to look back. 0xFF for none?"), 
		color("FF0000")
	]]; 

	u16 otherModel [[
		comment("Often the same or similar to modelId. Maybe drawn modelId?"), 
		color("FF0000")
	]]; 

	u8 eqType [[format("eqType"), color("FFFF00")]]; 

	u8 unk1B;
	u32 Length; 
	u32 Weapon_type [[comment("it define if its zenith, prayer, grank, exotic, gou, etc..."), color("FF0000")]];
	
	u16 Visual_effects [[
		comment("Seems to be related to weapon visual effects"),
		color("FF0000")
	]]; 
	
	u16 unk26;
	u8 unk28; 
	u8 unk29; 
	u8 unk2A; 
	u8 zeroF [[comment("Always 0F?"), color("FF0000")]];
	u32 unk2C; 
	u16 zenithSkill;
	padding[2];
} [[format("meleeNameWE")]];
	
struct RangedWeaponEntry {
	u16 modelId;
	u8 rarity [[format("plusone")]];
	u8 maxSlotsMaybe;
	u8 classId [[format("className")]];
	u8 unk05;
	u8 eq [[format("eqType")]];
	u8 unk07;
	u32 unk08; 
	u32 Weapon_type; 
	u32 unk10;
	u32 zennyCost;
	u16 rawDamage;
	u16 defense;
	u8 recoilMaybe;
	u8 slots;
	s8 affinity;
	u8 sortOrderMaybe;
	u8 Weapon_attribute [[comment("define gunners shot?")]];
	u8 elementId [[format("elementName")]];
	u8 eleDamage [[format("timesten")]];
	u8 unk23;
	u32 unk24; u32 bullet; 
	u32 unk2C; u32 unk30;
	u32 unk34; u32 unk38;
} [[format("rangedNameWE")]];

// [mhfo-hd.dll + 0xaf49a9]
MeleeWeaponEntry meleeData 
	[ while (std::mem::read_signed($, 2) != -1) ] 
	@ header.ptrs.meleeWeapons [[name("Melee Weapon Data")]];

// [mhfo-hd.dll + 0xaf4a3a]
RangedWeaponEntry rangedData 
	[ while (std::mem::read_signed($, 2) != -1) ] 
	@ header.ptrs.rangedWeapons [[name("Ranged Weapon Data")]];
