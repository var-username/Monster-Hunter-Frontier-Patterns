#pragma pattern_limit 5000000
#pragma array_limit 200000
#include <std/mem.pat>
#include <std/io.pat>
#include <std/ptr.pat>
//#include <type/byte.pat>
#include <misc/types.pat>
#include <misc/s32p.pat>

ptr soStringSkillPt @ 0xA20;
ptr eoStringSkillPt @ 0xA1C;

ptr soStringSkillActivate @ 0xA1C;
ptr eoStringSkillActivate @ 0xBC0;

ptr soStringZSkill @ 0xFBC;
ptr eoStringZSkill @ 0xFB0;

ptr soStringSkillDesc @ 0xB8;
ptr eoStringSkillDesc @ 0xC0;

s32p skills[(eoStringSkillPt - soStringSkillPt)/4] @ soStringSkillPt;
s32p skillActive[(eoStringSkillActivate - soStringSkillActivate)/4] @ soStringSkillActivate;
s32p zskills[(eoStringZSkill - soStringZSkill)/4] @ soStringZSkill;
s32p skillDesc[(eoStringSkillDesc - soStringSkillDesc)/4] @ soStringSkillDesc;
