# Catastrophe
Adds cat themed content to the game Balatro.

## Player Info
> [!WARNING]  
> This mod is still in early development. The mod is missing a lot of content, existing content is subject to change, and there will be bugs.

### Downloads
- [0.0.1](https://darkhax.net/assets/balatro/catastrophe/catastrophe-0.0.1.zip) - 12/28/2024
### Current Content
As of version **0.0.1** the mod currently adds two new Joker cards named *Miriel* and *Miriel (Full Art)*. These jokers will give you +10 and +15 mult respectively for each consumable held when then hand is scored.

### Future Content
- New jokers based on popular cat memes, my cats, and my my friends cats.
- New joker packs that only contain cat themed jokers. By default, this will be the only way to get catastrophe jokers in the future.
- Hairball seal that makes card act like a wildcard. Has a 1/2 chance to remove the hairball when scored.
- New challenge decks that are specific to cat themed content.
- New cat themed consumables (snacks)
- Potentially cat themed face cards.
- Potentially cat themed blinds.
- Config options/ui.

## Developer Info
This is my first Balatro mod, and the first time I have worked on a LUA project. As a result some things may be done weirdly. If you see anything that is obviously wrong, I would really appreciate being pointed in the right direction. 

### Working Locally
1) Clone or download the git repo.
2) Modify the `.luarc.json` file to point to your mods folder. You will need Steammodded and the lovely dump of the game code in order to run the language server.
3) I am currently using VSCode with the [Lua extension by sumneko](https://marketplace.visualstudio.com/items?itemName=sumneko.lua).
4) When modifying assets, make sure to update both the *1x* and *2x* version of a file. This is required for the assets to be visible on all platforms. In the future we will have some sort of build system to resize automatically.

### Exporting
The project is currently exported manually. Zip up the repo folder and then remove the following entries.
- .git
- .gitignore
- .luarc.json
