# Monster Hunter Frontier Patterns

[imhex](https://imhex.werwolv.net/) [(github)](https://github.com/WerWolv/ImHex) patterns documenting the structure of data in Monster Hunter Frontier

## Format

Patterns are titled by the file they document, or if sectioned, foldered by the file they document, and named by the aspect of the file. For example, `mhfdat/equipdata.hexpat` documents the equipment data section of `mhfdat.bin`, and is called in the main pattern, `mhfdat.bin.hexpat`. Section patterns are not loaded directly, but instead imported by the main pattern, and enabled or disabled by `#define` statements at the top of the pattern.

## Using these patterns

To properly utilize these patterns, they should be placed in one of the imhex "patterns" folders (see Help>About in the program). This includes subfolders. 

I personally recommend making a Project, as imhex will look for a folder named "patterns" adjacent to the project file.

Some more information is available on our [Introduction Wiki page](https://github.com/var-username/Monster-Hunter-Frontier-Patterns/wiki/Introduction)

## Why did I make this?

In short I wanted to reverse engineer how Frontier stores data for the purposes of modding and simple exploration. Since there is very little public data on the matter, I started my own project.

Also, funny

## Resources

* [imhex Pattern Documentation](https://docs.werwolv.net/pattern-language/)
* [ReFrontier](https://github.com/mhvuze/ReFrontier)
    * At the moment, this is THE best resource documenting the data structure of Frontier
* [ricochhet/MHF-Quest-Resources](https://github.com/ricochhet/MHF-Quest-Resources)
* [Yuvi-App/MHF-QuestEditor](https://github.com/Yuvi-App/MHF-QuestEditor)
* [suzaku01's repositories](https://github.com/suzaku01)
* [Mezeporta's 010 Templates](https://github.com/Mezeporta/010Templates)


## Credits
* Thanks to [@Malckyor](https://github.com/Malckyor) for giving me access to prior work he did with [@Chakratos](https://github.com/Chakratos)!
* Thanks to [@DorielRivalet](https://github.com/DorielRivalet) for sending me the 010 templates they had access to!
* Thanks to [@sekaiwish](https://github.com/sekaiwish) both for their incredible work on MHF server emulation and for recently publishing their client 010 templates