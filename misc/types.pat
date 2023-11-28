#pragma once

using ptr = u32 
//[[hidden]]
;

using unk_ptr = ptr
[[hidden]]
;

using num = u16
[[hidden]]
;

struct ptVar<T> {
	if (std::mem::read_unsigned($, 4) != 0x00) {
		T *var : ptr [[inline]]; 
	} else {
		padding[4];
	}
};

struct varPaddT<T, auto size> {
	T; 
	padding[size];
};