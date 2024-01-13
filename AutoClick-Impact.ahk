#NoEnv
SendMode Input
#WinActivateForce
#singleInstance, Force
SetBatchLines -1
#IfWinActive ahk_exe GenshinImpact.exe
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
		Random, rand, 150, 200
		Sleep %rand%
		if GetKeyState("TAB") & 1 {
			MsgBox, 0, ,{AutoClick} Forced to stop!
			break
		}
	}
Return

f9::
	toggle:=!toggle
	While toggle {
		Random, rand, 150, 200
		Sleep %rand%
		if GetKeyState("TAB") & 1 {
			MsgBox, 0, ,{AutoInteract} Forced to stop!
			break
		}
	}
Return

f::
	while GetKeyState("f", "P") {
		Sleep 15
		Send {f 3}
		Sleep 15
		Send {WheelDown 1}
		Sleep 15
	}
Return
