#pragma once

// [mhfo-hd.dll + 0xaf4690]

u32 header1 @ 0x0 [[comment("Must equal 1A 66 68 6D")]];
u32 header2 @ 0x4 [[comment("Must equal 00 00 00 59")]];
u32 header3 @ 0xC [[comment("Must equal 00 00 0B C8")]];

// Variables are named after their file and offset as reported by Ghidra's 
// "Byte Source Offset"

// Monotony moved to decompile_tmp.hexpat
#include <mhfdat/decompile/decompile_tmp.hexpat>

// These variables are all copied into a new buffer, plus the new buffer's 
// base position in memory, implying the program will use these as pointers 
// to other positions in the file
