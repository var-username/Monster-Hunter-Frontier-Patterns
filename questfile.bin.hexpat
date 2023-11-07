#include <misc/MonsterIds.hexpat>
#include <misc/types.pat>
#include <misc/s32p.pat>

/// Known quest objective types
enum questObjType : u32 {
    None = 0x00000000,
    Hunt = 0x00000001,
    Capture = 0x00000101,
    Slay = 0x00000201,
    Damage = 0x00008004,
    SlayOrDamage = 0x00018004,
    SlayAll = 0x00040000,
    SlayTotal = 0x00020000,
    Deliver = 0x00000002,
    BreakPart = 0x00004004,
    DeliverFlag = 0x00001002,
    Esoteric_Action = 0x00000010
};

using itemId;
/// Format ItemID to make it easier to look up on Ferias
fn fmtItemId(itemId n) {
    return std::format("{:04X}", n);
};
using itemId = u16 [[format("fmtItemId")]];

struct QuestObj {
    questObjType goalType;
    if (goalType == questObjType::None) {
        padding[4];
    } else {
        if (goalType == questObjType::Hunt || 
            goalType == questObjType::Capture || 
            goalType == questObjType::Slay || 
            goalType == questObjType::Damage ||
            goalType == questObjType::BreakPart
        ) {
            // Goal target is a monster, reference enum
            MonsterId goalTarget;
            padding[1];
        } else if (goalType == questObjType::Deliver) {
            // Goal target is an item, format as such
            itemId goalTarget;
        } else {
            u16 goalTarget;
        }

        if(goalType == questObjType::BreakPart) {
            // Refers to a part of the monster
            // ID -> Part mapping varies with monster skeleton
            u16 goalPart;
        } else {
            // How many items to deliver or monsters to hunt or whatever
            u16 goalCount;
        }
    }
};

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
    itemId item;
    u16 quantity;
} [[single_color]];

struct SupplyItem {
    itemId item;
    u16 quantity;
} [[single_color]];

struct GatherItem {
    u16 rate;
    itemId item;
} [[single_color]];

struct RewardTable {
    u8 tableId;
    u8;
    u16;
    u32 tableOffset;
    RewardItem items[while(std::mem::read_signed($,2)!=-1)] @ tableOffset;
} [[single_color]];

struct LargeMonsterSpawn {
    MonsterId monster;
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
    MonsterId monster;
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
    MonsterId;
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
    ptr largeMonsterIds;
    ptr largeMonsterSpawns;

    monIDPadd3 monsterIds[5] @ largeMonsterIds;
    LargeMonsterSpawn monsterSpawns[5] @ largeMonsterSpawns;
};

struct floatSet {
    s32 targetStageId1;
    if (targetStageId1 == -1) {
        break;
    }
    float This_xPos;
    float This_yPos;
    float This_zPos;
    float kn[5];
    float Target_xPos;
    float Target_yPos;
    float Target_zPos;
    u32 direction;
};

struct playerAreaChange {
    ptr floatsPtr;
    floatSet floats[while(std::mem::read_signed($,4)!=-1)] @ floatsPtr;
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
    unk_ptr unkFloats1; //AreaMapping
    ptr baseCampPtr; //MapInfo
    unk_ptr unk28; //gatherPoints
    unk_ptr unk2C; //BaseCampInf
    unk_ptr unk30; //someStrings
    unk_ptr unk34; //FixedCords1
    ptr gatheringPointers; 
    unk_ptr unk3C; //fixedCords2
    unk_ptr unk40; //FixedInf
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
u32 QuestMap @ 0xE4; //qMapID QuestMap_onlyMonitor
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
itemId requiredItemType @ 0x154;
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

itemId items[3] @ 0x170;
// padding[3];
MonsterId monsterId179 @ 0x179;

// Interception Settings
if (QuestObjectives[0].goalType == questObjType::SlayAll) {
    u8 monsterVariant1 @ 0x176;
    u8 monsterVariant2 @ 0x177;
    u8 monsterVariant3 @ 0x178;
    MonsterId monsters[5] @ 0x179;
}

u32 questClearsAllowed @ 0x184;
//MonsterId questMonsterIcon @ 0x188; // I think this is wrong

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
    /*  This is incorrect. The real subSupplies are appended to the end 
        of the normal suppies. Looking into how the game knows how they're
        separate
    */
    SupplyItem subSupplies[while($ < header.subSupplyBoxPtr + header.subSupplyBoxLen)]
        @ header.subSupplyBoxPtr;
*/

// 6.0 Quest Area
MapZones mapZones @ header.questAreaPtr;

// 7.0 Large Monster
largeMonsterPointers largeMonsterPointers @ header.largeMonsterPtr;

// 8.0 Area Change
playerAreaChange PlayerAreaChange[area1zones] @ header.areaFloats;
