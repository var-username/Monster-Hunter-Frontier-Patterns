#pragma once

#include <misc/MonsterIDs.hexpat>
#include <misc/ItemIDs.hexpat>

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
            MonsterID goalTarget;
            padding[1];
        } else if (goalType == questObjType::Deliver) {
            // Goal target is an item, format as such
            ItemID goalTarget;
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
