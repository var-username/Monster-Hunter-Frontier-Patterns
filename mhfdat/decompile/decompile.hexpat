#pragma once

// Variables are named after their file and offset as reported by Ghidra's 
// "Byte Source Offset"

// [mhfo-hd.dll + 0xaf4690]

u32 header1 @ 0x0 [[comment("Must equal 1A 66 68 6D")]];
u32 header2 @ 0x4 [[comment("Must equal 00 00 00 59")]];
u32 header3 @ 0xC [[comment("Must equal 00 00 0B C8")]];

// These variables are all copied into a new buffer, plus the new buffer's 
// base position in memory, implying the program will use these as pointers 
// to other positions in the file

// Monotony moved to decompile_tmp.hexpat
#include <mhfdat/decompile/decompile_tmp.hexpat>

// Lots of times, the program seems to read elements of an array 
// in the buffer, but does nothing with them. Maybe it's counting something?

// I have no idea what these are for but apparently they're stored into ram.
// Ghidra labels these as _DAT_1e7414f8 and _DAT_1e7414fc respectively
u16 hd_dll_af47c1_1 @ (hd_dll_af47af + 0xe8);
u32 hd_dll_af47c1 = u32 (hd_dll_af47c1_1);
u16 hd_dll_af47c5_1 @ (hd_dll_af47b5 + 0xe4);
u32 hd_dll_af47c5 = u32 (hd_dll_af47c5_1);

// Each of these point to an array of shorts but I don't know what those 
// shorts are used for. Just like YouTube (Feb 17th, 2023)
u32 hd_dll_af47ed[] @ hd_dll_af47c9;

// Seems there's an array of structs pointed to by 0x50
// @ (hd_dll_af480f). These structs have a size of 0x48, starting with
// s16 (-1) if it's the array end.
struct u48B {u16 unk00; padding[0x46];};
u48B hd_dll_af4812[while(std::mem::read_signed($,2)!=-1)] @ hd_dll_af480f;

u32 hd_dll_af4831[(sizeof(hd_dll_af4812)/sizeof(u48B))] @ hd_dll_af482e;

// [mhfo-hd.dll + 0xaf83cf]

// FUCK POINTERS IT TOOK SO GODDAMN LONG TO UNDERSTAND WHAT THE
// REVERSED CODE WAS DOING AND THIS IS ALL IT CAME OUT TO IM GOING TO SCREAM
u32 hd_dll_af83cf[11] @ 0x9b0;

u32 hd_dll_af8472 @ hd_dll_af83cf[0];
u32 hd_dll_af8476 @ (hd_dll_af8472 + 0xC);
u32 hd_dll_af8486 @ (hd_dll_af8472 + 0x10);
u32 hd_dll_af8496 @ (hd_dll_af8472 + 0x14);
u32 hd_dll_af84a6 @ (hd_dll_af8472 + 0x18);
