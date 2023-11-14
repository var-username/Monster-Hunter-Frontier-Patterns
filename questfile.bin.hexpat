#include <misc/MapIDs.hexpat>
#include <misc/MonsterIDs.hexpat>
#include <misc/ItemIDs.hexpat>
#include <misc/types.pat>
#include <misc/s32p.pat>

#include <quest/objective.hexpat>

struct QuestText {
    s32p title;
    s32p textMain;
    s32p textSubA;
    s32p testSubB;
    s32p successCond;
    s32p failCond;
    s32p contractor;
    s32p description;
};

struct RewardItem {
    u16 rate;
    ItemID item;
    u16 quantity;
} [[single_color]];

struct SupplyItem {
    ItemID item;
    u16 quantity;
} [[single_color]];

struct GatherItem {
    u16 rate;
    ItemID item;
} [[single_color]];

struct RewardTable {
    u8 tableId;
    u8;
    u16;
    u32 tableOffset;
    RewardItem items[while(std::mem::read_signed($,2)!=-1)] @ tableOffset;
} [[single_color]];

struct LargeMonsterSpawn {
    MonsterID monster;
    if(monster == 0xFF) {continue;}
    padding[3];
    u32 spawnAmount;
    u32 spawnStage;
    padding[0x10];
    u32;
    float xPos;
    float yPos;
    float zPos;
    padding[0x10];
};

struct MinionSpawn {
    MonsterID monster;
    padding[1];
    u16 spawnToggle;
    u32 spawnAmount;
    u32;
    padding[0x10];
    u32;
    float xPos;
    float yPos;
    float zPos;
    padding[0x10];
};

struct Stage {
    u32 stageID;
    padding[12];
};

struct monIDPadd3 {
    MonsterID;
    padding[3];
};

struct mapSection {
    u32 loadedStage;
    u32;
    ptr spawnTypes;
    ptr spawnStats;

    monIDPadd3 monsterSpawns[while(std::mem::read_signed($,2)!=-1)]
        @ spawnTypes;

    MinionSpawn minionSpawns[while(std::mem::read_signed($,2)!=-1)]
        @ spawnStats;
};

struct ptMapSection {
    ptr ptr;
    mapSection section[while(std::mem::read_unsigned($,4)!=0)] @ ptr;
    u16 unk @ (addressof(section) + sizeof(section) + 4);
};

struct MapZones {
    ptMapSection mapSections[while(std::mem::read_unsigned($,4)!=0)];
};

struct largeMonsterPointers{
    padding[8];
    ptr largeMonsterIDs;
    ptr largeMonsterSpawns;

    monIDPadd3 monsterIDs[5] @ largeMonsterIDs;
    LargeMonsterSpawn monsterSpawns[5] @ largeMonsterSpawns;
};

struct floatSet {
    s16 targetStageId1;
    if (targetStageId1 == -1) {
        break;
    }
    s16 stageVariant;
    float This_xPos;
    float This_yPos;
    float This_zPos;
    float transitionBox[5];
    float Target_xPos;
    float Target_yPos;
    float Target_zPos;
    // It's definitely a rotation, but the datatype is unknown
    s16 Target_rotation[2];
};

struct playerAreaChange {
    ptr floatsPtr;
    
    // Don't place floats if pointer is null
    if (floatsPtr) {
        floatSet floats[while(std::mem::read_signed($,4)!=-1)] @ floatsPtr;
    }
};

struct AreaMappings {
    float Area_xPos;
    float Area_zPos;
    padding[8];
    float Base_xPos;
    float Base_zPos;
    float kn_Pos;
    padding[4];
};

struct gatheringPoint{
    // I'm not aware of another way of reading a float without placing a pat
    // If xPos would be float(-1.0), don't place anything
    if (std::mem::read_unsigned($,4) == 0xBF800000) {
        return;
    } 
    float xPos;
    float yPos;
    float zPos;
    float scope;
    u16 gatheringID;
    u16 maxCount;
    padding[2];
    u16 minCount;
};

struct ptGatheringPoint {
    ptr ptr;

    // Ignore null pointers
    if (ptr) {
        gatheringPoint inf[4] @ ptr;
    }
};

struct QuestFileHeader {
    ptr questTypeFlagsPtr;
    ptr loadedStagesPtr;
    ptr supplyBoxPtr;
    ptr rewardPtr;
    u16 subSupplyBoxPtr;
    u8 [[hidden]];
    u8 subSupplyBoxLen;
    ptr questAreaPtr;
    ptr largeMonsterPtr;
    ptr areaFloats; // areaChange
    ptr unkFloats1; //AreaMapping
    ptr baseCampPtr; //MapInfo
    ptr unk28; //gatherPoints
    ptr unk2C; //BaseCampInf
    ptr unk30; //someStrings
    ptr unk34; //FixedCords1
    ptr gatheringPointers; 
    ptr unk3C; //fixedCords2
    ptr unk40; //FixedInf
};

QuestFileHeader header @ 0x0;

// 1.1 General Quest Properties
// genQuestProp
u16 questSizeMulti @ 0x44
[[name("Quest Monster size multiplier"),
  comment("% of normal size. Decimal 100 = 100%")]];
u16 unk46 @ 0x46 [[hidden]]; //SizeRange
u32 statTable1 @ 0x48; //MonsStatTable1
u32 mainRankPoints @ 0x4C; 
u32 unk50 @ 0x50 [[hidden]]; //kn
u32 subARankPoints @ 0x54;
u32 subBRankPoints @ 0x58;
u32 unk5C @ 0x5C [[hidden]]; //QuestTypeID MonsterClassID
// padding[1];
u8 statTable2 @ 0x61;

u8 questKn1 @ 0x73;
u16 questKn2 @ 0x74;
u16 questKn3 @ 0x76;

// qua
u16 gatheringTablesQty @ 0x78;
u16 unk7A @ 0x7A [[hidden]];
u8 area1zones @ 0x7C;
u8 area2zones @ 0x7D;
u8 area3zones @ 0x7E;
u8 area4zones @ 0x7F;

u16 unk80 @ 0x80 [[hidden]];
u16 unk82 @ 0x82 [[hidden]];
u16 unk84 @ 0x84 [[hidden]];

// 1.2 Main Quest Properties
u8 unkC0 @ 0xC0 [[hidden]];
u8 MusicModeFlag @ 0xC1;
u8 QuestLocaleFlags @ 0xC2;
u8 unkC3 @ 0xC3 [[hidden]];
u8 RankingID @ 0xC4;
u8 unkC5 @ 0xC5 [[hidden]];
u16 unkC6 @ 0xC6 [[hidden]];
u16 RankBand0 @ 0xC8;
u16 unkCA @ 0xCA [[hidden]]; //QuestTypeID untatID
u32 QuestFee @ 0xCC;
u32 RewardMain @ 0xD0;
u32 CartsOrRewardReduction @ 0xD4;
u16 RewardA @ 0xD8;
//padding[4]
u16 rewardB @ 0xDC;

u16 HardHunterRankReq @ 0xDE;
u32 QuestTime @ 0xE0;
qMapID QuestMap @ 0xE4;
ptr QuestStringsPtr @ 0xE8;
u16 unkEC @ 0xEC [[hidden]];
u16 QuestID @ 0xEE;
QuestObj QuestObjectives[3] @ 0xF0;
//u16 questAutomaticSkill @ 0xF2;
u8 unk108 @ 0x108 [[hidden]]; 
u8 unk109 @ 0x109 [[hidden]];
u16 JoinRankMin @ 0x10C;
u16 JoinRankMax @ 0x10E;
u16 PostRankMin @ 0x110;
u16 PostRankMax @ 0x112;

// 1.4 Forced Equipment
// Forced equipment section (size 0x30)
// Attachments are +0x80 for some reason
u16 legsAndAttach[4] @ 0x11C;
u16 weaponAndAttach[4] @ 0x124;
u16 headAndAttach[4] @ 0x12C;
u16 chestAndAttach[4] @ 0x134;
u16 armsAndAttach[4] @ 0x13C;
u16 waistAndAttach[4] @ 0x144;

u32 unk14C @ 0x14C [[hidden]];

// 1.3 Quest and Monster Variations
u8 monsterVariants[3] @ 0x150;
u8 mapVariant @ 0x153;
ItemID requiredItemType @ 0x154;
u8 requiredItemCount @ 0x156;
u8 questVariant1 @ 0x157;
u8 questVariant2 @ 0x158;
u8 questVariant3 @ 0x159;
u8 questVariant4 @ 0x15A;

u32 allowedEquipBitmask @ 0x160;

// Rewards Focus
u32 mainPoints @ 0x164;
u32 subAPoints @ 0x168;
u32 subBPoints @ 0x16C;

ItemID items[3] @ 0x170;
// padding[3];
MonsterID monsterID179 @ 0x179;

// Interception Settings
if (QuestObjectives[0].goalType == questObjType::SlayAll) {
    u8 monsterVariant1 @ 0x176;
    u8 monsterVariant2 @ 0x177;
    u8 monsterVariant3 @ 0x178;
    MonsterID monsters[5] @ 0x179;
}

u32 questClearsAllowed @ 0x184;
//MonsterID questMonsterIcon @ 0x188; // I think this is wrong

QuestText questText @ QuestStringsPtr;

// 2.0 Loaded Stages
Stage loadedStages[while($ < header.unk34)] @ header.loadedStagesPtr;

// 3.0 Supply Box
SupplyItem supplies[while(std::mem::read_unsigned($,2))] 
    @ header.supplyBoxPtr;

// 4.0 Reward
RewardTable rewards[while(std::mem::read_signed($,2)!=-1)] 
    @ header.rewardPtr;

// 5.0 Sub Supply Box
/*
    //  This is incorrect. The real subSupplies are appended to the end 
    //  of the normal suppies. Looking into how the game knows how they're
    //  separate
    SupplyItem subSupplies[while($ < header.subSupplyBoxPtr + header.subSupplyBoxLen)]
        @ header.subSupplyBoxPtr;
*/

// 6.0 Quest Area
MapZones mapZones @ header.questAreaPtr;

// 7.0 Large Monster
largeMonsterPointers largeMonsterPointers @ header.largeMonsterPtr;

// 8.0 Area Change
playerAreaChange PlayerAreaChange[area1zones] @ header.areaFloats;

// 9.0 AreaMappingFloats

// This while loop probably isn't the best way to do this,
// but it's what the 010 pattern does.
AreaMappings areaMappings[while($<header.areaFloats)] @ header.unkFloats1;

// 10.0 Map Information
qMapID mapID @ header.baseCampPtr;
u32 returnBC_ID @ header.baseCampPtr + sizeof(qMapID);

// 11.0 Gathering Points per Area

// The area1zones length is an assumption, just looks better than a loop
ptGatheringPoint gatheringPerArea[area1zones] @ header.unk28;
