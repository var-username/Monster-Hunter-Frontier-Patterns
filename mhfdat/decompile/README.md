Due to how exhausting making decompile.hexpat by hand was, I decided to streamline it a bit. Now I write the offset from the dll, then the dat file offset, in the adjacent txt file.

To generate decompile_tmp.hexpat, use the following command (on Unix systems. Maybe I'll make a python script for Windows users some day)

```
sed -E "s/^([0-9a-fA-F][0-9a-fA-F]*)[ \t]*([0-9a-fA-F][0-9a-fA-F]*)/ptr hd_dll_\1 @ 0x\2;/" decompile_addr.txt > decompile_tmp.hexpat
```

That should make a functioning hexpat file out of txt data.
