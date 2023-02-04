#pragma once

namespace equipData {
	
	u32 numHeadEntries = (eoHead - soHead) / 0x48;
	u32 numBodyEntries = (eoBody - soBody) / 0x48;
	u32 numArmEntries = (eoArm - soArm) / 0x48;
	u32 numWaistEntries = (eoWaist - soWaist) / 0x48;
	u32 numLegEntries = (eoLeg - soLeg) / 0x48;
	
	//u32 totalEntries = headEntries + bodyEntries + armEntries + waistEntries + legEntries;
	
	bitfield btfld {
		isMaleEquip: 1; isFemaleEquip: 1;
		isBladeEquip: 1; isGunnerEquip: 1;
		bool1: 1; isSPEquip: 1;
		bool3: 1; bool4: 1;
	};
	
	struct ArmorDataEntry {
		s16 modelIdMale; s16 modelIdFemale;
		btfld bitfld;
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
	
	ArmorDataEntry headEntries[numHeadEntries] @ soHead;
	ArmorDataEntry bodyEntries[numBodyEntries] @ soBody;
	ArmorDataEntry armEntries[numArmEntries] @ soArm;
	ArmorDataEntry waistEntries[numWaistEntries] @ soWaist;
	ArmorDataEntry legEntries[numLegEntries] @ soLeg;
	
}
