#pragma once

import std.mem;

/** Read a Pointer to a String
	@param p A u32 pointer
	@return The string pointed to by p, up to 255 characters long
*/
fn rPS (u32 p) {
	return std::mem::read_string(p, 255);
};

/** Read a Pointer to a Pointer to a String 
	@param p A u32 pointer
	@param s The length in bytes of the pointer to read
	@return The string pointed to by the pointer at p
*/
fn rPPS (u32 p, u32 s=4) {
	return rPS(std::mem::read_unsigned(p, s));
};

/** Read an Indirect Pointer to a Pointer to a String 
	@param b A u32 address to serve as the base
	@param i How many offsets from base the pointer is
	@param s How large each offset is
	@return The string pointed to by the address
*/
fn rIPPS (u32 b, u32 i, u32 s=4) {
	return rPPS(b + (i*s), s);
};

using s32p;

/** Format s32p to display the string 
	@param p An s32p, which contains a u32 pointer to a string
	@return The string at the pointer
*/
fn fmtS32p (s32p p) {
    return rPS(p.string);
};

/** Represents a u32 pointer to a string
*/
struct s32p {
	u32 string;
} [[format("fmtS32p"), sealed]];

using s_s32p;

/** Format s_s32p to display the string 
	@param p An s_s32p, which contains a u32 pointer to a string
	@return The string at the pointer
*/
fn fmts_S32p (s_s32p p) {
    return rPS(p.string);
};

/** Represents a u32 pointer to a string, plus check for null
*/
struct s_s32p {
    if (std::mem::read_signed($,4) != 0) {
        u32 string;
    } else {
        //padding[4];
		continue;
    }
} [[format("fmts_S32p"), sealed]];
