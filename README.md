# old-ElvUI
Latest ElvUI for Shadowlands but with alot of changes reverted that made it look worse.

Changes so far:

- Reverted the Adventure Guide to the pre 2019 version which had the Overview, Loot, Abilties and Model tabs on the right side with a image and it had alot of parchment removed by default so it looks alot cleaner than the current ElvUI
- Reverted the new Role Icons in Looking For Group, they were to big and ugly
- Reverted Garrison/Orderhall/Mission/Covenant mission page, ugly backdrop that was added in 9.1 now gone.
- Reverted Spec and Durability datatexts
- Reverted Chat Tab height and moved text position to the left

______________________________________________________________

### Version 12.39 [ ETA: 🍨 ]

**Development:**  


___
### Version 12.38 [ August 2nd 2021 ]

**Big Aura Update:**  
UF/NP: Added Centered Support, Size Ratio, Stack Count offsets, Stackable Auras (Bolstering, Force of Nature, etc)  
Nameplate: Added Rows, Attach To, Castbar Text and Time offsets, Smart Aura Position, and Blizzard Plate Font settings  
Unitframe: Added GrowthX and GrowthY settings and also improved Smart Aura Position  
*note: The GrowthX and GrowthY may need to be adjusted in your settings, if you are not using default*  

**Updated:**  
Added [classcolor:target] for class color of units [target]  
Added Style Filter trigger for Faction and a [factioncolor] tag  
Setup CVars will no longer reset Nameplate CVars if the Nameplate module is disabled  
Bank and Bags Quality color setting wasnt working correctly  
Reagent and Bank anchor was sometimes off  
Unitframe Combat Icon offsets increased  
*note: [classcolor] is the new [namecolor], however [namecolor] will continue to work*  

**Skins:**  
Trade, Communities, and Auction House skins updated  
Chat Bubble Border and Guild Control skin issues fixed  
Season PVP Reward Icon had checkmark behind it  
Orderhall and Garrison mission skin fixes  

___
### Version 12.37 [ July 25th 2021 ]

**Shiny:**  
Added option to hide border colors for NP/UF Auras entirely (Borders by Type and Borders by Dispel)  
Event Toast mover actually works (maybe, i think) :o  
French Translation update (Thanks @xan2622)  

___
### Version 12.36 [ July 24th 2021 ]

**Better:**  
Bags :)  
Blizzard Bags skin :)  

**Good:**  
Event Toast has a mover now, which is new Level Up display.  
Style Filters were messing with Nameplate Highlight texture.  
Mythic Challenge icon wont be so faded.  
Group Finder had wrong Premade Groups icon.  

___
### Version 12.35 [ July 17th 2021 ]

**MegaShine:**  
Added Nameplate support to show DBM or BigWigs auras on nameplates, stuff like Fixate. Settings under (Nameplates > General > General > Boss Mod Auras).  
Added support to Style Filters to trigger based on Boss Mod Auras.  

**Shiny:**  
Improved preformance of Bags module.  
Added Season 2 Dungeon Affix Debuffs and Blacklisted Drained debuff.  
Added Slider for Reputation Databar alpha when not using custom colors.  
Added Unit Class Color action to Style Filters.  

**Fixed:**  
Fixed Guild Bank search not fading the tabs.  
Fixed Power Prediction overflowing sometimes.  
Fixed Chat Bubble borders when using no border on non-thin borders.  
Fixed Chat window could not be closed in combat.  
Fixed rare Mover error linked to numpad keys.  
Fixed Blanchy mount display on Unit and Aura.  

**Updated:**  
Increased range to scale Minimap icons more.  
Updated the shading on Bag items when you search.  
Updated the normal Bags skin code a bit, also some of the bank too.  
Nameplate Auras now has a "Color by Type" option which will remove the debuff type border color (stealable and bad dispels will still be shown).