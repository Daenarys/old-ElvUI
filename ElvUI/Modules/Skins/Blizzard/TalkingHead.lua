local E, L, V, P, G = unpack(select(2, ...)) --Import: Engine, Locales, PrivateDB, ProfileDB, GlobalDB
local S = E:GetModule('Skins')

local _G = _G

function S:Blizzard_TalkingHeadUI()
	if not (E.private.skins.blizzard.enable and E.private.skins.blizzard.talkinghead) then return end

	local TalkingHeadFrame = _G.TalkingHeadFrame

	TalkingHeadFrame.BackgroundFrame.TextBackground:SetAtlas(nil)
	TalkingHeadFrame.PortraitFrame.Portrait:SetAtlas(nil)
	TalkingHeadFrame.MainFrame.Model.PortraitBg:SetAtlas(nil)
	TalkingHeadFrame.PortraitFrame:StripTextures()

	if E.db.general.talkingHeadFrameBackdrop then
		TalkingHeadFrame:StripTextures()
		TalkingHeadFrame:SetTemplate('Transparent')
		TalkingHeadFrame.MainFrame:StripTextures()

		local button = TalkingHeadFrame.MainFrame.CloseButton
		S:HandleCloseButton(button)
		button:ClearAllPoints()
		button:Point('TOPRIGHT', TalkingHeadFrame.BackgroundFrame, 'TOPRIGHT', 0, -2)
	else
		TalkingHeadFrame.MainFrame.Model:CreateBackdrop('Transparent')
		TalkingHeadFrame.MainFrame.Model.backdrop:ClearAllPoints()
		TalkingHeadFrame.MainFrame.Model.backdrop:Point('CENTER')
		TalkingHeadFrame.MainFrame.Model.backdrop:Size(120, 119)

		TalkingHeadFrame.MainFrame.CloseButton:Kill()
	end

	TalkingHeadFrame.BackgroundFrame.TextBackground.SetAtlas = E.noop
	TalkingHeadFrame.PortraitFrame.Portrait.SetAtlas = E.noop
	TalkingHeadFrame.MainFrame.Model.PortraitBg.SetAtlas = E.noop

	TalkingHeadFrame.NameFrame.Name:SetTextColor(1, 0.82, 0.02)
	TalkingHeadFrame.NameFrame.Name.SetTextColor = E.noop
	TalkingHeadFrame.NameFrame.Name:SetShadowColor(0, 0, 0, 1)
	TalkingHeadFrame.NameFrame.Name:SetShadowOffset(2, -2)

	TalkingHeadFrame.TextFrame.Text:SetTextColor(1, 1, 1)
	TalkingHeadFrame.TextFrame.Text.SetTextColor = E.noop
	TalkingHeadFrame.TextFrame.Text:SetShadowColor(0, 0, 0, 1)
	TalkingHeadFrame.TextFrame.Text:SetShadowOffset(2, -2)
end

S:AddCallbackForAddon('Blizzard_TalkingHeadUI')