# AutoClick-Impact
AutoHotKey hotkey script automatically clicks, picks up items, and "keep forward" for Genshin Impact
# Features
- `TAB` - Force stop the current one
- `Alt+S` - Suspend/Unsuspend script
- `F7` - "Keep Forward"
- `F8` - Auto Click
- `F9` - Auto Interact
- `F6` - Enable/Disable Quick Loot:
  - Enabled: Hold `F` - Quick Loot
  - Disabled: Hold `F` - Spam `F` (similar to Auto Interact)
- `Alt+Q` - Enable/Disable QLock*
- `Alt+E` - Enable/Disable ELock*\
*Disable the Q and E keys to avoid accidentally using skills
- Hold ``` ` ``` - Fast swimming
# Installation
- Download and install [AutoHotKey](https://www.autohotkey.com/)
- Save file [AutoClick-Impact](https://raw.githubusercontent.com/CleveTok3125/AutoClick-Impact/main/AutoClick-Impact.ahk) and run via AutoHotKey
# Important notes
- Because the main branch is committed frequently, the script often contains errors. Use [Stable Version](https://github.com/CleveTok3125/AutoClick-Impact/releases) to avoid this.
- When running the script, Quick Loot, QLock, ELock will always be set to disabled. When pressing the hotkey, the disabled state will always be displayed first and pressing the hotkey again will switch to the enabled state.
# Known issues
- When Dashing with `Shift` and pressing `E` or `Q`, ELock and QLock do not work. (Use `RButton` instead of `Shift` to fix it)
- ~When ELock and QLock are in disabled mode, skills cannot be performed in the long-press state~
- Spam sends keys even when hotkeys are not pressed. (This is due to the computer's processing speed. Press `TAB` to stop and the script should be suspended during combat with `Alt+S`)
