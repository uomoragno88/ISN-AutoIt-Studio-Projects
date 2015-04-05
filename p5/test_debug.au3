;test.au3

#include "dbug.au3"
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>

;varables declaration
Execute(Dbug(8))
$a = "Global_var_a"						;implicit declared (global)
Execute(Dbug(9))
Dim $b = "Global_var_b"					;implicit global
Execute(Dbug(10))
Global $c = 'Global_var_c'				;forced global
Execute(Dbug(11))
Global Const $d = 'Global_constant_d'	;constant
Execute(Dbug(12))
Global $e = Default						;keyword

;object declaration
Execute(Dbug(15))
Global $oDict = ObjCreate("scripting.dictionary")
Execute(Dbug(16))
Global $oShell = ObjCreate("shell.application")
Execute(Dbug(17))
Global $oIE = ObjCreate("Shell.Explorer.2")
Execute(Dbug(18))
Global $oFS = objcreate('Scripting.FileSystemObject')

;structures declaration
Execute(Dbug(21))
Global $struc1 = DllStructCreate("ubyte;char;wchar;int;long;dword;ptr;hwnd;float;double")
Execute(Dbug(22))
DllStructSetData($struc1, 1, 0xAB)
Execute(Dbug(23))
DllStructSetData($struc1, 2, 'A')
Execute(Dbug(24))
DllStructSetData($struc1, 3, "B")
Execute(Dbug(25))
DllStructSetData($struc1, 4, 123)
Execute(Dbug(26))
DllStructSetData($struc1, 5, 0xFFFF)
Execute(Dbug(27))
DllStructSetData($struc1, 6, 0xFFFF)
Execute(Dbug(28))
DllStructSetData($struc1, 7, DllStructGetPtr($struc1))
Execute(Dbug(29))
DllStructSetData($struc1, 8, DllStructGetPtr($struc1))
Execute(Dbug(30))
DllStructSetData($struc1, 9, 123.45)
Execute(Dbug(31))
DllStructSetData($struc1, 10, 123.45)

Execute(Dbug(33))
Global $struc2 = DllStructCreate("ubyte[20];char[20];wchar[20];int[20];long[20];dword[20];ptr[20];hwnd[20];float[20];double[20]")
Execute(Dbug(34))
DllStructSetData($struc2, 1, 0xABCDEF)
Execute(Dbug(35))
DllStructSetData($struc2, 2, 123)
Execute(Dbug(36))
DllStructSetData($struc2, 3, "DBUG testscript")

;array's declaration
Execute(Dbug(39))
Global $arr1[2][4]=[["Paul", "Jim", "Richard", "Louis"], [180, 161, 178, 173]]
Execute(Dbug(40))
Global $arr2[20]=['Wilma', $oDict, 'Ann', $struc1, 'Mabel', $arr1, 'Susan', 0xABCD, 'Christel', 123, 'Joan', 123.45, 'Rachel', binary(123), 'Mildred', hex(123), 'Sylvia', DllStructGetPtr($struc1), 'Amber', default]

;macro declarations
Execute(Dbug(43))
$ver = @AutoItVersion
Execute(Dbug(44))
$sec = @SEC
Execute(Dbug(45))
$crlf = @CRLF

Execute(Dbug(47))
GUICreate('DBUG test')
Execute(Dbug(48))
GUICtrlCreateButton("Exit",10,10)
Execute(Dbug(49))
GUISetState(@SW_SHOW)

Execute(Dbug(51))
GUIRegisterMsg($WM_COMMAND, "_CommandHook")
Execute(Dbug(52))
GUIRegisterMsg($WM_NOTIFY, "_NotifyHook")

Execute(Dbug(54))
Function1($a, $b)
;check $a, $b and $i

Execute(Dbug(57))
While True
Execute(Dbug(58))
	Sleep(100)
Execute(Dbug(59))
WEnd



Execute(Dbug(63))
Func Display($txt)
Execute(Dbug(64))
	MsgBox(0, "Display message", $txt)
Execute(Dbug(65))
EndFunc

Execute(Dbug(67))
Func Function1($par1, ByRef $par2)

Execute(Dbug(69))
	$par1 = "by value"		;global argument untouched
Execute(Dbug(70))
	$par2 = "by reference"	;global argument is changed

Execute(Dbug(72))
	$f = "Local_var_f"			;implicit declared (local)
Execute(Dbug(73))
	Dim $g = "Local_var_g"		;implicit local
Execute(Dbug(74))
	Local $h = "Local_var_h"	;forced local
Execute(Dbug(75))
	Global $i = "Global_var_i"	;forced global

Execute(Dbug(77))
	Local $c = "I'm local"		;not the same as the global $c
Execute(Dbug(78))
	Local Static $static = "Local_static_var"

Execute(Dbug(80))
EndFunc


Execute(Dbug(83))
Func MY_WMCOMMAND($hWnd, $Msg, $wParam, $lParam)

Execute(Dbug(85))
	Local $nNotifyCode, $nID
Execute(Dbug(86))
    $nNotifyCode = BitShift($wParam, 16)
Execute(Dbug(87))
    $nID = BitAND($wParam, 0xFFFFFFFF)
Execute(Dbug(88))
	Exit

Execute(Dbug(90))
EndFunc

Execute(Dbug(92))
Func MY_WMNOTIFY($hWnd, $Msg, $wParam, $lParam )

	;don't set a breakpoint in a notify handler to prevent unpredictical behaviour

Execute(Dbug(96))
EndFunc

