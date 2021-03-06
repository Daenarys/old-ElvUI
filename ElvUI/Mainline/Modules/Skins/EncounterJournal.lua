local E, L, V, P, G = unpack(ElvUI)
local S = E:GetModule('Skins')

local _G = _G
local unpack = unpack
local select = select
local pairs = pairs
local ipairs = ipairs
local next = next
local rad = rad

local CreateFrame = CreateFrame
local GetItemInfo = GetItemInfo
local GetItemQualityColor = GetItemQualityColor
local hooksecurefunc = hooksecurefunc

local ITEMQUALITY_LEGENDARY = Enum.ItemQuality.Legendary or 5

local function HandleButton(btn, ...)
	S:HandleButton(btn, ...)

	if btn:GetFontString() then
		btn:GetFontString():SetTextColor(1, 1, 1)
	end
end

local function SkinDungeons()
	local b1 = _G.EncounterJournalInstanceSelectScrollFrameScrollChildInstanceButton1
	if b1 and not b1.isSkinned then
		HandleButton(b1)
		b1.bgImage:SetInside()
		b1.bgImage:SetTexCoord(.08, .6, .08, .6)
		b1.bgImage:SetDrawLayer('ARTWORK')
		b1.isSkinned = true
	end

	for i = 1, 100 do
		local b = _G['EncounterJournalInstanceSelectScrollFrameinstance'..i]
		if b and not b.isSkinned then
			HandleButton(b)
			b.bgImage:SetInside()
			b.bgImage:SetTexCoord(0.08,.6,0.08,.6)
			b.bgImage:SetDrawLayer('ARTWORK')
			b.isSkinned = true
		end
	end
end

local function SkinBosses()
	local bossIndex = 1
	local _, _, bossID = _G.EJ_GetEncounterInfoByIndex(bossIndex)
	local bossButton

	local encounter = _G.EncounterJournal.encounter
	encounter.info.instanceButton.icon:SetMask("")

	while bossID do
		bossButton = _G['EncounterJournalBossButton'..bossIndex]
		if bossButton and not bossButton.isSkinned then
			HandleButton(bossButton)
			bossButton.creature:ClearAllPoints()
			bossButton.creature:Point('TOPLEFT', 1, -4)
			bossButton.isSkinned = true
		end

		bossIndex = bossIndex + 1
		_, _, bossID = _G.EJ_GetEncounterInfoByIndex(bossIndex)
	end
end

local function SkinOverviewInfo(self, _, index)
	local header = self.overviews[index]
	if not header.isSkinned then
		for i = 4, 18 do
			select(i, header.button:GetRegions()):SetTexture()
		end

		HandleButton(header.button)

		header.descriptionBG:SetAlpha(0)
		header.descriptionBGBottom:SetAlpha(0)
		header.description:SetTextColor(1, 1, 1)
		header.button.title:SetTextColor(unpack(E.media.rgbvaluecolor))
		header.button.title.SetTextColor = E.noop
		header.button.expandedIcon:SetTextColor(1, 1, 1)
		header.button.expandedIcon.SetTextColor = E.noop

		header.isSkinned = true
	end
end

local function SkinOverviewInfoBullets(object)
	local parent = object:GetParent()

	if parent.Bullets then
		for _, bullet in pairs(parent.Bullets) do
			if not bullet.styled then
				bullet.Text:SetTextColor(1, 1, 1)
				bullet.styled = true
			end
		end
	end
end

local function HandleTabs(tab)
	tab:StripTextures()
	tab:SetText(tab.tooltip)
	tab:GetFontString():FontTemplate(nil, nil, '')
	tab:SetTemplate()
	tab:SetScript('OnEnter', E.noop)
	tab:SetScript('OnLeave', E.noop)
	tab:Size(tab:GetFontString():GetStringWidth()*1.5, 20)
	tab.SetPoint = E.noop
end

local function SkinAbilitiesInfo()
	local index = 1
	local header = _G['EncounterJournalInfoHeader'..index]
	while header do
		if not header.isSkinned then
			header.flashAnim.Play = E.noop

			header.descriptionBG:SetAlpha(0)
			header.descriptionBGBottom:SetAlpha(0)
			for i = 4, 18 do
				select(i, header.button:GetRegions()):SetTexture()
			end

			header.description:SetTextColor(1, 1, 1)
			header.button.title:SetTextColor(unpack(E.media.rgbvaluecolor))
			header.button.title.SetTextColor = E.noop
			header.button.expandedIcon:SetTextColor(1, 1, 1)
			header.button.expandedIcon.SetTextColor = E.noop

			HandleButton(header.button)

			header.button.bg = CreateFrame('Frame', nil, header.button)
			header.button.bg:SetTemplate()
			header.button.bg:SetOutside(header.button.abilityIcon)
			header.button.bg:SetFrameLevel(header.button.bg:GetFrameLevel() - 1)
			header.button.abilityIcon:SetTexCoord(.08, .92, .08, .92)

			header.isSkinned = true
		end

		if header.button.abilityIcon:IsShown() then
			header.button.bg:Show()
		else
			header.button.bg:Hide()
		end

		index = index + 1
		header = _G['EncounterJournalInfoHeader'..index]
	end
end

local function HandleTopTabs(tab)
	S:HandleTab(tab)
	tab:SetHitRectInsets(0, 0, 0, 0)
end

function S:Blizzard_EncounterJournal()
	if not (E.private.skins.blizzard.enable and E.private.skins.blizzard.encounterjournal) then return end

	local EJ = _G.EncounterJournal
	S:HandlePortraitFrame(EJ)

	EJ.navBar:StripTextures(true)
	EJ.navBar.overlay:StripTextures(true)

	EJ.navBar:CreateBackdrop()
	EJ.navBar.backdrop:Point('TOPLEFT', -2, 0)
	EJ.navBar.backdrop:Point('BOTTOMRIGHT')
	HandleButton(EJ.navBar.home, true)
	EJ.navBar.home.xoffset = 1

	S:HandleEditBox(EJ.searchBox)
	EJ.searchBox:ClearAllPoints()
	EJ.searchBox:Point('TOPLEFT', EJ.navBar, 'TOPRIGHT', 4, 0)

	local InstanceSelect = EJ.instanceSelect
	InstanceSelect.bg:Kill()

	S:HandleDropDownBox(InstanceSelect.tierDropDown)
	S:HandleScrollBar(InstanceSelect.scroll.ScrollBar)
	HandleTopTabs(InstanceSelect.suggestTab)
	HandleTopTabs(InstanceSelect.dungeonsTab)
	HandleTopTabs(InstanceSelect.raidsTab)
	HandleTopTabs(InstanceSelect.LootJournalTab)

	InstanceSelect.suggestTab:ClearAllPoints()
	InstanceSelect.suggestTab:Width(175)
	InstanceSelect.suggestTab:Point('BOTTOMLEFT', InstanceSelect, 'TOPLEFT', 2, -43)
	InstanceSelect.dungeonsTab:ClearAllPoints()
	InstanceSelect.dungeonsTab:Width(125)
	InstanceSelect.dungeonsTab:Point('BOTTOMLEFT', InstanceSelect.suggestTab, 'BOTTOMRIGHT', 2, 0)
	InstanceSelect.raidsTab:ClearAllPoints()
	InstanceSelect.raidsTab:Width(125)
	InstanceSelect.raidsTab:Point('BOTTOMLEFT', InstanceSelect.dungeonsTab, 'BOTTOMRIGHT', 2, 0)
	InstanceSelect.LootJournalTab:ClearAllPoints()
	InstanceSelect.LootJournalTab:Width(125)
	InstanceSelect.LootJournalTab:Point('BOTTOMLEFT', InstanceSelect.raidsTab, 'BOTTOMRIGHT', 2, 0)

	--Skin the tab text
	for i = 1, #InstanceSelect.Tabs do
		local tab = InstanceSelect.Tabs[i]
		local text = tab:GetFontString()

		text:FontTemplate()
		text:Point('CENTER')
	end

	--Encounter Info Frame
	local EncounterInfo = EJ.encounter.info
	EncounterJournalEncounterFrameInfoBG:Kill()
	EncounterInfo.leftShadow:Kill()
	EncounterInfo.rightShadow:Kill()
	EncounterInfo.model.dungeonBG:Kill()
	EncounterJournalEncounterFrameInfoModelFrameShadow:Kill()

	EncounterInfo.instanceButton:ClearAllPoints()
	EncounterInfo.instanceButton:Point("TOPLEFT", EncounterInfo, "TOPLEFT", 0, 15)
	EncounterInfo.instanceTitle:ClearAllPoints()
	EncounterInfo.instanceTitle:Point("BOTTOM", EncounterInfo.bossesScroll, "TOP", 10, 15)

	S:HandleButton(EncounterJournalEncounterFrameInfoLootScrollFrameSlotFilterToggle, true)
	EncounterInfo.difficulty:StripTextures()
	EncounterInfo.reset:StripTextures()
	S:HandleButton(EncounterInfo.reset)
	S:HandleButton(EncounterInfo.difficulty)
	EncounterInfo.difficulty:ClearAllPoints()
	EncounterInfo.difficulty:Point("BOTTOMRIGHT", EncounterJournalEncounterFrameInstanceFrame, "TOPRIGHT", 1, 5)
	EncounterInfo.reset:ClearAllPoints()
	EncounterInfo.reset:Point("TOPRIGHT", EncounterInfo.difficulty, "TOPLEFT", -10, 0)
	EncounterJournalEncounterFrameInfoResetButtonTexture:SetTexture("Interface\\EncounterJournal\\UI-EncounterJournalTextures")
	EncounterJournalEncounterFrameInfoResetButtonTexture:SetTexCoord(0.90625000, 0.94726563, 0.00097656, 0.02050781)

	EncounterInfo.bossesScroll:CreateBackdrop("Transparent")
	EncounterInfo.bossesScroll.backdrop:Point("TOPLEFT", EncounterInfo.bossesScroll, "TOPLEFT", -25, E.Border)
	S:HandleScrollBar(EncounterInfo.bossesScroll.ScrollBar, 4)

	local scrollFrames = {
		EncounterInfo.overviewScroll,
		EncounterInfo.lootScroll,
		EncounterInfo.detailsScroll,
	}

	for _, scrollFrame in pairs(scrollFrames) do
		scrollFrame:CreateBackdrop("Transparent")
		scrollFrame:Height(EncounterInfo.overviewScroll:GetHeight() - (2 + E.Border))
		scrollFrame:Width(370)
		scrollFrame:ClearAllPoints()
		scrollFrame:Point("BOTTOMRIGHT", EncounterJournalEncounterFrame, "BOTTOMRIGHT", -1, 5)
		scrollFrame.backdrop:Point("TOPLEFT", EncounterInfo.bossesScroll.backdrop, "TOPRIGHT", 5, 0)
		scrollFrame.backdrop:Point("BOTTOMLEFT", EncounterInfo.bossesScroll.backdrop, "BOTTOMRIGHT", 5, 0)
	end

	S:HandleScrollBar(EncounterInfo.overviewScroll.ScrollBar, 4)
	S:HandleScrollBar(EncounterInfo.detailsScroll.ScrollBar, 4)
	S:HandleScrollBar(EncounterInfo.lootScroll.scrollBar, 4)

	EncounterInfo.lootScroll.filter:StripTextures()
	S:HandleButton(EncounterInfo.lootScroll.filter)
	EncounterInfo.lootScroll.filter:ClearAllPoints()
	EncounterInfo.lootScroll.filter:Point("BOTTOMLEFT", EncounterInfo.lootScroll.backdrop, "TOPLEFT", 0, 5)
	EncounterInfo.lootScroll.classClearFilter:ClearAllPoints()
	EncounterInfo.lootScroll.classClearFilter:Point("BOTTOM", EncounterInfo.lootScroll, "TOP", -10, -8)

	EncounterInfo.detailsScroll.child.description:SetTextColor(1, 1, 1)
	EncounterInfo.overviewScroll.child.loreDescription:SetTextColor(1, 1, 1)
	EncounterJournalEncounterFrameInfoOverviewScrollFrameScrollChildTitle:SetTextColor(1, 1, 1)
	EncounterInfo.overviewScroll.child.overviewDescription.Text:SetTextColor(1, 1, 1)

	EncounterInfo.overviewTab:Point('TOPLEFT', EncounterInfo, 'TOPRIGHT', E.PixelMode and -3 or 0, -35)
	EncounterInfo.overviewTab.SetPoint = E.noop
	EncounterInfo.overviewTab:GetNormalTexture():SetTexture(nil)
	EncounterInfo.overviewTab:GetPushedTexture():SetTexture(nil)
	EncounterInfo.overviewTab:GetDisabledTexture():SetTexture(nil)
	EncounterInfo.overviewTab:GetHighlightTexture():SetTexture(nil)
	EncounterInfo.overviewTab:CreateBackdrop('Default', true)
	EncounterInfo.overviewTab.backdrop:Point('TOPLEFT', 11, -8)
	EncounterInfo.overviewTab.backdrop:Point('BOTTOMRIGHT', -6, 8)

	EncounterInfo.lootTab:GetNormalTexture():SetTexture(nil)
	EncounterInfo.lootTab:GetPushedTexture():SetTexture(nil)
	EncounterInfo.lootTab:GetDisabledTexture():SetTexture(nil)
	EncounterInfo.lootTab:GetHighlightTexture():SetTexture(nil)
	EncounterInfo.lootTab:CreateBackdrop('Default')
	EncounterInfo.lootTab.backdrop:Point('TOPLEFT', 11, -8)
	EncounterInfo.lootTab.backdrop:Point('BOTTOMRIGHT', -6, 8)

	EncounterInfo.bossTab:GetNormalTexture():SetTexture(nil)
	EncounterInfo.bossTab:GetPushedTexture():SetTexture(nil)
	EncounterInfo.bossTab:GetDisabledTexture():SetTexture(nil)
	EncounterInfo.bossTab:GetHighlightTexture():SetTexture(nil)
	EncounterInfo.bossTab:CreateBackdrop('Default')
	EncounterInfo.bossTab.backdrop:Point('TOPLEFT', 11, -8)
	EncounterInfo.bossTab.backdrop:Point('BOTTOMRIGHT', -6, 8)

	EncounterInfo.modelTab:GetNormalTexture():SetTexture(nil)
	EncounterInfo.modelTab:GetPushedTexture():SetTexture(nil)
	EncounterInfo.modelTab:GetDisabledTexture():SetTexture(nil)
	EncounterInfo.modelTab:GetHighlightTexture():SetTexture(nil)
	EncounterInfo.modelTab:CreateBackdrop('Default')
	EncounterInfo.modelTab.backdrop:Point('TOPLEFT', 11, -8)
	EncounterInfo.modelTab.backdrop:Point('BOTTOMRIGHT', -6, 8)

	--Encounter Instance Frame
	local EncounterInstance = EJ.encounter.instance
	EncounterInstance:CreateBackdrop("Transparent")
	EncounterInstance:Height(EncounterInfo.bossesScroll:GetHeight())
	EncounterInstance:ClearAllPoints()
	EncounterInstance:Point("BOTTOMRIGHT", EncounterJournalEncounterFrame, "BOTTOMRIGHT", -1, 3)
	EncounterInstance.loreBG:SetSize(325, 280)
	EncounterInstance.loreBG:ClearAllPoints()
	EncounterInstance.loreBG:Point("TOP", EncounterInstance, "TOP", 0, 0)
	EncounterInstance.mapButton:ClearAllPoints()
	EncounterInstance.mapButton:Point("BOTTOMLEFT", EncounterInstance.loreBG, "BOTTOMLEFT", 25, 35)
	S:HandleScrollBar(EncounterInstance.loreScroll.ScrollBar, 4)
	EncounterInstance.loreScroll.child.lore:SetTextColor(1, 1, 1)
	
	-- Loot buttons
	for i, items in next, _G.EncounterJournal.encounter.info.lootScroll.buttons do
		local item = items.lootFrame

		item.bossTexture:SetAlpha(0)
		item.bosslessTexture:SetAlpha(0)

		item.icon:Size(32, 32)
		item.icon:Point('TOPLEFT', E.PixelMode and 3 or 4, -(E.PixelMode and 7 or 8))
		item.icon:SetDrawLayer('ARTWORK')
		item.icon:SetTexCoord(unpack(E.TexCoords))

		item.IconBackdrop = CreateFrame('Frame', nil, item)
		item.IconBackdrop:SetFrameLevel(item:GetFrameLevel())
		item.IconBackdrop:Point('TOPLEFT', item.icon, -1, 1)
		item.IconBackdrop:Point('BOTTOMRIGHT', item.icon, 1, -1)
		item.IconBackdrop:SetTemplate()
		
		item:CreateBackdrop("Transparent")
		item.backdrop:Point("TOPLEFT", 0, -4)
		item.backdrop:Point("BOTTOMRIGHT", 0, E.PixelMode and 3 or 0)

		item.name:ClearAllPoints()
		item.name:Point('TOPLEFT', item.icon, 'TOPRIGHT', 6, -2)
		
		item.boss:SetTextColor(1, 1, 1)
		item.boss:ClearAllPoints()
		item.boss:Point('BOTTOMLEFT', 4, 6)

		item.slot:SetTextColor(1, 1, 1)
		item.slot:ClearAllPoints()
		item.slot:Point('TOPLEFT', item.name, 'BOTTOMLEFT', 0, -3)

		item.armorType:SetTextColor(1, 1, 1)
		item.armorType:ClearAllPoints()
		item.armorType:Point('RIGHT', item, 'RIGHT', -10, 0)

		S:HandleIconBorder(item.IconBorder, item.IconBackdrop)

		if i == 1 then
			items:ClearAllPoints()
			items:Point('TOPLEFT', EncounterInfo.lootScroll.scrollChild, 10, 0)
		end
	end

	-- Search
	_G.EncounterJournalSearchResults:StripTextures()
	_G.EncounterJournalSearchResults:SetTemplate()
	_G.EncounterJournalSearchBox.searchPreviewContainer:StripTextures()

	S:HandleCloseButton(_G.EncounterJournalSearchResultsCloseButton)
	S:HandleScrollBar(_G.EncounterJournalSearchResultsScrollFrameScrollBar)

	--Suggestions
	for i = 1, _G.AJ_MAX_NUM_SUGGESTIONS do
		local suggestion = _G.EncounterJournal.suggestFrame['Suggestion'..i]
		if i == 1 then
			HandleButton(suggestion.button)
			suggestion.button:SetFrameLevel(4)
			S:HandleNextPrevButton(suggestion.prevButton, nil, nil, true)
			S:HandleNextPrevButton(suggestion.nextButton, nil, nil, true)
		else
			HandleButton(suggestion.centerDisplay.button)
		end
	end

	if E.private.skins.parchmentRemoverEnable then
		local suggestFrame = _G.EncounterJournal.suggestFrame

		-- Suggestion 1
		local suggestion = suggestFrame.Suggestion1
		suggestion.bg:Hide()
		suggestion:SetTemplate('Transparent')

		local centerDisplay = suggestion.centerDisplay
		centerDisplay.title.text:SetTextColor(1, 1, 1)
		centerDisplay.description.text:SetTextColor(.9, .9, .9)

		local reward = suggestion.reward
		reward.text:SetTextColor(.9, .9, .9)
		reward.iconRing:Hide()
		reward.iconRingHighlight:SetTexture()

		-- Suggestion 2 and 3
		for i = 2, 3 do
			suggestion = suggestFrame['Suggestion'..i]
			suggestion.bg:Hide()
			suggestion:SetTemplate('Transparent')
			suggestion.icon:Point('TOPLEFT', 10, -10)

			centerDisplay = suggestion.centerDisplay
			centerDisplay:ClearAllPoints()
			centerDisplay:Point('TOPLEFT', 85, -10)
			centerDisplay.title.text:SetTextColor(1, 1, 1)
			centerDisplay.description.text:SetTextColor(.9, .9, .9)

			reward = suggestion.reward
			reward.iconRing:Hide()
			reward.iconRingHighlight:SetTexture()
		end

		hooksecurefunc('EJSuggestFrame_RefreshDisplay', function()
			for i, data in ipairs(suggestFrame.suggestions) do
				local sugg = next(data) and suggestFrame['Suggestion'..i]
				if sugg then
					if not sugg.icon.backdrop then
						sugg.icon:CreateBackdrop()
					end

					sugg.icon:SetMask('')
					sugg.icon:SetTexture(data.iconPath)
					sugg.icon:SetTexCoord(unpack(E.TexCoords))
					sugg.iconRing:Hide()
				end
			end
		end)

		hooksecurefunc('EJSuggestFrame_UpdateRewards', function(sugg)
			local rewardData = sugg.reward.data
			if rewardData then
				if not sugg.reward.icon.backdrop then
					sugg.reward.icon:CreateBackdrop(nil, nil, nil, nil, nil, nil, nil, nil, 3)
				end

				sugg.reward.icon:SetMask('')
				sugg.reward.icon:SetTexture(rewardData.itemIcon or rewardData.currencyIcon or [[Interface\Icons\achievement_guildperk_mobilebanking]])
				sugg.reward.icon:SetTexCoord(unpack(E.TexCoords))

				local r, g, b = unpack(E.media.bordercolor)
				if rewardData.itemID then
					local quality = select(3, GetItemInfo(rewardData.itemID))
					if quality and quality > 1 then
						r, g, b = GetItemQualityColor(quality)
					end
				end
				sugg.reward.icon.backdrop:SetBackdropBorderColor(r, g, b)
			end
		end)
	end

	--Suggestion Reward Tooltips
	if E.private.skins.blizzard.tooltip then
		local tooltip = _G.EncounterJournalTooltip
		local item1 = tooltip.Item1
		local item2 = tooltip.Item2
		tooltip.NineSlice:SetTemplate('Transparent')
		S:HandleIcon(item1.icon)
		S:HandleIcon(item2.icon)
		item1.IconBorder:Kill()
		item2.IconBorder:Kill()
	end

	--Powers
	local LootJournal = EJ.LootJournal
	HandleButton(LootJournal.ClassDropDownButton, true)
	LootJournal.ClassDropDownButton:SetFrameLevel(10)
	HandleButton(LootJournal.RuneforgePowerFilterDropDownButton, true)
	LootJournal.RuneforgePowerFilterDropDownButton:SetFrameLevel(10)

	if E.private.skins.parchmentRemoverEnable then
		_G.EncounterJournal.LootJournal:StripTextures()
		_G.EncounterJournal.LootJournal:SetTemplate('Transparent')
	end

	S:HandleScrollBar(LootJournal.PowersFrame.ScrollBar)

	local IconColor = E.QualityColors[ITEMQUALITY_LEGENDARY]
	hooksecurefunc(LootJournal.PowersFrame, 'RefreshListDisplay', function(buttons)
		if not buttons.elements then return end

		for i = 1, buttons:GetNumElementFrames() do
			local btn = buttons.elements[i]
			if btn and not btn.IsSkinned then
				btn.Background:SetAlpha(0)
				btn.BackgroundOverlay:SetAlpha(0)
				btn.CircleMask:Hide()
				S:HandleIcon(btn.Icon, true)
				btn.Icon.backdrop:SetBackdropBorderColor(IconColor.r, IconColor.g, IconColor.b)

				btn:CreateBackdrop('Transparent')
				btn.backdrop:Point('TOPLEFT', 5, -1)
				btn.backdrop:Point('BOTTOMRIGHT', 5, 1)

				btn.IsSkinned = true
			end
		end
	end)

	--Dungeon/raid selection buttons (From AddOnSkins)
	hooksecurefunc('EncounterJournal_ListInstances', SkinDungeons)
	_G.EncounterJournal_ListInstances()

		--Boss selection buttons
		hooksecurefunc('EncounterJournal_DisplayInstance', SkinBosses)

		--Overview Info (From Aurora)
		hooksecurefunc('EncounterJournal_SetUpOverview', SkinOverviewInfo)

		--Overview Info Bullets (From Aurora)
		hooksecurefunc('EncounterJournal_SetBullets', SkinOverviewInfoBullets)

		--Abilities Info (From Aurora)
		hooksecurefunc('EncounterJournal_ToggleHeaders', SkinAbilitiesInfo)

		--_G.EncounterJournalEncounterFrameInfoBG:Kill()

		--EncounterInfo.detailsScroll.child.description:SetTextColor(1, 1, 1)
		--EncounterInfo.overviewScroll.child.loreDescription:SetTextColor(1, 1, 1)
		--_G.EncounterJournalEncounterFrameInfoOverviewScrollFrameScrollChildTitle:SetTextColor(1, 1, 1)
		--EncounterInfo.overviewScroll.child.overviewDescription.Text:SetTextColor(1, 1, 1)
		--EJ.encounter.instance.loreScroll.child.lore:SetTextColor(1, 1, 1)
		--_G.EncounterJournalEncounterFrameInstanceFrameBG:SetTexCoord(0.71, 0.06, 0.582, 0.08)
		--_G.EncounterJournalEncounterFrameInstanceFrameBG:SetRotation(rad(180))
		--_G.EncounterJournalEncounterFrameInstanceFrameBG:SetScale(0.7)
		--_G.EncounterJournalEncounterFrameInstanceFrameBG:CreateBackdrop()
		--_G.EncounterJournalEncounterFrameInstanceFrame.titleBG:SetAlpha(0)
		--_G.EncounterJournalEncounterFrameInstanceFrameTitle:SetTextColor(1, 1, 1)
		--_G.EncounterJournalEncounterFrameInstanceFrameTitle:FontTemplate(nil, 25)
		--_G.EncounterJournalEncounterFrameInfoOverviewScrollFrameScrollChildHeader:SetAlpha(0)

		local parch = _G.EncounterJournal.LootJournal:GetRegions()
		parch:Kill()
	end
	
S:AddCallbackForAddon('Blizzard_EncounterJournal')
