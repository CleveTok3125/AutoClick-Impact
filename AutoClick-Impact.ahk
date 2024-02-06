#NoEnv
SendMode Input
#WinActivateForce
#singleInstance, Force
SetBatchLines -1
;#IfWinActive ahk_exe GenshinImpact.exe
#MaxThreadsPerHotkey 1

f7::
	Sleep 200
	While 1 {
		if GetKeyState("f7") & 1 {
			break
		}
		Send {w down}
		Random, rand, 150, 200
		Sleep %rand%
		if GetKeyState("TAB") & 1 {
			MsgBox, 0, ,{AutoWalk} Forced to stop!
			break
		}
	}
	Send {w up}
Return

f8::
	Sleep 200
	While 1 {
		if GetKeyState("f8") & 1 {
			break
		}
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
	Sleep 200
	While 1 {
		if GetKeyState("f9") & 1 {
			break
		}
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

f6::
	if ($f_loop == 0) {
		$f_loop := 1
		MsgBox, 0, ,{QuickLoot} Enabled!
	} else {
		$f_loop := 0
		MsgBox, 0, ,{QuickLoot} Disabled!
	}
	Return

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

global $q_lock

!q::
	if ($q_lock == 0) {
		$q_lock := 1
		MsgBox, 0, ,{QLock} Enabled!
	} else {
		$q_lock := 0
		MsgBox, 0, ,{QLock} Disabled!
	}
	Return

q::
	if $q_lock {
		Return
	} else {
		while GetKeyState("q", "P") {
			if GetKeyState("TAB") & 1 {
				MsgBox, 0, ,{Qlock} Forced to stop!
				break
			}
			Send {q down}
			Sleep 30
		}
		Send {q up}
	}
Return

global $e_lock

!e::
	if ($e_lock == 0) {
		$e_lock := 1
		MsgBox, 0, ,{ELock} Enabled!
	} else {
		$e_lock := 0
		MsgBox, 0, ,{ELock} Disabled!
	}
	Return

e::
	if $e_lock {
		Return
	} else {
		while GetKeyState("e", "P") {
			if GetKeyState("TAB") & 1 {
				MsgBox, 0, ,{Elock} Forced to stop!
				break
			}
			Send {e down}
			Sleep 30
		}
		Send {e up}
	}
Return

Led() {
	if !GetKeyState("CapsLock", "T") {
		SetCapsLockState 1
	} else {
		SetCapsLockState 0
	}
	if !GetKeyState("NumLock", "T") {
		SetNumLockState 1
	} else {
		SetNumLockState 0
	}
	Sleep 200
}

!s::
	Suspend -1
	Send {Alt}
	if A_IsSuspended {
		Loop 4 {
			Led()
		}
	} else {
		Loop 2 {
			Led()
		}
	}
