// Very large limits just in case, feel free to make these more sensible
#pragma pattern_limit 5000000
#pragma array_limit 200000
import std.sys;
import std.io;
#include <misc/s32p.pat>
#include <misc/types.pat>

#include <misc/ItemIDs.hexpat>
#include <misc/MonsterIDs.hexpat>
#include <misc/MapIDs.hexpat>

#include <quest/objective.hexpat>

//#define __DECOMPILE 1

str __header_fail_msg = "File header does not match expected mhfinf header";
u32 header1 @ 0x0 [[comment("Must equal 1A 66 6E 69")]];
u32 header2 @ 0x4 [[comment("Must equal 00 00 00 06")]];
u32 header3 @ 0xC [[comment("Must equal 00 00 00 88")]];

std::assert_warn(header1 == 0x1A666E69, __header_fail_msg);
std::assert_warn(header2 == 0x00000006, __header_fail_msg);
std::assert_warn(header3 == 0x00000088, __header_fail_msg);

u32 hd_dll_afa411 @ 0x10 
    [[name("Inf Quantities")]];
num hd_dll_afa421 @ hd_dll_afa411
    [[name("Number of quest table entries")]];

ptr ptQuestTable @ 0x14
    [[name("Pointer to quest table")]];

#ifdef __DECOMPILE
#include <mhfinf/decompile.hexpat>
#endif

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

struct QuestData {
    // If current address is 0x0, we read a bad pointer, skip to next
    if($==0x00000000) continue;

    padding[0x0B];
    u8 playerQty;
    u32 questFee;
    u32 zennyReward;
    u32 zennyKO;
    u32 zennySubA;
    u32 zennySubB;
    u32 questTime [[comment("Timing in frames (30Hz)")]];
    u32 mapID;
    QuestText *questStringptr : ptr;
    u16 questRestrictions;
    u16 questID;
    
    QuestObj mainGoal;

    QuestObj subAGoal;

    QuestObj subBGoal;
    
    // Based on https://github.com/ricochhet/MHF-Quest-Resources/blob/main/FrontierTools/Tools/QuestTool/QuestReader.cs#L101
    u32 rank; 
    u16 joinMinRank;
    u16 joinMaxRank;
    u16 postMinRank;
    u16 postMaxRank;

    padding[8];

    // Forced equipment section (size 0x30)
    // Attachments are +0x80 for some reason
    u16 legsAndAttach[4];
    u16 weaponAndAttach[4];
    u16 headAndAttach[4];
    u16 chestAndAttach[4];
    u16 armsAndAttach[4];
    u16 waistAndAttach[4];

    u32 [[hidden]];

    padding[20];

    u32 hrMainReward;
    u32 hrSubAReward;
    u32 hrSubBReward;
    ItemID mainRewardList[3];
    padding[3];
    MonsterID;
    padding[0x86];
} [[inline]];

/// Pointer to quest data struct
struct ptQuestData {
    QuestData *qd : u32 [[inline]];
};

struct QuestTableEntry {
    u16 endID;
    u16 count;
    ptQuestData *ql[count] : u32 [[inline]];
};

QuestTableEntry questTable[hd_dll_afa421] @ ptQuestTable;
