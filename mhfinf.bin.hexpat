// Very large limits just in case, feel free to make these more sensible
#pragma pattern_limit 5000000
#pragma array_limit 200000
#include <std/mem.pat>
#include <std/io.pat>
#include <std/ptr.pat>
//#include <type/byte.pat>

#include <misc/MonsterIds.hexpat>

// Read Pointer to String
fn rPS (u32 p) {
	return std::mem::read_string(p, 100);
};

using s32p;

// Format s32p to display the string
fn fmtS32p (s32p p) {
    return rPS(p.string);
};

// u32 pointer to a string
struct s32p {
	u32 string;
} [[format("fmtS32p"), sealed]];

using itemId;
// Format ItemID to make it easier to look up on Ferias
fn fmtItemId(itemId n) {
    return std::format("{:04X}", n);
};
using itemId = u16 [[format("fmtItemId")]];

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
};

// Pointer to quest data struct
struct ptQuestData {
    QuestData *qd : u32;
} [[inline]];

ptQuestData GuildQuestList[95]  @ 0x06bbc4;
ptQuestData SurveyQuestList1[62]  @ 0x073FE4;
ptQuestData SurveyQuestList2[99]  @ 0x079624;
ptQuestData questList4[98]  @ 0x081FE4; //Some servey, gook, and special quests
ptQuestData questList5[99]  @ 0x08A844; //Removed Hunters quests
ptQuestData questList6[99]  @ 0x093204; //Removed Hunters quests
ptQuestData questList7[99]  @ 0x09bbc4; //Removed Hunters quests
ptQuestData questList8[99]  @ 0x0A4584; //Removed Hunters quests
ptQuestData questList9[99]  @ 0x0ACF44; //Removed Hunters quests
ptQuestData questList10[36] @ 0x0B5A84; //Weapon Merits
ptQuestData questList11[99] @ 0x0B8CA4; //Special daily and superior acquasition quests
ptQuestData questList12[99] @ 0x0C1244; //Conquest, zenith, and navi armor
ptQuestData questList13[99] @ 0x0C9104; //Exotic, origin, zenith
ptQuestData questList14[99] @ 0x0D1964;
ptQuestData questList15[99] @ 0x0DA1C4;
ptQuestData questList16[39] @ 0x0E2B14;
ptQuestData questList17[69] @ 0x0E62E4;
ptQuestData questList18[99] @ 0x0EBEC4;
ptQuestData questList19[99] @ 0x0F4720;
ptQuestData questList20[99] @ 0x0FCF84;
ptQuestData questList21[99] @ 0x1057E4;
ptQuestData questList22[99] @ 0x10DD84;
ptQuestData questList23[99] @ 0x1165F4;
ptQuestData questList24[95] @ 0x11CBE4;
ptQuestData questList25[87] @ 0x124544;
ptQuestData questList26[87] @ 0x129924;
ptQuestData questList27[99] @ 0x130044;
ptQuestData questList28[99] @ 0x1388A4;
ptQuestData questList29[37] @ 0x141264;
ptQuestData questList30[25] @ 0x1445E0;
ptQuestData questList31[80] @ 0x1468C4;
ptQuestData questList32[99] @ 0x14D824;
ptQuestData questList33[5]  @ 0x155F24;
ptQuestData questList34[9]  @ 0x156624;
ptQuestData questList35[87] @ 0x1580E4;

ptQuestData weirdSoloQuest @ 0xE6164;
