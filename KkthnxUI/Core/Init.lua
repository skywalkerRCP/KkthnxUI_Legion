-- Initiation / Engine of KkthnxUI
local AddOn, Engine = ...
local Resolution = GetCurrentResolution() > 0 and select(GetCurrentResolution(), GetScreenResolutions()) or nil
local Windowed = Display_DisplayModeDropDown:windowedmode()
local Fullscreen = Display_DisplayModeDropDown:fullscreenmode()

Engine[1] = CreateFrame("Frame")
Engine[2] = {}
Engine[3] = {}
Engine[4] = {}

function Engine:unpack()
    return self[1], self[2], self[3], self[4]
end

Engine[1].WindowedMode = Windowed
Engine[1].FullscreenMode = Fullscreen
Engine[1].Noop = function() return end
Engine[1].Unit = UnitGUID("player")
Engine[1].Name = UnitName("player")
Engine[1].Class = select(2, UnitClass("player"))
Engine[1].Race = select(2, UnitRace("player"))
Engine[1].Level = UnitLevel("player")
Engine[1].Client = GetLocale()
Engine[1].Realm = GetRealmName()
Engine[1].Resolution = Resolution or (Windowed and GetCVar("gxWindowedResolution")) or GetCVar("gxFullscreenResolution")
Engine[1].Color = (CUSTOM_CLASS_COLORS or RAID_CLASS_COLORS)[Engine[1].Class]
Engine[1].Version = GetAddOnMetadata(AddOn, "Version")
Engine[1].ScreenHeight = tonumber(string.match(Engine[1].Resolution, "%d+x(%d+)"))
Engine[1].ScreenWidth = tonumber(string.match(Engine[1].Resolution, "(%d+)x+%d"))
Engine[1].VersionNumber = tonumber(Engine[1].Version)
Engine[1].WoWPatch, Engine[1].WoWBuild, Engine[1].WoWPatchReleaseDate, Engine[1].TocVersion = GetBuildInfo()

-- Matching the pre-MoP return arguments of the Blizzard API call
-- Credits to Goldpaw for this.
Engine[1].GetAddOnInfo = function(index)
	local name, title, notes, enabled, loadable, reason, security
	if tonumber((select(2, GetBuildInfo()))) >= 19034 then
		name, title, notes, loadable, reason, security, newVersion = GetAddOnInfo(index)
		enabled = not(GetAddOnEnableState(UnitName("player"), index) == 0) -- not a boolean, messed that one up! o.O
	else
		name, title, notes, enabled, loadable, reason, security = GetAddOnInfo(index)
	end
	return name, title, notes, enabled, loadable, reason, security
end

-- Check if an addon is enabled	in the addon listing
Engine[1].IsAddOnEnabled = function(addon_name)
	local addon_name = strlower(addon_name)
	for i = 1,GetNumAddOns() do
		local name, title, notes, enabled, loadable, reason, security = Engine[1].GetAddOnInfo(i)
		if strlower(name) == addon_name then
			if enabled then
				return true
			end
		end
	end
end

SLASH_RELOADUI1, SLASH_RELOADUI2 = "/rl", "/reloadui"
SlashCmdList["RELOADUI"] = ReloadUI

KkthnxUI = Engine

--[[
-- ** KkthnxUI Engine Documentation ** --

This should be at the top of every file inside of the KkthnxUI AddOn.
local K, C, L, _ = select(2, ...):unpack()
You can also do local K, C, _ = select(2, ...):unpack()
As well as K, _ = select(2, ...):unpack()
This is going to depend on what you are going to be using in the file.

This is how another addon imports the KkthnxUI engine.
local K, C, L, _ = KkthnxUI:unpack()
You can also do local K, C, _ = KkthnxUI:unpack()
As well as K, _ = select(2, ...):unpack()
This is going to depend on what you are going to be using in the file.

We put an _ for taint prevention.
--]]