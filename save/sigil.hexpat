#include <std/mem>

fn effectName(u8 effect) {
    str ret = "!!Unknown!!";

    match (effect) {
        (0x01): ret = "Attack";
        (0x02): ret = "Elemental";
        (0x03): ret = "Status Attack";
        (0x04): ret = "Affinity";
        (0x05): ret = "Defense";
        (0x06): ret = "Stun Value";
        (0x07): ret = "Flying Wyvern";
        (0x08): ret = "Bird Wyvern";
        (0x09): ret = "Carapaceon";
        (0x0A): ret = "Piscine";
        (0x0B): ret = "Pelagus";
        (0x0C): ret = "Brute Wyvern";
        (0x0D): ret = "Leviathan";
        (0x0E): ret = "Elder Dragon";
        (0x0F): ret = "Minion";

        (0x10): ret = "Nothing";
        (0x11): ret = "Hot";
        (0x12): ret = "Cold";
        (0x13): ret = "Morning";
        (0x14): ret = "Night";
        (0x15): ret = "Breeding Season";
        (0x16): ret = "Warm Season";
        (0x17): ret = "Cold Season";
        (0x18): ret = "Monday";
        (0x19): ret = "Tuesday";
        (0x1A): ret = "Wednesday";
        (0x1B): ret = "Thursday";
        (0x1C): ret = "Friday";
        (0x1D): ret = "Saturday";
        (0x1E): ret = "Sunday";
        (0x1F): ret = "Manager";

        (0x20): ret = "Balloon";
        (0x21): ret = "Dowsing";
        (0x22): ret = "Hunter Soul";
        (0x23): ret = "Soul Collection";
        (0x24): ret = "Goocoo's Friend";
        (0x25): ret = "Halk's Friend";
        (0x26): ret = "Money Expert";
        (0x27): ret = "Exp Expert";
        (0x28): ret = "Omnivore";
        (0x29): ret = "Carving Division";
        (0x2A): ret = "Sleeping";
        (0x2B): ret = "Decoy";
        (0x2C): ret = "Spoilt";
        (0x2D): ret = "Unity";
        (0x2E): ret = "Aid";
        (0x2F): ret = "Rapid Fire"; // Strength determines type of ammo

        (0x30): ret = "Ult. Rapid Fire"; // Strength determines type of ammo
        (0x31): ret = "Normal Fire"; // Strength determines type of ammo
        (0x32): ret = "Heat Cannon Add";
        (0x33): ret = "Ballista Saver";
        (0x34): ret = "Raw Bow Boost";
        (0x35): ret = "Raw SnS Boost";
        (0x36): ret = "Sonic Bomb Range";
        (0x37): ret = "T. Boost SnS"; // Strength determines type of tech boost
        (0x38): ret = "T. Boost DS"; // Strength determines type of tech boost
        (0x39): ret = "T. Boost GS"; // Strength determines type of tech boost
        (0x3A): ret = "T. Boost LS"; // Strength determines type of tech boost
        (0x3B): ret = "T. Boost Lance"; // Strength determines type of tech boost
        (0x3C): ret = "T. Boost GL"; // Strength determines type of tech boost
        (0x3D): ret = "T. Boost Hammer"; // Strength determines type of tech boost
        (0x3E): ret = "T. Boost HH"; // Strength determines type of tech boost
        (0x3F): ret = "Beam Slash SNS";

        (0x40): ret = "T. Change DS";
        (0x41): ret = "T. Change GS";
        (0x42): ret = "T. Change LS";
        (0x43): ret = "Lance Drill";
        (0x44): ret = "T. Change GL";
        (0x45): ret = "T. Change Hammer";
        (0x46): ret = "T. Change HH";
        (0x47): ret = "LBG J Gauge";
        (0x48): ret = "T. Change HBG";
        (0x49): ret = "Bow Pierce";
        (0x4A): ret = "Weapon Length"; // Strength determines weapon type
        (0x4B): ret = "Shelling Change"; // Strength determines shelling type
        (0x4C): ret = "Note 1"; // Strength determines color
        (0x4D): ret = "Note 2"; // Strength determines color
        (0x4E): ret = "Note 3"; // Strength determines color
        (0x4F): ret = "Arc Shot"; // Strength determines arc type

        (0x50): ret = "Rarity";
        (0x51): ret = "Shelling Lv Up";
        (0x52): ret = "Bow Shoryuken";
        (0x53): ret = "Cat Breeder";
        (0x54): ret = "Shot Change"; // Strength determines change type
        (0x55): ret = "Unsheath GS";
        (0x56): ret = "Unsheath Hammer";
        (0x57): ret = "Unsheath Lance";
        (0x58): ret = "Unsheath SNS";
        (0x59): ret = "Unsheath DS";
        (0x5A): ret = "Unsheath LS";
        (0x5B): ret = "Unsheath HH";
        (0x5C): ret = "Unsheath GL";
        (0x5D): ret = "Unsheath Tonfa";
        (0x5E): ret = "T. Boost Tonfa"; // Strength determines type of tech boost
        (0x5F): ret = "Fanged Wyvern";

        (0x60): ret = "Unsheathed Walk";
        (0x61): ret = "T. Boost SAF"; // Strength determines type of tech boost
        (0x62): ret = "HBG NUKE CLUST";
        (0x63): ret = "Great Sword Up";
        (0x64): ret = "Heavy Bowgun Up";
        (0x65): ret = "Hammer Up";
        (0x66): ret = "Lance Up";
        (0x67): ret = "Sword and Shield Up";
        (0x68): ret = "Light Bowgun Up";
        (0x69): ret = "Dual Blades Up";
        (0x6A): ret = "Long Sword Up";
        (0x6B): ret = "Hunting Horn Up";
        (0x6C): ret = "Gunlance Up";
        (0x6D): ret = "Bow Up";
        (0x6E): ret = "Tonfa Up";
        (0x6F): ret = "Switch Axe F Up";

        (0x70): ret = "Magnet Spike UP";
        (0x71): ret = "Wait Time";
        (0x72): ret = "Duration";
        (0x73): ret = "Fire Resistance";
        (0x74): ret = "Water Resistance";
        (0x75): ret = "Ice Resistance";
        (0x76): ret = "Thunder Resistance";
        (0x77): ret = "Dragon Resistance";
        (0x78): ret = "Healing";
        (0x79): ret = "Heroics";

        (0x7A): ret = "Z. Attack";
        (0x7B): ret = "Z. Element";
        (0x7C): ret = "Z. Move Speed";
        (0x7D): ret = "AoE Attack";
        (0x7E): ret = "AoE Element";
        (0x7F): ret = "AoE Affinity";

        (0x80): ret = "AoE Status";
        (0x81): ret = "AoE Stun";
        (0x82): ret = "AoE Healing";
        (0x83): ret = "AoE All Resistance";
    }

    return ret;
};

struct SigilEffect {
    padding[1];                 // Previously padding[1]
    u8 effect_code [[format("effectName")]]; // Effect type code
    padding[1];                 // Previously padding[1]
    u8 effect_code2 [[format("effectName")]];
    padding[1];                 // Previously padding[1]
    u8 effect_code3 [[format("effectName")]];
    be s16 strength [[name("Strength")]];            // Effect strength (-10–20)
    be s16 strength2 [[name("Strength 2")]];
    be s16 strength3 [[name("Strength 3")]];
    padding[4];
};

// Pattern to match all sigils in the file
SigilEffect sigils[ while (std::mem::read_signed($, 2) != -1) ] @ 0x0;
