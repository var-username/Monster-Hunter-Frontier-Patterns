#pragma once

#include <misc/s32p.pat>

namespace equipnames {
	
	u32 numStringHead = (eoStringHead - soStringHead) / 4;
	s32p headNames[numStringHead - 6] @ soStringHead;
	
	u32 numStringBody = (eoStringBody - soStringBody)/4;
	s32p bodyNames[numStringBody - 2] @ soStringBody;
	
	u32 numStringArm = (eoStringArm - soStringArm)/4;
	s32p armNames[numStringArm - 4] @ soStringArm;

	u32 numStringWaist = (eoStringWaist - soStringWaist)/4;
	s32p waistNames[numStringWaist - 4] @ soStringWaist;

	u32 numStringLeg = (eoStringLeg - soStringLeg)/4;
	s32p legNames[numStringLeg - 6] @ soStringLeg;
}
