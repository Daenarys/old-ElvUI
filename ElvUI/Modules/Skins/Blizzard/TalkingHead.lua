local E, L, V, P, G = unpack(select(2, ...)) --Import: Engine, Locales, PrivateDB, ProfileDB, GlobalDB
local S = E:GetModule('Skins')

--Cache global variables
--Lua functions
local _G = _G
--WoW API / Variables
--Global variables that we don't cache, list them here for mikk's FindGlobals script
-- GLOBALS:

function S:Blizzard_TalkingHeadUI()
	if not (E.private.skins.blizzard.enable and E.private.skins.blizzard.talkinghead) then return end

	local TalkingHeadFrame = _G.TalkingHeadFrame
	TalkingHeadFrame:StripTextures()
	TalkingHeadFrame.MainFrame:StripTextures()
	TalkingHeadFrame.PortraitFrame:StripTextures()
	TalkingHeadFrame.PortraitFrame.Portrait:SetAtlas(nil)
	TalkingHeadFrame.MainFrame.Model.PortraitBg:Hide()
	
	TalkingHeadFrame.PortraitFrame.Portrait.SetAtlas = E.noop
	
	S:HandleCloseButton(TalkingHeadFrame.MainFrame.CloseButton)
end

S:AddCallbackForAddon('Blizzard_TalkingHeadUI')
