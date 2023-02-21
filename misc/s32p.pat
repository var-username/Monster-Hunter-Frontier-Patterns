#pragma once

#include <std/mem.pat>

// Read Pointer to String
fn rPS (u32 p) {
	return std::mem::read_string(p, 100);
};

// Read Pointer to Pointer to String 
fn rPPS (u32 p, u32 s=4) {
	return rPS(std::mem::read_unsigned(p, s));
};

// Read Indirect Pointer to Pointer to String
fn rIPPS (u32 b, u32 i, u32 s=4) {
	return rPPS(b + (i*s));
};

using s32p;

// Format s32p to display the string
fn fmtS32p (s32p p) {
    return rPS(p.string);
};

// u32 pointer to a string
struct s32p {
	u32 string;
} [[format("fmtS32p"), sealed]];
