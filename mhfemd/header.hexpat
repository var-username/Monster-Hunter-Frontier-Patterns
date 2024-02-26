#pragma once

#include <misc/types.pat>

struct ptr_table {
    // [mhfo-hd.dll + 0xaf96a1]
    ptr important_nums          [[name("Pointer to Important Numbers")]];
    unk_ptr hd_dll_af96ab;
    unk_ptr hd_dll_af975c;
    ptr monStatTable            [[name("Pointer to Monster Stat Table")]];

    // + 0x10
    unk_ptr hd_dll_af975f;
    unk_ptr hd_dll_af977b;
    unk_ptr hd_dll_af96be;
    unk_ptr hd_dll_af9778;

    // + 0x20
    unk_ptr hd_dll_af97a3;
    unk_ptr hd_dll_af97a0;
    unk_ptr hd_dll_af97c4;
    unk_ptr hd_dll_af97fa;

    // + 0x30
    unk_ptr hd_dll_af97fd;
    ptr specificValues          [[name("Pointer to Specific Values (HC)")]];
    unk_ptr hd_dll_af9803;
    unk_ptr hd_dll_af9806;

    // + 0x40
    unk_ptr hd_dll_af97f7;
    unk_ptr hd_dll_af982b;
    unk_ptr hd_dll_af984b;
    unk_ptr hd_dll_af9854;

    // + 0x50
    unk_ptr hd_dll_af987c;
    unk_ptr hd_dll_af987f;
    ptr ulValues                [[name("Pointer to UL values")]];
    unk_ptr hd_dll_af9885;
};

ptr_table header @ 0x0          [[name("Top level pointer table")]];
