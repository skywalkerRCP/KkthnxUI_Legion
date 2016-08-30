local K, C, L, _ = select(2, ...):unpack()

local ArtifactAnchor = CreateFrame("Frame", "ArtifactAnchor", UIParent)
ArtifactAnchor:SetSize(C.Experience.ArtifactWidth, 18)
ArtifactAnchor:SetPoint("TOPLEFT", Minimap, "BOTTOMLEFT", -1, -35)
ArtifactAnchor:SetPoint("TOPRIGHT", Minimap, "BOTTOMRIGHT", 1, -35)

local BarHeight, BarWidth = C.Experience.ArtifactHeight, C.Experience.ArtifactWidth
local Texture = C.Media.Texture
local Color = RAID_CLASS_COLORS[K.Class]

local Artifact_Backdrop = CreateFrame("Frame", "Artifact_Backdrop", UIParent)
Artifact_Backdrop:SetSize(BarWidth, BarHeight)
Artifact_Backdrop:SetPoint("CENTER", ArtifactAnchor, "CENTER", 0, 0)
Artifact_Backdrop:SetBackdropColor(C.Media.Backdrop_Color)
Artifact_Backdrop:SetBackdropBorderColor(C.Media.Backdrop_Color)
Artifact_Backdrop:SetFrameStrata("LOW")
Artifact_Backdrop:CreatePixelShadow()

local Artifact_BackdropBG = CreateFrame("Frame", "StatusBarBG", Artifact_Backdrop)
Artifact_BackdropBG:SetFrameLevel(Artifact_Backdrop:GetFrameLevel() - 1)
Artifact_BackdropBG:SetPoint("TOPLEFT", -1, 1)
Artifact_BackdropBG:SetPoint("BOTTOMRIGHT", 1, -1)
Artifact_BackdropBG:SetBackdrop(K.BorderBackdrop)
Artifact_BackdropBG:SetBackdropColor(unpack(C.Media.Backdrop_Color))

local ArtifactBar = CreateFrame("StatusBar", "XP_ArtifactBar", Artifact_Backdrop, "TextStatusBar")
ArtifactBar:SetSize(BarWidth, BarHeight)
ArtifactBar:SetPoint("TOP", Artifact_Backdrop, "TOP", 0, 0)
ArtifactBar:SetStatusBarTexture(Texture)
ArtifactBar:SetStatusBarColor(157/255, 138/255, 108/255)

local ArtifactMouseFrame = CreateFrame("Frame", "Artifact_MouseFrame", Artifact_Backdrop)
ArtifactMouseFrame:SetAllPoints(Artifact_Backdrop)
ArtifactMouseFrame:EnableMouse(true)
ArtifactMouseFrame:SetFrameLevel(3)

local function updateStatus()
	local HasArtBar = HasArtifactEquipped()

	if HasArtBar then
		local _, _, _, _, totalxp, pointsSpent, _, _, _, _, _, _ = C_ArtifactUI.GetEquippedArtifactInfo()
		local _, xp, xpForNextPoint = MainMenuBar_GetNumArtifactTraitsPurchasableFromXP(pointsSpent, totalxp)

		Artifact_Backdrop:Show()
		ArtifactBar:SetMinMaxValues(min(0, xp), xpForNextPoint)
		ArtifactBar:SetValue(xp)
	else
		Artifact_Backdrop:Hide()
	end

	ArtifactMouseFrame:SetScript("OnEnter", function()
		GameTooltip:SetOwner(ArtifactMouseFrame, "ANCHOR_TOPRIGHT", 2, 5)
		GameTooltip:ClearLines()
		if HasArtBar then
			local _, _, _, _, totalxp, pointsSpent, _, _, _, _, _, _ = C_ArtifactUI.GetEquippedArtifactInfo()
			local numPointsAvailableToSpend, xp, xpForNextPoint = MainMenuBar_GetNumArtifactTraitsPurchasableFromXP(pointsSpent, totalxp)

			GameTooltip:AddLine(L_ARTIFACTBAR_XPTITLE)
			GameTooltip:AddLine(format(L_ARTIFACTBAR_XP, xp, xpForNextPoint, (xp / xpForNextPoint) * 100))
			GameTooltip:AddLine(format(L_ARTIFACTBAR_XPREMAINING, xpForNextPoint - xp))
			GameTooltip:AddLine(format(L_ARTIFACTBAR_TRAITS, numPointsAvailableToSpend))
		end

		GameTooltip:Show()
	end)

	ArtifactMouseFrame:SetScript("OnLeave", function() GameTooltip:Hide() end)
end

local Frame = CreateFrame("Frame", nil, UIParent)
Frame:RegisterEvent("ARTIFACT_XP_UPDATE")
Frame:RegisterEvent("PLAYER_ENTERING_WORLD")
Frame:RegisterEvent("UNIT_INVENTORY_CHANGED")
Frame:SetScript("OnEvent", updateStatus)