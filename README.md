# old-ElvUI
Latest ElvUI for Shadowlands but with alot of changes reverted that made it look worse.

Changes so far:

- Reverted the Adventure Guide to the pre 2019 version which had the Overview, Loot, Abilties and Model tabs on the right side with a image and it had alot of parchment removed by default so it looks alot cleaner than the current ElvUI
- Reverted the new Role Icons in Looking For Group, they were to big and ugly
- Reverted Garrison/Orderhall/Mission/Covenant mission page, ugly backdrop that was added in 9.1 now gone.
- Reverted Spec and Durability datatexts
- Reverted Chat Tab height and moved text position to the left

______________________________________________________________

### Version 12.37 [ ETA: 🍨 ]

**Shiny:**  


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


___
### Version 12.34 [ July 8th 2021 ]

**Nice:**  
Added mover for the Maw Buffs widget in raid/dungeons.  
Removed Guide text from mentor chat, icon will still show.  
Added some options for the top and bottom cosmetic panels (under the new cosmetic tab, under general).  
Fixed Unitframe Custom Color options for Castbars not properly updating when switching between characters on same profile.  
Fixed issue with Ultrawide / Eyefinity not letting you move frames to the left screen.  
Fixed Spellbook error in combat (happened when leveling).  
Added Mistweaver PVP Buffs (Peaceweaver and Dematerialize) to the Whitelist.  
Fixed Player Choice skin in Mythic+  

___
### Version 12.33 [ July 4th 2021 ]

**Stuff:**  
Chat Module now supports new Text To Speech options (Options > Install > Setup Chat, might be required, do this if you have issues).  
Added Korthia buff (Anima Gorged) to Whitelist.  
Fixed a couple issues with Trade Skill skin.  

___
### Version 12.32 [ July 3rd 2021 ]

**Ok:**  
Skinned a few unskinned things.  
Added Korthia buff (Rift Veiled) to Whitelist.  
Updated Range Check Library.  

___
### Version 12.31 [ July 1st 2021 ]

**Hotfixes:**  
Fixed Player Choice skin error in tower (once more).  
Fixed an issue with the Ace3 skin which caused some buttons to fill the screen.  
Fixed an issue which caused some borders to overlap when not using pixel mode.  
Allowed Chat Bubbles to be skinned in tower since they seem to not be allowed there.  

___
### Version 12.30 [ June 30th 2021 ]

**Hotfixes:**  
Fixed Barber skin error.  
Fixed Achievement skin error.  
Fixed Orderhall Talent skin.  
Fixed Player Choice skin while in tower (again).  

___
### Version 12.29 [ June 29th 2021 ]

**Hotfixes:**  
Readded Item Info options for Bag slots.  

___
### Version 12.28 [ June 29th 2021 ]

**Hotfixes:**  
Talent spec spell icons slightly larger.  
Fixed bag skin (not the all in one bag).  
Hide mythic score when its at zero.  

___
### Version 12.27 [ June 29th 2021 ]

**Hotfixes:**  
Fixed error when Ace3 skin was disabled.  

___
### Version 12.26 [ June 29th 2021 ]

**Hotfixes:**  
Toolkit SetBackdrop error.  

___
### Version 12.25 [ June 29th 2021 ]

**Added:**  
Mythic+ score options in the tooltip section (Based on Blizzards new score API)  
Option to enable/disable the Combat Repeat function in Chat  
Position, X-Offset, Y-Offset options for Item Count and Item Level in Bags  

**Fixes:**  
Fixed interruptible and nonInterruptible colors in castbars  
Fixed rare healprediction lua error  
Fixed rare power prediction lua error  
Fixed rare tempHistory chat lua error  
Fixed skins for patch 9.1  

**Updates:**  
Optimized auras code, some players might notice a FPS gain in big mob pulls  
Updated filters for Sanctum of Domination (All difficulties)  
Updated filters for Tazavesh, the Veiled Market (Mythic)  
Updated range tags  
Updated tooltip options  

___
### Version 12.24 [ March 19th 2021 ]

**Changes:**  
Apply to All for Aura Indicator on Pet and Focus now works correctly.  
Updated Style Filter code for Casting triggers and fixed a few bugs when using Name Only in nameplate settings.  
Fixed an issue which caused the Static and Real Player nameplate to display at the same time.  

___

### Version 12.23 [ March 12th 2021 ]

**Hotfix:**  
Locale was forcing the Options into English for some languages.  

___

### Version 12.22 [ March 12th 2021 ]

**Nice:**  
Alter Time for Mages corrected on Player Buffs and Turtle Buffs.  
Nameplate Target Classbar should show properly again and play nicely with Style Filters.  
Updated Style Filter code a bit, which prevents flickering of Name Only mode Nameplates.  
Addon Manager skin can now display addon names in other languages, instead of squares.  
Removed Vender Greys display as Blizzard has added one, however we kept our Detailed option to show the price of each.  

___

### Version 12.21 [ March 9th 2021 ]

**Added:**  
PowerBar widget now has a mover  
Click-Through option for AuraBars  
Mouseover and Alpha setting for Voice Chat Panel  
Frame Level and Strata options for DataBars and ActionBars  
Paragon display for Reputation Bar (optional bag icon when loot is available)  
Heal Prediction and Threat options for Party Pets  
Threat options for Tank Target and Party Target frames, Raid Icon option for Pet frame  
Turtle Buffs and Player Buffs updated (Thanks Shrom)  
NamePlate Target Arrow textures (Thanks Releaf) with the option to Scale and Space them  
Another Player Resting Icon (Thanks Releaf), along with a few Minimap Mail icon options  
New Role Icons displayed when you queue (Thanks Releaf - also, no it doesnt have an option)  
StyleFilter triggers for UnitRole, InParty, and InRaid  

**Fixes:**  
Spooky Arena Prep Frame bugs  
Trinket bugs on Arena Frames  
Actionbar Paging wasnt exporting  
Error in ClassPower on NamePlates  
Error in Currency and Difficulty Datatexts  
Experience DataBar not displaying correctly after toggling  
StyleFilter code updated to hopefully correct several issues  
Zone and Boss Button code updated (global fade works on them again)  
StanceBar options not updating without a reload  

___

### Version 12.20 [ February 3rd 2021 ]

**Fixed:**  
Paladin Aura Mastery lag issue  
Gold format Short (Whole Numbers Spaced) error  
Swapped the layout of Available Tags listing for readability  
Power Shortvalue will follow the same rules by hiding if 0  

___

### Version 12.19 [ February 2nd 2021 ]

**Added:**  
Bag Item Info option to change Anima text style  
Sort by Index option for Unitframes  
Classpower Shortvalue Tags  

**Fixes:**  
Experience Bar Error  
Grey Value corrected on Gold Datatext  
ActionBar Masque settings were not letting you toggle text  
Hotkey Range Color when using text range coloring  
Garrison and Island tooltips  

___

### Version 12.18 [ February 1st 2021 ]

**Updated Parts:**  
[IMPORTANT] Action Bar pages will finally match the bar numbers  
Text settings for Action Bars: Hotkey, Macro, Count  
Arena Trinkets and Arena Prep  
Multiple Skins  
Raid Auras  

**Fixed Stuff:**  
Delete Grey Items  
Quest Experience Bar  
Boss Banner Error  
Nameplate Widget Error  
Rare ILvl error when Inspecting  
Auto Repair when not in Guild  
Mend Pet (Hunter) in Aura Watch  
Stance and Pet buttons were not properly hidden  

**Added Things:**  
Anima in Bags  
Just Backpack to Bag Bar  
Aura Watch on Focus and Boss Frame  
Enveloping Breathing (Monk) to Aura Watch  
Charged Combo Point (Rogue) on UnitFrames and NamePlates  
Show Max Currency setting for Currency Datatext  
Torghast Info onto the Time Datatext  
Daily Reset added to Time Datatext  
Grey Items Value on Bags Datatext  
Condensed (Spaced) and Short (Whole Numbers Spaced) format options added to Gold Datatext  

**Tag Changes:**  
[health:current] will now show full value  
[health:current:shortvalue] will show the short value  

___

### Version 12.17 [ January 4th 2021 ]

**Hotfixed:**  
Updated Ace3 so buttons on the side of Options will not be under the frame.  

___

### Version 12.16 [ November 27th 2020 ]

**Happy Holidays:**  
The Minimap was fixed for Torghast.  
Bag Spacing setting min was lowered to -3.  
Added XP Quest Percent toggle in settings under General > BlizzUI Improvements.  
Added Volume Datatext (Thanks @Caedis).  

___

### Version 12.15 [ November 24th 2020 ]

**Happy Holidays:**  
Hotfixed a NamePlate bug, that was causing plate to be broken.  

___

### Version 12.14 [ November 23rd 2020 ]

**Sweet:**  
Added Hide Keybind for each ActionBar, Pet, and Stance bar.  
Corrected skinned Chat Bubble Backdrop level.  
Fixed DT Currency Headers being goofy.  
Fade Duration option for Map was fixed.  
Fixed the Restore Bar button for ActionBars.  
Gave ActionBars Count, HotKey, and Macro text color overrides (Thanks @Caedis).  
The eyeball for group finder was still hiding. Should do a less hide now.  
Fixed the BG Double status bar not skinning right.  
Encounter Journal opens correctly with Smaller Map on.  
Skinned Equipment Buttons (Thanks @Aftermathhqt).  
Added Below and Above (Inside) options for chat editbox (Thanks @Cistara).  
Adjusted the skin code to prevent possible errors from other addons involving backdrop not existing.  
Updated all the Spell IDs we should need for Shadowlands dungeons and the first raid.  
World Quest Alert Frame will be skinned properly again.  
Fixed up the Bag Bar skin code.  

___

### Version 12.13 [ November 17th 2020 ]

**Early Message:**  
Real Change Log coming soon.. Servers went up early. This is for 9.0.2, the main change in this version is the way scaling works in the UI, using any scaling size you prefer should work much, much better. However, this is new and it still needs a little adjusting but overall experience with scaling should be a ton better. Also, the Unified Fonts setting was further adjusted to be exactly as it was pre-font changes.  

**Epic:**  
The new scaling adjustments are in place, which should allow you to select a custom scale that will keep borders intact better. This comes with new Small Medium and Large buttons to quickly adjust the scale *(Reload is required to properly change scale)*.  
Unified Font setting is now replicating old behaviour entirely.  
Druid multicrafting castbar is now fixed.  

**Rare:**  
All Individual Unitframes were given Detached Power Bar setting.  
Currency Icons have a little border of their own now.  
Pet bar saturation would sometimes become stuck, it is now unstuck.  
Group Finder eye icon was sometimes behind the button itself, we moved the eyeball up some.  
Fixed up the Hide Button Glow on ActionBars, it was a bit funky before when implemented.  
Time Datatext can now be used in multiple areas without getting confused about what time it actually is.  
Bags Item Level should be more accurate again.  
Chat has a Server Time setting now which can be used instead of Local Time.  
Target Aura Bars attached to Player Aura Bars should be offset correctly.  
Addon Manager skin was adjusted to allow searching by other addons.  
Added Top and Bottom for Custom Text on ActionBars.  
Fixed another Quest Skin but which prevented the Parchment from being shown sometimes with Parchment Remover disabled.  

___

### Version 12.12 [ November 10th 2020 ]

**Woot:**  
Level Locked Spells on Action Bars will display more clearly when doing older instances with friends on a higher level character.  
Masque on Action Bars should once again trim correctly (when Keep Aspect Ratio is checked). The logic was a little off before. Should be okay now.  
Quest Icons on NamePlates would sometimes show the incorrect Icon on some mobs, this logic has been adjusted.  
The Quest Seal Color Text with Parchment Remover enabled should be more visible.  
Added custom font count and hotkey text options for Action Bars (Thanks @Caedis).  
Added custom color options for Cast Bars on UnitFrames (Thanks @Caedis).  
Increased the Cast Bar text offset options on UnitFrames.  
A couple Top Aura font issues resolved.  

___

### Version 12.11 [ November 7th 2020 ]

**Sweet:**  
The Keybinds for disabled ActionBars will work again! Sorry this was overlooked.  
Corrected Count Font Outline on Top Auras, along with the border color being incorrect. Also, Apply All Fonts will a work for these again.  
Implemented a work around for the Quest Objective Tracker Icon being unusable sometimes in combat.  
Added a toggle for Action Button Glow incase you don't want to see procs happening.  
Seals were showing when Parchment Remover was enabled, should be hidden again now.  
Fixed the Mend Pet spell ID for Aura indicator on Pet.  
Added Show Level option for EXP Databar.  

___

### Version 12.10 [ November 6th 2020 ]

**Hotfix:**  
Petbar wasn't appearing with the Backdrop option selected.  

**Also:**  
Top Aura options were reworked and settings for them were reset.  
Added Custom Font options for Unitframe Castbars (Thanks @Caedis).  

___

### Version 12.09 [ November 6th 2020 ]

**Sweet:**  
Nameplates were reset in the last version for some people who had a newer profile, sorry about that. That problem is corrected now.  
**/kb** was upgraded to also work on the microbar and bag items. You can now quickly bind from the Spell (binds by the Spell name) and Macro (binds by the Macro name), on Action buttons (binds to slot), or directly on Bag items (binds by Item ID, not the slot).  

**Nice:**  
Quest Most Expensive Item icon is behaving now.  
Shadowed Unitframes wasn't playing nicely, should be okay now.  
Masque should play nicely again. However noting that unchecking Keep Aspect Ratio will affect Masque icons, keep it on if you want it to use the one intended for the skin you have selected.  

**Okay:**  
Exp Databar would error sometimes.  
Microbar Visibility option would error sometimes.  
Adjustments to the Quest Skin to try to keep the text and backgrounds showing properly (again).  
Fixed Classbar being tiny when using AutoHide option, also would error when leaving a vehicle.  
Actionbar Button Spacing option can once again be set to up to -3.  
Added Party Indicator option for Unitframes (Thanks @Caedis).  
Backdrop on the Stance bar wasn't using the correct multiplier when less than the amount of buttons available.  
Backdrop on the Microbar was a little off, that is sorted.  
Added Honor Level to Honor bar text outputs.  
Fixed the last tick on castbars.  

___

### Version 12.08 [ November 2nd 2020 ]

**Wonderful:**  
Ungoofed the Nameplate Thin Border option (under *General > Media > Borders*).  
Removed ultra rare hidden error with how we spawn the Talking Head Frame.  
Tweaked "Unified Font Sizes" a little more to mimic the older style and disabled it by default.  
Supressed the error when you dont have Pawn updated yet, go update it if you use it! :)  

___

### Version 12.07 [ November 1st 2020 ]

**Nice:**  
Added new "Unified Font Sizes" setting for "Replace Blizzard Fonts" (on by default). A decent amount of you didn't seem to like the change this hopefully will make you love us again. <3  
Actionbar Buttons can be sized unproportionally now by unchecking the Keep Size Ratio option. This will let you make an EPIC looking bar.  
HelpTips will now be hidden with Hide Tutorials, even while in combat (it was protected for safety but seems okay without it).  
Added an option for Ultrawide monitors to be 16:9 like eyefinity would do but on one monitor (Thanks @Gholie).  
Microbar can have a backdrop like ActionBars now.  
Fixed Item Upgradeable Icon while using Pawn.  
Nameplates now also have a Thin Border option.  
Added option to hide Health Bar on Tooltips.  

**Datatext:**  
Added Datatext Option to hide friends playing CoD: Cold War.  
ElvUI Datatext now has a Custom Label option.  
Updated Movement Speed Datatext (Thanks @Caedis).  
Gave Mastery and Haste Datatext Decimal Length and Label / No Label option.  
Gave Combat Datatext a Full Time option.  
Fixed Datatext Gold Tooltip Style.  

**Yay:**  
Fixed unequal Classbar combo points.  
Fixed Heirloom Cooldown not fitting the icon.  
Fixed Class bar sometimes not showing when it's supposed to.  
Party Pets now have an Aura Watch setting.  
Maybe fixed the "Most Expensive" icon from getting stuck.  
Hotkey text on Stance Bar will show again.  
Updated Trinket Spells for Trinket element.  
Fixed [altpowercolor] tag.  
Added [reactioncolor] back into tags.  
Heal Prediction was messing up for Druids but I fixed it.  
Updated Castbar Ticks amount, nice Penance btw.  
Remove that one Databar Quest EXP error.  
Chat Editbox will follow the chats text font and size.  
Center piece of Phase Indicator was getting stuck on.  
Another attempt to make sure the background/seal background art show correctly on Quest frame.  
Fixed Transmog squares turning white when changing spec when your profile changes.  
Stopped yoinking the progress bar off the collections appearance sets.  
Fixed Auras text from using wrong settings.  

___

### Version 12.06 [ October 22nd 2020 ]

**Excellent:**  
Adjusted fonts to scale a little better to follow what Blizzard intended.  
Databars: Fixed EXP mover not showing up, fixed visibility logic for all bars.  
Adjusted backdrop color of Account Wide achievements to a soft dark blue.  
Updated Phase Indicator to show Chromie Champions and Sharding players.  
Attempted to correct Power Prediction not anchoring correctly on Additional Power.  
Let tag [name:title] fall back to [name] when phased.  

___

### Version 12.05 [ October 21st 2020 ]

**Changes:**  
Attempted to fix a taint with opening Spellbook in combat  
Shut off the NewPlayerExperience because it conflicts with ActionBars  
Small update for Missions and Follower skins (classhall)  
ClassBar when login as kitty was tiny  

___

### Version 12.04 [ October 19th 2020 ]

**Nice:**  
Boss button should appear as its supposed to now.  
Gender display option in tooltip had space on the wrong side.  
Adjusted the QuestXP code to not mess with Reward Item Tooltip.  
Fixed Additional Power Prediction not anchoring properly when set to vertical fill.  
Cleaned up the Equipment flyout skin some.  
Movie frame dialog backdrop was missing.  

___

### Version 12.03 [ October 17th 2020 ]

**Yay:**  
Fixed taint for Override Action Button Show  
Battleground Datatext was showing in Arena where it doesn't work anymore  
Objective Tracker button has a range overlay now and the (its grey) should be fixed  
Stance bar showing when entering a Battleground on priest and it switching you to healer from Shadow  
Databar Quest XP will show green for quests you are on and have completed, unless you have completed enabled  
Heal Pred was anchoring incorrectly when absorb style was set to None  
Fixed Alternative Power UnitIsUnit error  

___

### Version 12.02 [ October 17th 2020 ]

**Fancy:**  
Clean Boss Button option wasn't saving properly.  
Added a Show Bubbles option for Databars.  
Fixed Difficulty Datatext error.  
Added two buttons to Quick Toggle Blizzard Skins, in the skin section of config.  
Allowed the MicroBar to be shown in Pet Battles by editing the visibility setting.  
___

### Version 12.01 [ October 16th 2020 ]

**Nice:**  
Unitframe and Nameplate font issues (new method to get them showing properly)  
Actionbar Backdrops we reworked to fix them being a little funky, this includes Pet and Stance bar  
Boss and Zone Button being jumpy  

**Good:**  
oUF updates  
System DT options: No Label, Other Addons  
ElvUI_QuestXP is now depreciated and forced off  

**Fixed:**  
Voice Chat Error  
NewComer Chat Error  
Reagent Bank busted  
Status Report Errors  
Tooltips breaking other things  
Ace3 skin breaking other things  
Buffwatch errors (they are Aurawatch now)  
Databars not showing properly with combat setting  
Databars Show Border option not working properly  
Unitframe Additional power works again  
Unitframe Heal and Power Prediction  
Nameplate Power Bars were weird  
Nameplate failing to update  
Test Nameplate works a lot better now  
Time Datatext showing empty world PVP stuff  

**Unbroken Skins:**  
Pet Battle Tooltip  
Scrap Machine  
Azerite Respec  
AutoComplete backdrop  
Bag Bar icons being wrong  
Bank Skin with Bag module off  
Equipment Flyout was busted

___

### Version 12.00 [ October 13th 2020 ]

**Cool:**  
We updated our backdrop code to behave nicely with the backdrop changes Blizzard implemented.  
We decided to completely rewrite the DataBars, this includes rewriting the old threat into this new module.  

**Shiny:**  
Even though Shadowlands was delayed, this version will contain the Mythic+ and Raid filter list for the expansion.  
NamePlates had the wrong font when loading into the game, should be resolved now (for real finally).  
DataTexts have a better options now to allow customizing even further, we will add new options here over time.  
New section for Boss Button, Zone Ability, and Vehicle exit in the ActionBars options, which includes adding the ability to enable Inherit Global Fade on the Boss and Zone buttons.  
Thin Border Unitframe setting can be toggled separately, regardless of the Thin Border UI setting (both are found under *General > Media > Borders* now).  
Quest reward will show percent of level, also the EXP Bar will show Quest XP if enabled.  
Fixed an issue that was causing Aura Statusbars color to become color stuck on auras with no duration.  