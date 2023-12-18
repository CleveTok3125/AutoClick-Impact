#NoEnv
SendMode Input
#IfWinActive, Genshin Impact
#MaxThreadsPerHotkey 1

f7::
	toggle:=!toggle
	While toggle {
		Send {w down}
		Sleep 200
		if GetKeyState("TAB") & 1 {
			MsgBox, 0, ,{AutoWalk} Forced to stop!
			break
		}
	}
Return

f8::
	toggle:=!toggle
	While toggle {
		Send {LButton}
		Sleep 200
		if GetKeyState("TAB") & 1 {
			MsgBox, 0, ,{AutoClick} Forced to stop!
			break
		}
	}
Return

f9::
	toggle:=!toggle
	While toggle {
		Send {f}
		Sleep 200
		if GetKeyState("TAB") & 1 {
			MsgBox, 0, ,{AutoInteract} Forced to stop!
			break
		}
	}
Return

f::
	while GetKeyState("f", "P") {
		Send {WheelDown}
		Send {f}
		Send {WheelDown}
		Sleep 200
	}
Return