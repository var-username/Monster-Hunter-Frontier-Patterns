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

// Monotony moved to decompile_pointers.hexpat
#include <mhfdat/decompile/decompile_pointers.hexpat>

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
// u48B hd_dll_af4812[while(std::mem::read_signed($,2)!=-1)] @ hd_dll_af480f;
// u32 hd_dll_af4831[(sizeof(hd_dll_af4812)/sizeof(u48B))] @ hd_dll_af482e;

// u48B hd_dll_af4855[while(std::mem::read_signed($,2)!=-1)] @ hd_dll_af4852;
// u32 hd_dll_af4874[(sizeof(hd_dll_af4855)/sizeof(u48B))] @ hd_dll_af4871;

// u48B hd_dll_af4896[while(std::mem::read_signed($,2)!=-1)] @ hd_dll_af4893;
// u32 hd_dll_af48b5[(sizeof(hd_dll_af4896)/sizeof(u48B))] @ hd_dll_af48b2;

// u48B hd_dll_af48d7[while(std::mem::read_signed($,2)!=-1)] @ hd_dll_af48d4;
// u32 hd_dll_af4900[(sizeof(hd_dll_af48d7)/sizeof(u48B))] @ hd_dll_af48fd;

// u48B hd_dll_af4925[while(std::mem::read_signed($,2)!=-1)] @ hd_dll_af4922;
// u32 hd_dll_af4944[(sizeof(hd_dll_af4925)/sizeof(u48B))] @ hd_dll_af4941;

struct u32x4{u32 unk[4];};
// u32x4 hd_dll_af4966[while(std::mem::read_signed($,4))] @ hd_dll_af4963;

struct u34B {u16 unk00; padding[0x32];};
// u34B hd_dll_af49a9[while(std::mem::read_signed($,2)!=-1)] @ hd_dll_af49a6;
// u32 hd_dll_af49d9[(sizeof(hd_dll_af49a9)/sizeof(u34B))] @ hd_dll_af49cd;
// u32x4 hd_dll_af49df[(sizeof(hd_dll_af49a9)/sizeof(u34B))] @ hd_dll_af49d3;

struct u3CB {u16 unk00; padding[0x3A];};
u3CB hd_dll_af4a3a[while(std::mem::read_signed($,2)!=-1)] @ hd_dll_af4a34;
u32 hd_dll_af4a69[(sizeof(hd_dll_af4a3a)/sizeof(u3CB))] @ hd_dll_af4a5d;
// Commented out because this is bugged to be put in the wrong place 
// u32x4 hd_dll_af4a6f[(sizeof(hd_dll_af4a3a)/sizeof(u3CB))] @ hd_dll_af4a63;

u32 hd_dll_af4aca[6] @ hd_dll_af4ac4;
u32 hd_dll_af4b1c[8] @ hd_dll_af4b16;
u32 hd_dll_af4b86[5] @ hd_dll_af4b80;

struct u44B {u32 unk[0x10];};
struct ptu44B {u44B *pointer : u32;};
ptu44B hd_dll_af4bcc[while(std::mem::read_signed($,4)!=0)] @ hd_dll_af4bc6;

// [mhfo-hd.dll + 0xaf83cf]

// FUCK POINTERS IT TOOK SO GODDAMN LONG TO UNDERSTAND WHAT THE
// REVERSED CODE WAS DOING AND THIS IS ALL IT CAME OUT TO IM GOING TO SCREAM
u32 hd_dll_af83cf[11] @ 0x9b0;

u32 hd_dll_af8472 @ hd_dll_af83cf[0];
u32 hd_dll_af8476 @ (hd_dll_af8472 + 0xC);
u32 hd_dll_af8486 @ (hd_dll_af8472 + 0x10);
u32 hd_dll_af8496 @ (hd_dll_af8472 + 0x14);
u32 hd_dll_af84a6 @ (hd_dll_af8472 + 0x18);
