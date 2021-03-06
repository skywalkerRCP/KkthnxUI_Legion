# KkthnxUI Change Log
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased][v5.29] - 2:07:14 AM EDT Monday, September 26, 2016
### Added

## [v5.28] - 2:07:14 AM EDT Monday, September 26, 2016
### Added
- Nothing new added in this build. Or maybe I just forgot what I have done? :|

### Changed
- AutoCollapse.lua changed to now only collapse in Instances.
- Changed how blizzard frames are hidden.
- Changed the TOC to v5.28 up from v5.27.
- DBM skin updated. Using shadows for this one baby.
- Improved MinimapButtons.lua script.
- Updated ItemIcons.lua

### Fixed
- Attempted to revert code to resolve this ongoing freezing issue.
- Check for the issue with action bars event changeD to PLAYER_ENTERING_WORLD from PLAYER_LOGIN. This fixes the repeated popup.
- Fix an issue with action bar grid state not fully working once turned on or off.
- Fixed DBM moving issue. I forgot to include the option for this in v5.27.
- Fixed the display text being offset by 3 when it needed to be 0.
- Garbage collect issue is now fixed. Titan Gods only knows how long this was broken for and why.
- General code cleanup.

### Removed
- Removed / Reverted a lot of code from a week ago. Pretty pissed off about this. FeelsBadMan :'(.
- Removed the lag bar. This was causing an OnHide issue with the player cast bar. (Could make a return ;))
- Removed the smooth status bar script. This was way too buggy.

## [v5.27] - 10:17:02 PM EDT Friday, September 23, 2016
### Added
- Add resting to auto collapse?.
- Added Combattext module.
- Added spellid and itemcount to tooltip.
- Adjusted spacing between castbar and health for nameplates.
- Attempt to fix castbar resizing issue.
- Attempt to fix unitframes not clickable after vehicle :(.
- Blizzard_CombatText added as OptionalDeps.
- Chat spam list updated.
- Disable.lua rewrote for new functions.
- Fixed filger mover not registering.
- Fixed world quest tooltip issue.
- General cleanup.
- General combat checks for frames and castbars?
- Install image complete added.
- Localization updated.
- Locals updated.
- Media.lua updated.
- More addons added to Disable.lua.
- New Nameplates debuff updated for DemonHunters.
- New functions to check for other addons over mine. (Thanks to Goldpaw)
- Pushed to github for backup.
- Raid auras added to filger.
- Rewrote nameplates.
- Updated Licenses.
- WIP micromenu list to be sorted.

### Changed
- Changed how the castbars are handled with in combat.
- Changed unitframes while in combat.

### Fixed
- Try to fix freezing issue reported. Untested. Im not even sure its my UI?

### Removed
- Removed some code for general cleanup.

## [v5.26] - 3:22:03 PM EDT Tuesday, September 20, 2016
### Added
- KkthnxUI logo for future use.
- A lag bar placed on player cast bar. (very very basic)
- New locales for the new features.
- Dropdown lib, this will prevent dropdown taints.\
- LossControl skinned.
- Threat added to nameplates. Can be toggled on or off.
- Class color nameplates can now be toggled on or off.
- FogOfWar added.
- Filger received ton of spell updates
- Garrison button added to the minimap.
- Added BNToastFrame to /moveui so it can be moved.
- World map taint temp fixed. (by lightspark)
- New function (GetDetailedItemLevelInfo)
- CharacterStats improved.
- New dark flat class icons.
- Readded the ability to hide empty action bar buttons again.

### Changed
- Use PLAYER_LOGIN event for frames again.
- Chatframe width changed from 400 down to 370.
- Another run at the cast bar issues after being in a vehicle. (This is very annoying)
- Chat timestamp color changed to 113/255, 213/255, 255/255 :D.
- UI name color changed.
- Chat spam list updated
- General profile updates.
- The level display on nameplates improved.
- ObjectiveTracker position improved.
- Updated code for range and out of power detection
- Rewrote how the chat frame is setup during install.

### Fixed
- Calendar date will now display on the minimap calendar
- DBM error fixed.
- A ton of fixes for filgers core.
- Capture bar should now be styled once again and fixed position.
- Rare realm name issue fixed on nameplates.
- Actionbar taint while in a vehicle.
- Item levels for slots on the character sheet, bags and tooltip should be working almost perfect by now.

### Removed
- Removed all custom color in the system stat module.
- PLAYER_REGEN_DISABLED and PLAYER_REGEN_ENABLED events removed from cast bars.
- Removed boss frame movers. This is becoming a pain in my ass.