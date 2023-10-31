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
};

struct SupplyItem {
    itemId item;
    u16 quantity;
};

struct GatherItem {
    u16 rate;
    itemId item;
};

struct RewardTable {
    u8 tableId;
    u8;
    u16;
    u32 tableOffset;
    RewardItem items[while(std::mem::read_unsigned($,2)!=0xFFFF)];
};

struct LargeMonsterSpawn {
    MonsterId monster;
    padding[3];
    u32 spawnAmount;
    u32 spawnStage;
    padding[0x10];
    u32;
    float xPos;
    float yPos;
    float zPos;
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

ptr questTypeFlagsPtr @ 0x0;
ptr loadedStagesPtr @ 0x4;
ptr supplyBoxPtr @ 0x8;
ptr rewardPtr @ 0xC;
u16 subSupplyBoxPtr @ 0x10;
u8 unk0 @ 0x12 [[hidden]];
u8 subSupplyBoxLen @ 0x13;
ptr questAreaPtr @ 0x14;
ptr largeMonsterPtr @ 0x18;
ptr areaFloats @ 0x1C;
ptr unkFloats1 @ 0x20;
ptr baseCampPtr @ 0x24;
ptr unkPtr4 @ 0x28 [[hidden]];
ptr unkPtr5 @ 0x2C [[hidden]];
ptr unkPtr6 @ 0x30 [[hidden]];
ptr unkPtr7 @ 0x34 [[hidden]];
ptr gatheringPointers @ 0x38;
ptr unkPtr8 @ 0x3C [[hidden]];
ptr unkPtr9 @ 0x40 [[hidden]];

u16 questSizeMulti @ 0x44;
u16 unk46 @ 0x46 [[hidden]];
u32 statTable1 @ 0x48;
u32 mainRankPoints @ 0x4C;
u32 unk50 @ 0x50 [[hidden]];
u32 subARankPoints @ 0x54;
u32 subBRankPoints @ 0x58;
u32 unk5C @ 0x5C [[hidden]];
u8 statTable2 @ 0x61;

u8 unkC0 @ 0xC0 [[hidden]];
u8 MusicModeFlag @ 0xC1;
u8 QuestLocaleFlags @ 0xC2;
u8 unkC3 @ 0xC3 [[hidden]];
u8 RankingID @ 0xC4;
u8 unkC5 @ 0xC5 [[hidden]];
u16 unkC6 @ 0xC6 [[hidden]];
u16 RankBand0 @ 0xC8;
u16 unkCA @ 0xCA [[hidden]];
u32 QuestFee @ 0xCC;
u32 RewardMain @ 0xD0;
u32 CartsOrRewardReduction @ 0xD4;
u16 RewardA @ 0xD8;
u16 RewardB @ 0xDA;

u16 HardHunterRankReq @ 0xDE;
u32 QuestTime @ 0xE0;
u32 QuestMap @ 0xE4;
ptr QuestStringsPtr @ 0xE8;
QuestText questText @ QuestStringsPtr;

u16 QuestID @ 0xEE;
QuestObj QuestObjectives[3] @ 0xF0;
u16 questAutomaticSkill @ 0xF2;
u8 unk108 @ 0x108 [[hidden]]; 
u8 unk109 @ 0x109 [[hidden]];
u16 JoinRankMin @ 0x10C;
u16 JoinRankMax @ 0x10E;
u16 PostRankMin @ 0x110;
u16 PostRankMax @ 0x112;

u16 gatheringTablesQty @ 0x16C;
u16 unk16E @ 0x16E [[hidden]];
u8 area1zones @ 0x170;
u8 area2zones @ 0x171;
u8 area3zones @ 0x172;
u8 area4zones @ 0x173;

// Interception Settings
if (QuestObjectives[0].goalType == questObjType::SlayAll) {
    u8 monsterVariant1 @ 0x176;
    u8 monsterVariant2 @ 0x177;
    u8 monsterVariant3 @ 0x178;
    MonsterId monsters[5] @ 0x179;
}

// Quest and Monster Variations
u8 monsterVariants[3] @ 0x150;
u8 mapVariant @ 0x153;
itemId requiredItemType @ 0x154;
u8 requiredItemCount @ 0x156;
u8 questVariant1 @ 0x157;
u8 questVariant2 @ 0x158;
u8 questVariant3 @ 0x159;
u8 questVariant4 @ 0x15A;

u32 questClearsAllowed @ 0x184;
MonsterId questMonsterIcon @ 0x188;

// Forced equipment section (size 0x30)
// Attachments are +0x80 for some reason
u16 legsAndAttach[4] @ 0x11C;
u16 weaponAndAttach[4] @ $;
u16 headAndAttach[4] @ $;
u16 chestAndAttach[4] @ $;
u16 armsAndAttach[4] @ $;
u16 waistAndAttach[4] @ $;

u32 unk14C @ 0x14C [[hidden]];

u32 allowedEquipBitmask @ 0x160;
