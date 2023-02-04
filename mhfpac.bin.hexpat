#pragma pattern_limit 5000000
#pragma array_limit 200000
#include <std/mem.pat>
#include <std/io.pat>
#include <std/ptr.pat>
//#include <type/byte.pat>

using ptr = u32 
//[[hidden]]
;

ptr soStringSkillPt @ 0xA20;
ptr eoStringSkillPt @ 0xA1C;

ptr soStringSkillActivate @ 0xA1C;
ptr eoStringSkillActivate @ 0xBC0;

ptr soStringZSkill @ 0xFBC;
ptr eoStringZSkill @ 0xFB0;

ptr soStringSkillDesc @ 0xB8;
ptr eoStringSkillDesc @ 0xC0;

// Read Pointer to String
fn rPS (u32 p) {
	return std::mem::read_string(p, 100);
};

// Read Pointer to Pointer to String 
fn rPPS (u32 p, u32 s=4) {
	return rPS(std::mem::read_unsigned(p, s));
};

// Read Indirect Pointer to Pointer to String
fn rIPPS (u32 b, u32 i, u32 s=4) {
	return rPPS(b + (i*s));
};

// u32 pointer to a string
struct s32p {
	u32 string 
	[[format("rPS")]]
	;
} [[inline]];

s32p skills[(eoStringSkillPt - soStringSkillPt)/4] @ soStringSkillPt;
s32p skillActive[(eoStringSkillActivate - soStringSkillActivate)/4] @ soStringSkillActivate;
s32p zskills[(eoStringZSkill - soStringZSkill)/4] @ soStringZSkill;
s32p skillDesc[(eoStringSkillDesc - soStringSkillDesc)/4] @ soStringSkillDesc;
