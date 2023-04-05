#pragma once

bitfield equipableBy {
	isMaleEquip: 1; isFemaleEquip: 1;
	isBladeEquip: 1; isGunnerEquip: 1;
	bool1: 1; isSPEquip: 1;
	bool3: 1; bool4: 1;
};

struct ArmorDataEntry {
	s16 modelIdMale; s16 modelIdFemale;
	equipableBy bitfld;
	u8 rarity; u8 maxLevel;
	u8 unk07 [[hidden]]; 
	u16 unk08 [[hidden]]; 
	u16 unk0A [[hidden]]; 
	u32 zennyCost;
	u16 unk10 [[hidden]];
	u16 baseDefense;
	s8 fireRes; s8 waterRes;
	s8 thunderRes; s8 dragonRes;
	s8 iceRes;
	u8 unk19 [[hidden]]; u8 unk1A [[hidden]];
	u8 baseSlots; u8 maxSlots;
	u8 sthEventCrown;
	u16 unk1E [[hidden]];
	u32 unk20 [[hidden]]; 
	u32 unk24 [[hidden]]; 
	u16 unk28 [[hidden]];
	u8 skillId1; s8 skillPts1;
	u8 skillId2; s8 skillPts2;
	u8 skillId3; s8 skillPts3;
	u8 skillId4; s8 skillPts4;
	u8 skillId5; s8 skillPts5;
	u32 sthHiden;
	u32 unk38 [[hidden]]; 
	u16 unk3C [[hidden]];
	u8 unk3E [[hidden]]; u8 unk3F [[hidden]]; 
	u32 unk40 [[hidden]]; 
	u16 unk44 [[hidden]]; u16 unk46 [[hidden]];
};

// [mhfo-hd.dll + 0xaf4812]
ArmorDataEntry headEntries[while(std::mem::read_signed($,2)!=-1)] @ soHead
[[name("Head Armor Data")]];

// [mhfo-hd.dll + 0xaf4855]
ArmorDataEntry bodyEntries[while(std::mem::read_signed($,2)!=-1)] @ soBody
[[name("Body Armor Data")]];

// [mhfo-hd.dll + 0xaf4896]
ArmorDataEntry armEntries[while(std::mem::read_signed($,2)!=-1)] @ soArm
[[name("Arm Armor Data")]];

// [mhfo-hd.dll + 0xaf48d7]
ArmorDataEntry waistEntries[while(std::mem::read_signed($,2)!=-1)] @ soWaist
[[name("Waist Armor Data")]];

// [mhfo-hd.dll + 0xaf4925]
ArmorDataEntry legEntries[while(std::mem::read_signed($,2)!=-1)] @ soLeg
[[name("Leg Armor Data")]];
