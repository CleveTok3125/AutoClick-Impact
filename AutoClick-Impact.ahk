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
		Random, rand, 150, 200
		Sleep %rand%
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
		Send {f}
		Random, rand, 150, 200
		Sleep %rand%
		if GetKeyState("TAB") & 1 {
			MsgBox, 0, ,{AutoInteract} Forced to stop!
			break
		}
	}
Return

global $f_loop
$f_loop := 0

f6::
	if ($f_loop == 0) {
		$f_loop := 1
		MsgBox, 0, ,{QuickLoot} Mode On!
	} else {
		$f_loop := 0
		MsgBox, 0, ,{QuickLoot} Mode Off!
	}

f::
	if $f_loop {
		while GetKeyState("f", "P") {
			if GetKeyState("TAB") & 1 {
				MsgBox, 0, ,{QuickLoot} Forced to stop!
				break
			}
			Random, rand, 20, 30
			Sleep %rand%
			Send {f 3}
			Random, rand, 20, 30
			Sleep %rand%
			Send {WheelDown 1}
			Random, rand, 20, 30
			Sleep %rand%
		}
	} else {
		Send {f}
		Random, rand, 150, 200
		Sleep %rand%
	}
Return
