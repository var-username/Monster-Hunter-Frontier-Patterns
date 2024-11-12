#pragma once

/*  These two pointer types exist so you can comment or uncomment 
	the [[hidden]] attribute from one or the other 
	for less visual clutter
*/

/// Represents a 32-bit pointer with known use
using ptr = u32 
//[[hidden]]
;

/// Represents a 32-bit pointer with an unknown use
using unk_ptr = ptr
[[hidden]]
;

/// Represents some important 16-bit number
using num = u16
[[hidden]]
;

/// Represents a pointer to a variable of some type, T
struct ptVar<T> {
	if (std::mem::read_unsigned($, 4) != 0x00) {
		T *var : ptr [[inline]]; 
	} else {
		padding[4];
	}
};

/** Some type, T, followed by an ammount of padding, size.
	Often used in arrays to align elements in memory.
*/
struct varPaddT<T, auto size> {
	T; 
	padding[size];
};