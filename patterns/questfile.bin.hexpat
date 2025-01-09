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
    if (std::mem::read_signed($,2)==0) {
        padding[4];
        continue;
    } else {
        ItemID item;
        u16 quantity;
    }
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
    u32 orientation;
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

struct mapSection {
    u32 loadedStage;
    u32;
    ptr spawnTypes;
    ptr spawnStats;

    varPaddT<MonsterID,3> monsterSpawns[while(std::mem::read_signed($,2)!=-1)]
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

    varPaddT<MonsterID,3> monsterIDs[5] @ largeMonsterIDs;
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
    float range;
    u16 gatheringID;
    u16 maxCount;
    padding[2];
    u16 minCount;
};

struct ptGatheringPoint {
    ptr ptr;

    // Ignore null pointers
    if (ptr != 0) {
        gatheringPoint point[4] @ ptr;
    }
};

enum SpecAc : u16 {
    cooking = 1,
    fishing = 2,
    bluebox = 3,
    digging = 4,
    bed = 5,
    kn6 = 6,
    redbox = 7,
    kn8 = 8
};

struct facPoint {
    padding[2];
    SpecAc type;
    float xPos;
    float yPos;
    float zPos;
    float range;
    u16 kn4; // ID/fishing code
    padding[2];
};

struct facPointBlock {
    facPoint points [while(std::mem::read_unsigned($+4,4) != 0xBF800000)] 
        [[inline]];
    padding[0xC];
    float;
    float;
} [[inline]];

struct gatheringTable {
    GatherItem items[while(std::mem::read_signed($,2)!=-1)];
} [[inline]];

struct generalQuestProperties {
    u16 questSizeMulti
        [[name("Quest Monster size multiplier"),
        comment("% of normal size. Decimal 100 = 100%")]];
    u16 unk46 [[hidden]]; //SizeRange
    u32 statTable1; //MonsStatTable1
    u32 mainRankPoints; 
    u32 unk50 [[hidden]]; //kn
    u32 subARankPoints;
    u32 subBRankPoints;
    u32 unk5C [[hidden]]; //QuestTypeID MonsterClassID
    padding[1];
    u8 statTable2;

    padding[0x11];

    u8 questKn1;
    u16 questKn2;
    u16 questKn3;

    // qua
    u16 gatheringTablesQty;
    u16 unk7A [[hidden]];
    u8 area1zones;
    u8 area2zones;
    u8 area3zones;
    u8 area4zones;

    u16 unk80 [[hidden]];
    u16 unk82 [[hidden]];
    u16 unk84 [[hidden]];
};

struct mainQuestProperties {
    u8 unkC0 [[hidden]];
    u8 MusicModeFlag;
    u8 QuestLocaleFlags;
    u8 unkC3 [[hidden]];
    u8 RankingID;
    u8 unkC5 [[hidden]];
    u16 unkC6 [[hidden]];
    u16 RankBand0;
    u16 unkCA [[hidden]]; //QuestTypeID untatID
    u32 QuestFee;
    u32 RewardMain;
    u32 CartsOrRewardReduction;
    u16 RewardA;
    padding[2];
    u16 rewardB;

    u16 HardHunterRankReq;
    u32 QuestTime;
    qMapID QuestMap;
    ptr QuestStringsPtr;
    u16 unkEC [[hidden]];
    u16 QuestID;
    QuestObj QuestObjectives[3];
    u8 unk108 [[hidden]]; 
    u8 unk109 [[hidden]];
    padding[2];
    u16 JoinRankMin;
    u16 JoinRankMax;
    u16 PostRankMin;
    u16 PostRankMax;

    padding[8];

    // 1.4 Forced Equipment
    // Forced equipment section (size 0x30)
    // Attachments are +0x80 for some reason
    u16 legsAndAttach[4];
    u16 weaponAndAttach[4];
    u16 headAndAttach[4];
    u16 chestAndAttach[4];
    u16 armsAndAttach[4];
    u16 waistAndAttach[4];

    u32 unk14C [[hidden]];

    // 1.3 Quest and Monster Variations
    u8 monsterVariants[3];
    u8 mapVariant;
    ItemID requiredItemType;
    u8 requiredItemCount;
    u8 questVariant1;
    u8 questVariant2;
    u8 questVariant3;
    u8 questVariant4;

    padding[5];

    u32 allowedEquipBitmask;

    // Rewards Focus
    u32 mainPoints;
    u32 subAPoints;
    u32 subBPoints;

    ItemID items[3];
    
    // Interception Settings
    if (QuestObjectives[0].goalType == questObjType::SlayAll) {
        u8 monsterVariant1;
        u8 monsterVariant2;
        u8 monsterVariant3;
        MonsterID monsters[5];
    } else {
        padding[3];
        MonsterID monsterID179;
    }

    padding[0xA];

    u32 questClearsAllowed;
    //MonsterID questMonsterIcon; // I think this is wrong
    
    QuestText questText @ QuestStringsPtr;
};

struct QuestFileHeader {
    ptr questTypeFlagsPtr;
    ptr loadedStagesPtr;
    ptr supplyBoxPtr;
    ptr rewardPtr;
    u16 subSupplyBoxPtr; //EndMessagePtr?
    u8 [[hidden]];
    u8 subSupplyBoxLen;
    ptr questAreaPtr;
    ptr largeMonsterPtr;
    ptr areaTransitionsPtr;
    ptr areaMappingPtr;
    ptr mapInfoPtr;
    ptr gatheringPointsPtr;
    ptr areaFacilitiesPtr;
    ptr unk30; //someStrings
    ptr unk34; //FixedCords1
    ptr gatheringTablesPtr; 
    ptr unk3C; //fixedCords2
    ptr unk40; //FixedInf
};

QuestFileHeader header @ 0x0;

// 1.1 General Quest Properties
generalQuestProperties genQuestProp @ $;

// 1.2 Main Quest Properties
mainQuestProperties MainQuestProperties @ header.questTypeFlagsPtr;

// 2.0 Loaded Stages
Stage loadedStages[while($ < header.unk34)] @ header.loadedStagesPtr; //Player slot spawns?

// 3.0 Supply Box
SupplyItem supplies[24] @ header.supplyBoxPtr;
SupplyItem suppliesSubA[8] @ (header.supplyBoxPtr + 0x60);
SupplyItem suppliesSubB[8] @ (header.supplyBoxPtr + 0x80);

// 4.0 Reward
RewardTable rewards[while(std::mem::read_signed($,2)!=-1)] 
    @ header.rewardPtr;

// 6.0 Quest Area
MapZones mapZones @ header.questAreaPtr;

// 7.0 Large Monster
largeMonsterPointers largeMonsterPointers @ header.largeMonsterPtr;

// 8.0 Area Change
playerAreaChange PlayerAreaChange[genQuestProp.area1zones] 
    @ header.areaTransitionsPtr;

// 9.0 AreaMappingFloats

// This while loop probably isn't the best way to do this,
// but it's what the 010 pattern does.
AreaMappings areaMappings[while($<header.areaTransitionsPtr)] 
    @ header.areaMappingPtr;

// 10.0 Map Information
qMapID mapID @ header.mapInfoPtr;
u32 returnBC_ID @ header.mapInfoPtr + sizeof(qMapID);

// 11.0 Gathering Points per Area

// The area1zones length is an assumption, just looks better than a loop
ptGatheringPoint gatheringPerArea[genQuestProp.area1zones] 
    @ header.gatheringPointsPtr;

// 12.0 Base Camp Facilities

// The area1zones length is an assumption, and 
// I liked it better than looping
ptVar<facPointBlock> facilities[genQuestProp.area1zones] 
    @ header.areaFacilitiesPtr;

// 13.0 Some Strings
ptr someStringPtr @ header.unk30;
ptr questTypePtr @ header.unk30 + 4;

// 14.0 

// 15.0 Gathering Tables

ptVar<gatheringTable> gatheringTables[genQuestProp.gatheringTablesQty] 
    @ header.gatheringTablesPtr;
