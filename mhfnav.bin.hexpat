#include <std/mem.pat>

#include <misc/types.pat>
ptr hd_dll_afad7f @ 0x00;

ptr ptr_at_0x04 @ 0x04;
ptr ptr_at_0x0C @ 0x0C;
ptr ptr_at_0x10 @ 0x10;

/** Since this number is right next to 0x10, which points to an array
    of size 0x1A, I assume the elements are size 2 and this is the array len
**/
u32 unk_shorts_len @ 0x14   [[comment("This is an assumption")]];
u16 unk_shorts_lst [unk_shorts_len] @ ptr_at_0x10;

struct struct0_0 {
    ptr ptr;
    varPaddT<u16,2> unk_short_lst [while(std::mem::read_unsigned($,2)!=0)] 
        @ ptr + 6;
};

struct struct0 {
    padding[0x10];
    ptr unk10 [[name("Pointer to unk_ptr_lst")]];
    u32 unk14 [[name("Size of unk_ptr_lst")]];
    ptr unk18 [[name("Pointer to unk_char_lst")]];
    ptr unk1C;
    u32 unk20;

    if (unk14 != 0) {
        struct0_0 unk_ptr_lst [unk14] @ unk10;
    }

    if (unk18 != 0) {
        varPaddT<u8, 1> unk_char_lst[while(std::mem::read_signed($,1)!=-1)] 
            @ unk18;
    }

    // If unk20 == 0, set unk1C to 0. Delete that pointer.
    // I guess unk1C is a pointer to a list of length unk20?
};

struct0 unk0[14] @ hd_dll_afad7f;
