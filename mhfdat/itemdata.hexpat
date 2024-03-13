#pragma once

/**
	All icons can be found in 0055_001266FC.png, extracted from dat/mhf.dat
*/
enum ItemIcon : u8 {
	SMOKE = 0x00, 			// Ex: Farcaster, Smoke Bomb
	ORB = 0x01,				// Ex: Paintball, Flash Bomb
	BOMB = 0x02,			// Ex: Small Barrel Bomb
	MEAT = 0x03,			// Ex: Raw Meat, Burnt Steak
	FISH_BAIT = 0x04,		// Ex: Cricket, Worm, Tuna Bait
	FISH = 0x05,			// Ex: Gormet Fish
	BOX = 0x06,				// Ex: Trap Kit
	WHETSTONE = 0x07,		// Ex: Whetstone
	DUNG = 0x08,			// Ex: Dung, Dung Bomb
	MONSTER = 0x09,			// Ex: Bullfango Head
	BONES = 0x0A,			// Ex: Sm Monster Bone
	BINOCULARS = 0x0B,		// Ex: Binoculars
	MUSHROOM = 0x0C,		// Ex: Blue Mushroom
	BUGNET = 0x0D,			// Ex: Bugnet
	PELT = 0x0E,			// Ex: Mosswine Hide, Bullfango Pelt
	LEAF = 0x0F,			// Ex: Herb
	PICKAXE = 0x10,			// Ex: Iron Pickaxe
	BARREL = 0x11,			// Ex: Small Barrel, Large Barrel
	SEED = 0x12,			// Ex: Paintberry, Power Seed, Scatternut
	BBQ_SPIT = 0x13,		// Ex: BBQ Spit
	INSECT = 0x14,			// Ex: Insect Husk, Thunderbug
	TRAP = 0x15,			// Ex: Pitfall Trap, Shock Trap
	NET = 0x16,				// Ex: Web, Net
	SCALE = 0x17,			// Ex: Broken Shell, Kut-Ku Scale
	DRINK = 0x18,			// Ex: Potion, Cold Drink, Demondrug
	EGG = 0x19,				// Ex: Monster Egg, Round Egg
	AMMO = 0x1A,			// Ex: Normal S LV1
	STONE = 0x1B,			// Ex: Stone, Iron Ore
	HUSK = 0x1C,			// Ex: Huskberry, Bone Husks
	MAP = 0x1D,				// Ex: Map
	FLUTE = 0x1E,			// Ex: Flute
	FANG = 0x1F,			// Ex: Wyvern Fang, Wyvern Claw
	GRID = 0x20,			// Ex: Honey
	QUESTION_MARK = 0x21,	// Ex: Garbage
	COIN = 0x22,			// Ex: N Medal, Hunting Medal
	SAC = 0x23,				// Ex: Catalyst, Screamer Sac, Might Pill
	BOOK = 0x24,			// Ex: Book of Combos
	TICKET = 0x25,			// Ex: Guild Ticket, Commendation, 30k Cheque
	KNIFE = 0x26,			// Ex: Throwing Knife
	MUSIC_SHEET = 0x29,		// Ex: HH Info
	JEWEL = 0x2B,			// Ex: Aquaglow Jewel, Attack 1 Deco
	HOUSE = 0x2C,			// Ex: House Expansion 1
	PlANT = 0x2D,			// Ex: Green Onion
	MOCHA = 0x2F,			// Ex: Mocha Green
	POT = 0x30,				// Ex: Mocha Pot
	BOOMERANG = 0x31,		// Ex: Boomerang
	COATING = 0x32,			// Ex: Power Coating, Poison Coating
	EMPTY_BOTTLE = 0x33,	// Ex: Empty Bottle
	CARAPACE = 0x34,		// Ex: Small LobsterShl, Hermitaur Shell
	/* Probably wrong
	COMPASS = 0x35,			// Datamined
	QUARTER_CIRCLE = 0x36,	// Datamined
	CROSS = 0x37,			// Datamined
	CROSSED_OUT = 0x3C,		// Datamined
	MYSTERY_WEAPON = 0x3D,	// Datamined
	GREATSWORD = 0x3E,		// Datamined
	HEAVY_BOWGUN = 0x3F,	// Datamined
	HAMMER = 0x40,			// Datamined
	LANCE = 0x41,			// Datamined
	SWORD_SHIELD = 0x42,	// Datamined
	LIGHT_BOWGUN = 0x43,	// Datamined
	DUAL_BLADES = 0x44,		// Datamined
	LONGSWORD = 0x45,		// Datamined
	HUNTING_HORN = 0x46, 	// Datamined
	GUNLANCE = 0x47,		// Datamined
	BOW = 0x48,				// Datamined
	LEGWEAR = 0x49,			// Datamined
	EQUIPED_MARKER = 0x4A,	// Datamined
	HEADWEAR = 0x4B,		// Datamined
	BODYWEAR = 0x4C,		// Datamined
	ARMWEAR = 0x4D,			// Datamined
	WAISTWEAR = 0x4E,		// Datamined
	*/
	SWORD_CRYSTAL = 0x4F,	// Ex: Bomb S.Crystal
	POTION = 0x50,			// Ex: Halk Pot
	FRUIT = 0x52,			// Ex: Shiriagari Fruit
	/* Definitely wrong
	SIGIL = 0x54,			// Datamined
	G_RANK_MARKER = 0x58,	// Datamined
	CAMERA = 0x5B,			// Datamined
	CORNER_ARROWS = 0x5C,	// Datamined
	TONFAS = 0x5D,			// Datamined
	TREASURE = 0x5E,		// Datamined
	PARTNYA_SWORD = 0x60,	// Datamined
	PARTNYA_CLUB = 0x61,	// Datamined
	PARTNYA_HELM = 0x62,	// Datamined
	PARTNYA_CHEST = 0x63,	// Datamined
	PARTNYA_HEAD = 0x64,	// Datamined
	PARTNYA_CROWN = 0x65,	// Datamined
	PARTNYA_MARKER = 0x66,	// Datamined
	TOWER_MARKER = 0x67,	// Datamined
	*/
	TOWER_W_SIGIL = 0x56,	// Ex: (SnS) Beam Slash
	TOWER_A_SIGIL = 0x5B,	// Ex: Skill UP Sigil
	MANTLE = 0x5C,			// Ex: Narga Mantle
	ARMOR_SPHERE = 0x5D,	// Ex: Armor Sphere
};

u32 __sizeof_Item = 0x24;

/// Add 1 to n (Used for pattern formatting)
fn plusone (u8 n) {
	return n+1;
};
	
fn getStructItemName(auto i) {
	return getItemName(($-header.ptrs.itemData)/__sizeof_Item);
};

struct Item {
	u8 unk00; // interaction_type (1 = carryable, 2 = gun ammo, 3 = coating)
	u8 unk01; // is_usable. bitflag & 0x10 == eatable
	u8 rarity [[format("plusone")]];
	u8 maxStack;
	
	u8 unk04 [[hidden]]; // data_bitset 0x20 sale, 6 mytra? 0x4 and 0x2 diva related, 0x40 = calculate tower points
	ItemIcon icon [[comment("Item Icon")]];

	/** These colors are not the same as the text color codes 
		00 = White, 01 = Red, 02 = Green, 03 = Blue, 04 = Yellow, 
		05 = Purple, 06 = Light Blue, 08 = Pink, 0A = Gray
	*/
	u8 iconColor [[comment("Icon color")]]; 
	u8 unk07 [[hidden]];
	
	u16 unk08 [[hidden]]; // pax says the internal name for this is bottle?
	u16 unk0A [[hidden]]; // related to hc carbes/eggs/infos books, probably depreciated
	
	u32 buyPrice;
	u32 sellPrice;

	u16 type [[comment("Item Type")]]; // 04 = Consumable, 05 = Placeable	
	u16 unk16 [[hidden]]; // deco_id
	
	u16 unk18 [[hidden]];
	u8 unk1A [[hidden]];
	u8 unk1B [[hidden]];
	
	u16 unk1C [[hidden]]; // equip_type
	u8 unk1E [[hidden]]; //is_gz
	u8 unk1F [[hidden]];
	
	u16 unk20 [[hidden]]; 
	u16 unk22 [[hidden]]; 
} 
[[format("getStructItemName")]]
;

Item items[numItems] @ header.ptrs.itemData;
