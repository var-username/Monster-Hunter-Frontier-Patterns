#include <std/mem.pat>
#include <misc/types.pat>

struct varPaddT<T, auto pad> {T; padding[pad];};
struct s32pxT<auto Size> {
    s_s32p data[Size] [[inline]];
};

ptr hd_dll_afaf58 @ 0x14;
ptr hd_dll_afaf5e @ 0x10;
s32pxT<3> hd_dll_afaf68[while(std::mem::read_signed($,4)!=0)] @ hd_dll_afaf58;

ptr hd_dll_afaf8f @ 0x18;
s32pxT<4> hd_dll_afaf98[while(std::mem::read_signed($,4)!=0)] @ hd_dll_afaf8f;

ptr hd_dll_afafbf @ 0x1c;
s32pxT<5> hd_dll_afafc8[while(std::mem::read_signed($,4)!=0)] @ hd_dll_afafbf;

ptr hd_dll_afafef @ 0x20;
s32pxT<3> hd_dll_afaff8[while(std::mem::read_signed($,4)!=0)] @ hd_dll_afafef;

ptr hd_dll_afb01f @ 0x24;
s32pxT<0x13> hd_dll_afb028[while(std::mem::read_signed($,4)!=0)] @ hd_dll_afb01f;

ptr hd_dll_afb04f @ 0x28;
s32pxT<8> hd_dll_afb058[while(std::mem::read_signed($,4)!=0)] @ hd_dll_afb04f;

ptr hd_dll_afb07f @ 0x2C;
s32pxT<10> hd_dll_afb088[while(std::mem::read_signed($,4)!=0)] @ hd_dll_afb07f;

ptr hd_dll_afb0af @ 0x30;

// TODO: Not accurate, revise later
s32pxT<0x5c> hd_dll_afb0b8[while(std::mem::read_signed($,4)!=0)] @ hd_dll_afb0af;

ptr hd_dll_afb108 @ 0x34;
s32pxT<4> hd_dll_afb111[while(std::mem::read_signed($,4)!=0)] @ hd_dll_afb108;

ptr hd_dll_afb132 @ 0x38;
num hd_dll_afb138 @ hd_dll_afaf5e;

// TODO: Loop

ptr hd_dll_afb154 @ 0x3C;
num hd_dll_afb15d @ (hd_dll_afaf5e + 2);

// TODO: Loop

ptr hd_dll_afb183 @ 0x40;
struct struct_afb193 {
    padding[4];
    s_s32p;
};
num hd_dll_afb18c @ (hd_dll_afaf5e + 4);
struct_afb193 hd_dll_afb193[hd_dll_afb18c] @ hd_dll_afb183;

ptr hd_dll_afb1a3 @ 0x44;
num hd_dll_afb1ac @ (hd_dll_afaf5e + 6);
struct_afb193 hd_dll_afb1b3[hd_dll_afb1ac] @ hd_dll_afb1a3;

ptr hd_dll_afb1c3 @ 0x48;
s32pxT<2> hd_dll_afb1d0[0x1a7] @ hd_dll_afb1c3;

ptr hd_dll_afb1e3 @ 0x50;
ptr hd_dll_afb1e9 @ 0x4C;
s32pxT<2> hd_dll_afb1f1[while(std::mem::read_signed($,4)!=0)] @ hd_dll_afb1e3;

ptr hd_dll_afb210 @ 0x54;
s32pxT<2> hd_dll_afb219[while(std::mem::read_signed($,4)!=0)] @ hd_dll_afb210;

ptr hd_dll_afb23f @ 0x94;
num hd_dll_afb24e @ (hd_dll_afaf5e + 0x1C);
struct struct_afb255 {
    padding[4];
    s_s32p;
    s_s32p;
    padding[4];
};
struct_afb255 hd_dll_afb255[hd_dll_afb24e] @ hd_dll_afb23f;

// TODO: Lotsa weird code

ptr hd_dll_afb353 @ 0x58;

// TODO: Weird Loop

ptr hd_dll_afb39e @ 0x5C;

// TODO: Loop

ptr hd_dll_afb3ee @ 0x60;
num hd_dll_afb3f7 @ (hd_dll_afaf5e + 0x22);

varPaddT<s_s32p, 0xC> hd_dll_afb3fb[hd_dll_afb3f7] @ hd_dll_afb3ee;

ptr hd_dll_afb410 @ 0x64;
num hd_dll_afb419 @ (hd_dll_afaf5e + 0x24);
varPaddT<s_s32p, 0xC> hd_dll_afb420[hd_dll_afb419] @ hd_dll_afb410;

ptr hd_dll_afb430 @ 0x68;
num hd_dll_afb439 @ (hd_dll_afaf5e + 0x26);
varPaddT<s_s32p, 0xC> hd_dll_afb440[hd_dll_afb439] @ hd_dll_afb430;

ptr hd_dll_afb450 @ 0x6c;
num hd_dll_afb459 @ (hd_dll_afaf5e + 0x28);
varPaddT<s_s32p, 0xC> hd_dll_afb460[hd_dll_afb459] @ hd_dll_afb450;

ptr hd_dll_afb473 @ 0x74;
ptr hd_dll_afb476 @ 0x70;
num hd_dll_afb470 @ (hd_dll_afaf5e + 0x2A);

// TODO: Loop

ptr hd_dll_afb49b @ 0x78;
ptr hd_dll_afb49e @ 0x7c;
ptr hd_dll_afb4a1 @ 0x80;
num hd_dll_afb498 @ (hd_dll_afaf5e + 0x30);

// TODO: Loop

ptr hd_dll_afb4c9 @ 0xB0;
ptr hd_dll_afb4cf @ 0xB4;
num hd_dll_afb4c6 @ (hd_dll_afaf5e + 0x44);

// TODO: Loop

ptr hd_dll_afb4fb @ 0xB8;
ptr hd_dll_afb501 @ 0xBC;
ptr hd_dll_afb507 @ 0xC0;
num hd_dll_afb4f8 @ (hd_dll_afaf5e + 0x4A);

// TODO: Loop

ptr hd_dll_afb538 @ 0xC4;

// TODO: Big Loop

ptr hd_dll_afb595 @ 0xC8;
num hd_dll_afb5a4 @ (hd_dll_afaf5e + 0x52);
varPaddT<s_s32p, 0x8> hd_dll_afb5b0[hd_dll_afb5a4] @ hd_dll_afb595;

ptr hd_dll_afb5c0 @ 0xCC;
num hd_dll_afb5cf @ (hd_dll_afaf5e + 0x54);
varPaddT<s_s32p, 0x8> hd_dll_afb5d3[hd_dll_afb5cf] @ hd_dll_afb5c0;

ptr hd_dll_afb5e3 @ 0xD0;
num hd_dll_afb5f2 @ (hd_dll_afaf5e + 0x5A);
varPaddT<s_s32p, 0x8> hd_dll_afb600[hd_dll_afb5f2] @ hd_dll_afb5e3;

ptr hd_dll_afb610 @ 0xD4;
num hd_dll_afb61f @ (hd_dll_afaf5e + 0x5C);
varPaddT<s_s32p, 0x8> hd_dll_afb623[hd_dll_afb61f] @ hd_dll_afb610;

ptr hd_dll_afb633 @ 0x84;
num hd_dll_afb642 @ (hd_dll_afaf5e + 0x34);

// TODO: Loop

ptr hd_dll_afb676 @ 0x88;
num hd_dll_afb685 @ (hd_dll_afaf5e + 0x36);

// TODO: Loop

ptr hd_dll_afb6a3 @ 0x8C;
num hd_dll_afb6a9 @ (hd_dll_afaf5e + 0x38);

// TODO: Loop

ptr hd_dll_afb6c8 @ 0x98;

// TODO: Loop

ptr hd_dll_afb6f0 @ 0x9C;

// TODO: Loop

ptr hd_dll_afb720 @ 0xA0;

// TODO: Loop

ptr hd_dll_afb750 @ 0xA4;

// TODO: Loop

ptr hd_dll_afb780 @ 0xA8;

// TODO: Loop

ptr hd_dll_afb799 @ 0xAC;

// TODO: Loop
// TODO: Lotsa Code

u32 hd_dll_afb851[44] @ 0x160;

// TODO: Loop that goes through this array backwards

ptr hd_dll_afba18 @ 0xD8;

// TODO: Loop

ptr hd_dll_afba58 @ 0xDC;

// TODO: Loop

ptr hd_dll_afba8f @ 0xE0;
num hd_dll_afba9e @ (hd_dll_afaf5e + 0x62);

// TODO: Loop

ptr hd_dll_afbab2 @ 0xE4;
num hd_dll_afbac1 @ (hd_dll_afaf5e + 0x64);

// TODO: Loop

ptr hd_dll_afbb3a @ 0xE8;
num hd_dll_afbb49 @ (hd_dll_afaf5e + 0x66);

// TODO: Loop

ptr hd_dll_afbb60 @ 0xEC;
num hd_dll_afbb6f @ (hd_dll_afaf5e + 0x68);

// TODO: Loop

ptr hd_dll_afbb90 @ 0xF0;
num hd_dll_afbb9f @ (hd_dll_afaf5e + 0x6A);

// TODO: Loop

ptr hd_dll_afbbb9 @ 0xF4;
num hd_dll_afbbc8 @ (hd_dll_afaf5e + 0x6C);

// TODO: Loop

ptr hd_dll_afbbe0 @ 0xF8;

// TODO: Loop
// TODO: End bit
