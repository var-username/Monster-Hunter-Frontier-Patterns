// Very large limits just in case, feel free to make these more sensible
#pragma pattern_limit 5000000
#pragma array_limit 200000
#include <std/io.pat>
#include <misc/s32p.pat>

#include <misc/MonsterIds.hexpat>

//#define __DECOMPILE 1

using itemId;
// Format ItemID to make it easier to look up on Ferias
fn fmtItemId(itemId n) {
    return std::format("{:04X}", n);
};
using itemId = u16 [[format("fmtItemId")]];

u32 hd_dll_afa411 @ 0x10;
s16 hd_dll_afa421 @ hd_dll_afa411;

#ifdef __DECOMPILE
#include <mhfinf/decompile.hexpat>
#endif

// Known quest objective types
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
} ;

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

struct QuestData {
    // If current address is 0x0, we read a bad pointer, skip to next
    if($==0x00000000) continue;

    padding[0x10];
    u32 zennyReward;
    u32 zennyKO;
    u32 zennySubA;
    u32 zennySubB;
    padding[4];
    u8 rank; // Maybe? Compare to https://github.com/ricochhet/MHF-Quest-Resources/blob/main/FrontierTools/Utils/RankDictionary.cs
    padding[9];
    //padding[0xE];
    u16 questID;
    
    QuestObj mainGoal;

    QuestObj subAGoal;

    QuestObj subBGoal;
    
    padding[0x5C];
    u32 hrMainReward;
    u32 hrSubAReward;
    u32 hrSubBReward;
    itemId mainRewardList[3];
    padding[0x8A];
    s32p title;
    s32p textMain;
    s32p textSubA;
    s32p testSubB;
    s32p successCond;
    s32p failCond;
    padding[0x8];
} [[inline]];

// Pointer to quest data struct
struct ptQuestData {
    QuestData *qd : u32 [[inline]];
} ;

struct QuestTableEntry {
    padding[2];
    u16 count;
    ptQuestData *ql[count] : u32 [[inline]];
};

QuestTableEntry questTable[hd_dll_afa421] @ 0x6A0A0;
