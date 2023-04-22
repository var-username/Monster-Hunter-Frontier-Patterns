# Monster Hunter Frontier Patterns

[imhex](https://imhex.werwolv.net/) [(github)](https://github.com/WerWolv/ImHex) patterns documenting the structure of data in Monster Hunter Frontier

## Format

Patterns are titled by the file they document, or if sectioned, foldered by the file they document, and named by the aspect of the file. For example, `mhfdat/equipdata.hexpat` documents the equipment data section of `mhfdat.bin`, and is called in the main pattern, `mhfdat.bin.hexpat`. Section patterns are not loaded directly, but instead imported by the main pattern, and enabled or disabled by `#define` statements at the top of the pattern.

## Using these patterns

To properly utilize these patterns, they should be placed in one of the imhex "patterns" folders (see Help>About in the program). This includes subfolders. 

I personally recommend making a Project, as imhex will look for a folder named "patterns" adjacent to the project file.

## Why did I make this?

In short I wanted to reverse engineer how Frontier stores data for the purposes of modding and simple exploration. Since there is very little public data on the matter, I started my own project.

Also, funny

## Resources

* [imhex Pattern Documentation](https://docs.werwolv.net/pattern-language/)
* [ReFrontier](https://github.com/mhvuze/ReFrontier)
    * At the moment, this is THE best resource documenting the data structure of Frontier
    * ReFrontier mentions 010 template files made by Fist. The link is dead and I cannot find these templates anywhere. If found, those templates would be INCREDIBLY USEFUL
* [ricochhet/MHF-Quest-Resources](https://github.com/ricochhet/MHF-Quest-Resources)
* [Yuvi-App/MHF-QuestEditor](https://github.com/Yuvi-App/MHF-QuestEditor)
* [suzaku01's repositories](https://github.com/suzaku01)


## Credits
* Thanks to Malckyor for giving me access to prior work he did with Chakratos!
