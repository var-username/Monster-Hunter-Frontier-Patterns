#pragma once

import std.mem;

struct Quest {
    u16 questId;
    u16 questNumber;
    u8 keyQuest;
    u8 urgentQuest;
    u16;
};

struct QuestList {
    Quest quests[while(std::mem::read_signed($,4)!=0x00)];
} [[inline]];

ptVar<QuestList> questListPointers[while(std::mem::read_signed($,4)!=0x00)] 
    @ header.ptrs.questList;
