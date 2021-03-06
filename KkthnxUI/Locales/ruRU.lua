-- Localization For ruRU Clients
local Locale = GetLocale()

if (Locale ~= "ruRU") then
	return
end

-- Announce Localization
L_ANNOUNCE_FP_CAST = "%s is casting %s."
L_ANNOUNCE_FP_CLICK = "%s is casting %s. Click!"
L_ANNOUNCE_FP_PRE = "%s has prepared %s."
L_ANNOUNCE_FP_PUT = "%s has put down %s."
L_ANNOUNCE_FP_STAT = "%s has prepared %s - [%s]."
L_ANNOUNCE_FP_USE = "%s used %s."
L_ANNOUNCE_INTERRUPTED = INTERRUPTED.." %s's \124cff71d5ff\124Hspell:%d:0\124h[%s]\124h\124r!"
L_ANNOUNCE_PC_ABORTED = "Pull ABORTED!"
L_ANNOUNCE_PC_GO = "GO!"
L_ANNOUNCE_PC_MSG = "Pulling %s in %s.."
L_ANNOUNCE_SAPPED = "Sapped"
L_ANNOUNCE_SAPPED_BY = "Sapped by: "
-- Artifact Localization
L_ARTIFACTBAR_CURRENTXP = "Current Experience: %s"
L_ARTIFACTBAR_LEFTCLICK = "Left click to display the Artifact Frame"
L_ARTIFACTBAR_TRAITS = "Traits avaiable: %s"
L_ARTIFACTBAR_XP = "Experience: %s/%s (%d%%)"
L_ARTIFACTBAR_XPREMAINING = "Remaining: %s"
L_ARTIFACTBAR_XPTITLE = "Artifact Experience"
-- Automation Localization
L_SHORT_GOLD = "|cffffd700g|r"
L_SHORT_SILVER = "|cffc7c7cfs|r"
L_SHORT_COPPER = "|cffeda55fc|r"
L_SELL_TRASH = "Sold %d trash item%s for %s"
L_REPAIR_BANK = "Guild bank repaired for %s."
L_REPAIRED_FOR = "Repaired for %s."
L_CANT_AFFORD_REPAIR = "Repairs were unaffordable."
L_REPAIR_NOTENOUGHMONEY = "You don't have enough money to repair!"
L_REPAIR_REPAIRCOST = "Your items have been repaired for"
L_MISC_SOLDTRASH = "Your vendor trash has been sold and you earned"
-- Bags Localization
L_BAG_SHOW_BAGS = "Show Bags"
L_BAG_RIGHT_CLICK_SEARCH = "Right-click to search"
L_BAG_STACK_MENU = "Stack"
L_BAG_RIGHT_CLICK_CLOSE = "Right-click to open menu"
-- Bindings Localization
L_BIND_BINDING = "Binding"
L_BIND_CLEARED = "All keybindings cleared for"
L_BIND_DISCARD = "All newly set keybindings were discarded."
L_BIND_INSTRUCT = "Hover, your mouse over any action button, to bind it. Press the escape key or right click to clear the current action button's keybinding."
L_BIND_KEY = "Key"
L_BIND_NO_SET = "No bindings set"
L_BIND_SAVED = "All keybindings have been saved."
-- Chat Localization
L_CHAT_AFK = "AFK"
L_CHAT_DND = "DND"
L_CHAT_GUILD = "G"
L_CHAT_GUILDRECRUITMENT = "GuildRecruitment"
L_CHAT_INSTANCE = "I"
L_CHAT_INSTANCE_LEADER = "IL"
L_CHAT_LOCALDEFENSE = "LocalDefense"
L_CHAT_LOOKINGFORGROUP = "LookingForGroup"
L_CHAT_OFFICER = "O"
L_CHAT_PARTY = "P"
L_CHAT_PARTY_LEADER = "PL"
L_CHAT_RAID = "R"
L_CHAT_RAID_LEADER = "RL"
L_CHAT_RAID_WARNING = "RW"
L_CHAT_SAYS = "says"
L_CHAT_TRADE = "Trade"
L_CHAT_WHISPERS = "whispers"
L_CHAT_YELLS = "yells"
-- BigChat Localization
L_CHAT_BIGCHAT_OFF = "Big chat disabled"
L_CHAT_BIGCHAT_ON = "Big chat enabled"
-- CombatText Localization
L_COMBATTEXT_KILLING_BLOW = "Killing Blow"
L_COMBATTEXT_ALREADY_UNLOCKED = "Combat text already unlocked."
L_COMBATTEXT_ALREADY_LOCKED = "Combat text already locked."
L_COMBATTEXT_TEST_DISABLED = "Combat text test mode disabled."
L_COMBATTEXT_TEST_ENABLED = "Combat text test mode enabled."
L_COMBATTEXT_TEST_USE_UNLOCK = "Type /xct unlock to move and resize combat text frames."
L_COMBATTEXT_TEST_USE_LOCK = "Type /xct lock to lock combat text frames."
L_COMBATTEXT_TEST_USE_TEST = "Type /xct test to toggle combat text testmode."
L_COMBATTEXT_POPUP = "To save combat text window positions you need to reload your UI."
L_COMBATTEXT_UNSAVED = "Combat text window positions unsaved, don't forget to reload UI."
L_COMBATTEXT_UNLOCKED = "Combat text unlocked."
-- DataText Localization
L_DATATEXT_BASESASSAULTED = "Bases Assaulted:"
L_DATATEXT_BASESDEFENDED = "Bases Defended:"
L_DATATEXT_CARTS_CONTROLLED = "Carts Controlled:"
L_DATATEXT_DEMOLISHERSDESTROYED = "Demolishers Destroyed:"
L_DATATEXT_FLAGSCAPTURED = "Flags Captured:"
L_DATATEXT_FLAGSRETURNED = "Flags Returned:"
L_DATATEXT_GATESDESTROYED = "Gates Destroyed:"
L_DATATEXT_GRAVEYARDSASSAULTED = "Graveyards Assaulted:"
L_DATATEXT_GRAVEYARDSDEFENDED = "Graveyards Defended:"
L_DATATEXT_ORB_POSSESSIONS = "Orb Possessions:"
L_DATATEXT_TOWERSASSAULTED = "Towers Assaulted:"
L_DATATEXT_TOWERSDEFENDED = "Towers Defended:"
L_DATATEXT_VICTORY_POINTS = "Victory Points:"
-- Exp/Rep Bar Localization
L_EXPERIENCE_BAR = "Experience:"
L_EXPERIENCE_BAR_LEFTCLICK = "Left click to display the Reputation Frame"
L_EXPERIENCE_XP = "XP: %s/%s (%d%%)"
L_EXPERIENCE_XPREMAINING = "Remaining: %s"
L_EXPERIENCE_XPRESTED = "|cffb3e1ffRested: %s (%d%%)"
L_REPUTATION_EXALTED = "Exalted"
L_REPUTATION_FCTITLE = "Reputation: %s"
L_REPUTATION_FRIENDLY = "Friendly"
L_REPUTATION_HATED = "Hated"
L_REPUTATION_HONORED = "Honored"
L_REPUTATION_HOSTILE = "Hostile"
L_REPUTATION_NEUTRAL = "Neutral"
L_REPUTATION_REMAINGING = "Remaining: %s"
L_REPUTATION_REP = "Rep: %s/%s (%d%%)"
L_REPUTATION_REVERED = "Revered"
L_REPUTATION_STANDING = "Standing: |c"
L_REPUTATION_UNFRIENDLY = "Unfriendly"
-- Incombat Localization
L_ERR_NOT_IN_COMBAT = "You can't do that while in combat or while dead."
-- AutoInvite Localization
L_INVITE_ENABLE = "Autoinvite enabled: "
L_INVITE_DISABLE = "AutoInvite disabled"
-- Info Localization
L_INFO_DISBAND = "Disbanding group..."
L_INFO_DUEL = "Declined duel request from "
L_INFO_PET_DUEL = "Declined pet duel request from "
L_INFO_ERRORS = "No error yet."
L_INFO_INVITE = "Accepted invite from "
L_INFO_SETTINGS_DBM = "Type /settings dbm, to apply the settings DBM."
L_INFO_SETTINGS_DXE = "Type /settings dxe, to apply the settings DXE."
L_INFO_SETTINGS_MSBT = "Type /settings msbt, to apply the settings MSBT."
L_INFO_SETTINGS_SKADA = "Type /settings skada, to apply the settings Skada."
L_INFO_SETTINGS_Abu = "Type /settings abu, to apply the settings oUF_Abu."
L_INFO_SETTINGS_ALL = "Type /settings all, to apply the settings for all modifications."
L_INFO_NOT_INSTALLED = " is not installed."
L_INFO_SKIN_DISABLED1 = "Stylization for "
L_INFO_SKIN_DISABLED2 = " is disabled."
-- Install Message Localization
L_INSTALL_COMPLETE = "Installation Complete"
-- Loot Localization
L_LOOT_ANNOUNCE = "Announce to"
L_LOOT_CANNOT = "Cannot roll"
L_LOOT_CHEST = ">> Loot from chest"
L_LOOT_FISH = "Fishing loot"
L_LOOT_MONSTER = ">> Loot from "
L_LOOT_RANDOM = "Random Player"
L_LOOT_SELF = "Self Loot"
L_LOOT_TO_GUILD = " Guild"
L_LOOT_TO_INSTANCE = " Instance"
L_LOOT_TO_PARTY = " Party"
L_LOOT_TO_RAID = " Raid"
L_LOOT_TO_SAY = " Say"
-- Mail Localization
L_MAIL_COMPLETE = "All done."
L_MAIL_MESSAGES = "messages"
L_MAIL_NEED = "Need a mailbox."
L_MAIL_STOPPED = "Stopped, inventory is full."
L_MAIL_UNIQUE = "Stopped. Found a unique duplicate item in a bag or the bank."
-- World Map Localization
L_MAP_FOG = "Fog of War"
-- FarmMode Minimap
L_MINIMAP_FARMMODE_ON = "Farm mode enabled"
L_MINIMAP_FARMMODE_OFF = "Farm mode disabled"
-- Misc Localization
L_MISC_BUY_STACK = "Alt-Click to buy a stack"
L_MISC_REPAIR = "Warning! You need to do a repair of your equipment as soon as possible!"
L_MISC_UI_OUTDATED = "KkthnxUI is out of date. You can download the newest version from Curse.com. Get the Curse app and have KkthnxUI automatically updated with the Client!"
L_MISC_UNDRESS = "Undress"
-- Talent Spec Localization
L_PLANNER_DRUID_4 = "Restoration"
L_PLANNER_MONK_2 = "Mistweaver"
L_PLANNER_PALADIN_1 = "Holy"
L_PLANNER_PRIEST_1 = "Discipline"
-- Popup Localization
L_POPUP_ARMORY = "Armory"
L_POPUP_BOOSTUI = "|cffff0000WARNING|r |n|nThis will optimize your performance by turning down the graphics and tweaking them. Hit accept only if you are having |cffff0000FPS|r issues!|r"
L_POPUP_DISBAND_RAID = "Are you sure you want to disband the group?"
L_POPUP_UIOUTDATED = "Download |cff3c9bedKkthnxUI|r"
L_POPUP_FIX_ACTIONBARS = "There is something wrong with your action bars. Do you want to reload the UI to fix it?"
L_POPUP_INSTALLUI = "Thank you for choosing |cff3c9bedKkthnxUI|r! |n|nAccept this installation dialog to apply settings."
L_POPUP_RELOADUI = "Installation is complete. Please click the 'Accept' button to reload the UI. Enjoy |cff3c9bedKkthnxUI|r. |n|nVisit me at |cff3c9bedwww.github.com/kkthnx|r."
L_POPUP_RESETUI = "Are you sure you want to reset all settings for |cff3c9bedKkthnxUI|r?"
L_POPUP_RESOLUTIONCHANGED = "We detected a resolution change on your World of Warcraft client. We HIGHLY RECOMMEND restarting your game. Do you want to proceed?"
L_POPUP_SETTINGS_ALL = "|cffff0000WARNING|r |n|nThis will apply all the supported addons settings and import them to go with |cff3c9bedKkthnxUI|r. This feature will not do anything if you do not have one of the supported add-ons."
L_POPUP_SETTINGS_DBM = "We need to change the bar positions of |cff3c9bedDBM|r."
-- Stats Localization
L_STATS_GLOBAL = "Global Latency:"
L_STATS_WORLD = "World Latency:"
L_STATS_HOME = "Home Latency:"
L_STATS_INC = "Incoming:"
L_STATS_OUT = "Outgoing:"
L_STATS_SYSTEMLEFT = "Left Click: Open PvE-Frame"
L_STATS_SYSTEMRIGHT = "Right Click: Clean Memory|r"
L_STATS_DOWNLOAD = "Download: "
L_STATS_BANDWIDTH = "Bandwidth: "
-- Tooltip Localization
L_TOOLTIP_ACH_COMPLETE = "Your Status: Completed on "
L_TOOLTIP_ACH_INCOMPLETE = "Your Status: Incomplete"
L_TOOLTIP_ACH_STATUS = "Your Status:"
L_TOOLTIP_INSPECT_OPEN = "Inspect Frame is open"
L_TOOLTIP_ITEM_COUNT = "Item count:"
L_TOOLTIP_ITEM_ID = "Item ID:"
L_TOOLTIP_LOADING = "Loading..."
L_TOOLTIP_NO_TALENT = "No Talents"
L_TOOLTIP_SPELL_ID = "Spell ID:"
-- Total Memory Localization
L_TOTALMEMORY_USAGE = "Total Memory:"
-- Tutorial Localization
L_TUTORIAL_MESSAGE_1 = "For technical support visit https://github.com/Kkthnx."
L_TUTORIAL_MESSAGE_2 = "You can toggle the microbar by using your right mouse button on the minimap."
L_TUTORIAL_MESSAGE_3 = "You can set your keybinds quickly by typing /kb."
L_TUTORIAL_MESSAGE_4 = "The focus unit can be set by typing /focus when you are targeting the unit you want to focus. It is recommended you make a macro to do this."
L_TUTORIAL_MESSAGE_5 = "You can access copy chat and chat menu functions by mouse over the bottom right corner of chat panel and left click on the button that will appear."
L_TUTORIAL_MESSAGE_6 = "If you are experiencing issues with KkthnxUI try disabling all your addons except KkthnxUI, remember KkthnxUI is a full UI replacement addon, you cannot run two addons that do the same thing."
L_TUTORIAL_MESSAGE_7 = "To setup which channels appear in which chat frame, right click the chat tab and go to settings."
L_TUTORIAL_MESSAGE_8 = "You can use the /resetui command to reset all of your movers. You can also type /moveui and just right click a mover to reset its position."
L_TUTORIAL_MESSAGE_9 = "To move abilities on the actionbars by default hold shift + drag. You can change the modifier key from the actionbar options menu."
L_TUTORIAL_MESSAGE_10 = "You can see someones average item level of their gear by enabling the item level for tooltip option"
-- Wowhead Link Localization
L_WATCH_WOWHEAD_LINK = "Wowhead Link"
-- Welcome Localization
L_WELCOME_LINE_1 = "Welcome to |cff3c9bedKkthnxUI|r v"
L_WELCOME_LINE_2_1 = ""
L_WELCOME_LINE_2_2 = "Type /cfg to config interface, or visit www.github.com/kkthnx|r"
L_WELCOME_LINE_2_3 = ""
L_WELCOME_LINE_2_4 = "Some of your questions can be answered by typing /uihelp"
-- Slash Commands Localization
L_SLASHCMD_HELP = {
    "",
    "|cff3c9bedAvailable slash commands:|r",
    "--------------------------",
    "/rl - Reload interface.",
    "/rc - Activates a ready check.",
    "/gm - Opens GM frame.",
    "/rd - Disband party or raid.",
    "/toraid - Convert to party or raid.",
    "/teleport - Teleportation from random dungeon.",
    "/spec, /ss - Switches between talent spec's.",
    "/frame - Description is not ready.",
    "/farmmode - Increase the size of the minimap.",
    "/moveui - Allows the movement of interface elements.",
    "/resetui - Resets general settings to default.",
    "/resetconfig - Resets KkthnxUI_Config settings.",
    "/settings ADDON_NAME - Applies settings to msbt, dbm, skada, or all addons.",
    "/pulsecd - Self cooldown pulse test.",
    "/tt - Whisper target.",
    "/ainv - Enables automatic invitation.",
    "/cfg - Opens interface settings.",
    "/patch - Display Wow patch info.",
    "",
    "|cff3c9bedAvailable hidden features:|r",
    "--------------------------",
    "Right-click minimap for micromenu.",
    "Middle mouse click minimap for tracking.",
    "Left click experience bar opens rep frame.",
    "Left click artifact bar opens artifact frame.",
    "Hold alt and obtain player ilvl and spec in tooltip.",
    "Hold shift to scroll instantly to end or start of chat.",
    "Copy button to the bottom right side of chat.",
    "Middle mouse click copy button to /roll.",
}