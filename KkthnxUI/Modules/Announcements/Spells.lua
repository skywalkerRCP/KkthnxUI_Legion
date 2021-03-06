local K, C, L, _ = select(2, ...):unpack()
if C.Announcements.Spells ~= true then return end

-- LUA API
local format = string.format
local gsub = string.gsub
local pairs = pairs

-- WOW API
local CreateFrame = CreateFrame
local GetInstanceInfo = GetInstanceInfo
local GetSpellLink = GetSpellLink
local SendChatMessage = SendChatMessage
local UnitGUID = UnitGUID

-- ANNOUNCE SOME SPELLS
local frame = CreateFrame("Frame")
frame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
frame:SetScript("OnEvent", function(self, _, ...)
	local _, event, _, sourceGUID, sourceName, _, _, _, destName, _, _, spellID = ...
	local spells = K.AnnounceSpells
	local _, _, difficultyID = GetInstanceInfo()
	if (difficultyID == 0 or event ~= "SPELL_CAST_SUCCESS") then return end

	if sourceName then sourceName = sourceName:gsub("%-[^|]+", "") end
	if destName then destName = destName:gsub("%-[^|]+", "") end
	if (C.Announcements.SpellsFromAll == true) and (not (sourceGUID == UnitGUID("player")) and (sourceName == K.Name)) then
		if not sourceName then return end

		for i, spells in pairs(spells) do
			if spellID == spells then
				if destName == nil then
					SendChatMessage(format(L_ANNOUNCE_FP_USE, sourceName, GetSpellLink(spellID)), K.CheckChat())
				else
					SendChatMessage(format(L_ANNOUNCE_FP_USE, sourceName, GetSpellLink(spellID).." -> "..destName), K.CheckChat())
				end
			end
		end
	else
		if not (sourceGUID == UnitGUID("player") and sourceName == K.Name) then return end

		for i, spells in pairs(spells) do
			if spellID == spells then
				if destName == nil then
					SendChatMessage(format(L_ANNOUNCE_FP_USE, sourceName, GetSpellLink(spellID)), K.CheckChat())
				else
					SendChatMessage(GetSpellLink(spellID).." -> "..destName, K.CheckChat())
				end
			end
		end
	end
end)