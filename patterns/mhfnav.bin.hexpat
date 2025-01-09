import std.mem;

#include <misc/types.pat>
#include <misc/ItemIDs.hexpat>
ptr hd_dll_afad7f @ 0x00;

ptr ptr_at_0x04 @ 0x04;
ptr ptr_at_0x0C @ 0x0C;
ptr ptr_at_0x10 @ 0x10;

/** Since this number is right next to 0x10, which points to an array
    of size 0x1A, I assume the elements are size 2 and this is the array len
**/
u32 unk_shorts_len @ 0x14   [[comment("This is an assumption")]];
u16 unk_shorts_lst [unk_shorts_len] @ ptr_at_0x10;

using ItemQuantity;
fn itemQuantityFmt (ItemQuantity n) {
    return std::format("{:02}x {:04X}", n.quantity, n.item);
};

struct ItemQuantity {
    if (std::mem::read_unsigned($,2) == 0) {
        // If item id is 0, just skip this entry
        padding[4];
        continue;
    } else {
        ItemID item;
        u16 quantity;
    }
} [[sealed, format("itemQuantityFmt")]];

struct TaskRewards {
    ptr ptr;
    ItemQuantity taskRewards [while(std::mem::read_unsigned($+2,2)!=0)] @ ptr
        [[name("Rewards and Quantity")]]
        ;
};

struct NaviTab {
    padding[0x10];
    ptr unk10 [[name("Pointer to Navi Tasks")]];
    u32 unk14 [[name("Number of Navi Tasks")]];
    ptr unk18 [[name("Pointer to unk_char_lst")]];
    ptr unk1C;
    u32 unk20;

    if (unk14 != 0) {
        TaskRewards unk_ptr_lst [unk14] @ unk10
            [[name("Hunter Navi Rewards per Task in tab??")]]
            ;
    }

    if (unk18 != 0) {
        varPaddT<u8, 1> unk_char_lst[while(std::mem::read_signed($,1)!=-1)] 
            @ unk18;
    }

    // If unk20 == 0, set unk1C to 0. Delete that pointer.
    // I guess unk1C is a pointer to a list of length unk20?
};

NaviTab naviTabs[14] @ hd_dll_afad7f
    [[name("Hunter Navi Tabs??")]]
    ;
