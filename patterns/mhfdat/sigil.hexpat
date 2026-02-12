#pragma once
import std.mem;
import std.core;

enum SigilSkill: u16 {
    Empty = 0,
    Attack = 1,
    Element = 2,
    Status = 3,
    Affinity = 4,
    Defense = 5,
    Stun = 6,
    FlyingWyvernSlayer = 7,
    BirdWyvernSlayer = 8,
    CarapaceonSlayer = 9,
    PiscineSlayer = 10,
    FangedBeastSlayer = 11,
    BruteWyvernSlayer = 12,
    LeviathanSlayer = 13,
    ElderDragonSlayer = 14,
    SmallMonsterSlayer = 15,
    ElementalCoatingCrystal = 16,
    HeatWave = 17,
    IntenseCold = 18,
    MorningSlayer = 19,
    NightSlayer = 20,
    BreedingSeasonSlayer = 21,
    WarmSeasonSlayer = 22,
    ColdSeasonSlayer = 23,
    MondaySlayer = 24,
    TuesdaySlayer = 25,
    WednesdaySlayer = 26,
    ThursdaySlayer = 27,
    FridaySlayer = 28,
    SaturdaySlayer = 29,
    SundaySlayer = 30,
    ManagerFriend = 31,
    BalloonFriend = 32,
    Dowsing = 33,
    HunterSoul = 34,
    SoulCollection = 35,
    GoocooFriend = 36,
    HalkFriend = 37,
    MoneyExpert = 38,
    ExperienceExpert = 39,
    Omnivorous = 40,
    CarvingDivision = 41,
    NoddingOff = 42,
    Decoy = 43,
    Tantrum = 44,
    Unity = 45,
    Support = 46,
    RapidFireAdd = 47,
    SuperRapidFireAdd = 48,
    RapidFireDisable = 49,
    HeatCannonAdd = 50,
    BallistaSaver = 51,
    RawBowBoost = 52,
    RawSnsBoost = 53,
    SonicBombRange = 54,
    TechBoostSnS = 55,
    TechBoostDb = 56,
    TechBoostGs = 57,
    TechBoostLs = 58,
    TechBoostLance = 59,
    TechBoostGunlance = 60,
    TechBoostHammer = 61,
    TechBoostHorn = 62,
    TechChangeSnS = 63,
    TechChangeDb = 64,
    TechChangeGs = 65,
    TechChangeLs = 66,
    TechChangeLance = 67,
    TechChangeGunlance = 68,
    TechChangeHammer = 69,
    TechChangeHorn = 70,
    TechChangeLbg = 71,
    TechChangeHbg = 72,
    TechChangeBow = 73,
    LengthUp = 74,
    ShellingChange = 75,
    NoteChange1 = 76,
    NoteChange2 = 77,
    NoteChange3 = 78,
    ArcShotChange = 79,
    RarityChange = 80,
    ShellingLvUp = 81,
    TechBoostBow = 82,
    CatBreeder = 83,
    ShotChange = 84,
    DrawStrengthGs = 85,
    DrawStrengthHammer = 86,
    DrawStrengthLance = 87,
    DrawStrengthSns = 88,
    DrawStrengthDb = 89,
    DrawStrengthLs = 90,
    DrawStrengthHorn = 91,
    DrawStrengthGunlance = 92,
    DrawStrengthTonfa = 93,
    TechBoostTonfa = 94,
    FangedWyvernSlayer = 95,
    UnsheathedMovementSpeed = 96,
    TechBoostSaf = 97,
    TechBoostHbg = 98,
    GsUp = 99,
    HbgUp = 100,
    HammerUp = 101,
    LanceUp = 102,
    SnsUp = 103,
    LbgUp = 104,
    DbUp = 105,
    LsUp = 106,
    HornUp = 107,
    GunlanceUp = 108,
    BowUp = 109,
    TonfaUp = 110,
    SafUp = 111,
    MsUp = 112,
    ZCooldown = 113,
    ZDuration = 114,
    ZFireRes = 115,
    ZWaterRes = 116,
    ZIceRes = 117,
    ZThunderRes = 118,
    ZDragonRes = 119,
    ZHealing = 120,
    ZHeroics = 121,
    ZAttack = 122,
    ZElement = 123,
    ZMovementSpeed = 124,
    RAttack = 125,
    RElement = 126,
    RAffinity = 127,
    RStatus = 128,
    RStun = 129,
    RHealing = 130,
    RAllRes = 131,
};

struct SigilMaterial {
    u16 item [[format("getItemName"), color("8888FF")]];
    u8 percentage_filled;
    u8 unk; // 0x80 active 0x00 inactive
};

struct SigilRecipe {
    u8 unk0;
    u8 extra_skills_low;
    u8 extra_skills_high; // used together to determine how many skills a sigil gets
    u8 unk1;
    u16 cost;
    padding[0x2];
    SigilMaterial key_materials[0x5];
    padding[0xC];
};

struct SkillsBlacklist {
    SigilSkill skills[while(std::mem::read_signed($, 2) != -1)];
};

struct BlacklistPtr {
    SkillsBlacklist* ptr : u32;
};

struct SigilSkillProbability {
    SigilSkill skill;
    u16 percentage_chance;
    s16 low_points;
    s16 high_points;
};

struct SigilSkillProbabilities {
    SigilSkillProbability probabilities[0x8];
};

SigilRecipe recipes[while(std::mem::read_unsigned($, 4) != 0)] @ header.ptrs.sigilCraftingRecipes
    [[name("Sigil Crafting Recipes")]];
u16 recipes_len = std::core::member_count(recipes);
SigilSkillProbabilities probabilities[recipes_len] @ header.ptrs.sigilSkillProbabilities
    [[name("Sigil Skill Probabilities")]];
BlacklistPtr blacklist_ptrs[recipes_len] @ header.ptrs.sigilSkillBlacklists
    [[name("Sigil Random Skill Blacklists")]];
