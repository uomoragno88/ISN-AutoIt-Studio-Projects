;~ #include-once
#include <WinAPI.au3>
#include <Array.au3>
#include <GUIButton.au3>
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <GUIListView.au3>
#include <ListViewConstants.au3>
#include <GUIEdit.au3>
#include <WindowsConstants.au3>
#include <StaticConstants.au3>
#include <file.au3>

;Opt('MustDeclareVars', 1)
Execute(Dbug(16))
HotKeySet('{F6}', 'DBGShow')	;activate DBUG GUI
Execute(Dbug(17))
HotKeySet('^q', 'DBGExit')	;exit

;global variables declaration
Execute(Dbug(20))
if not IsDeclared ("iLListViewSortInfoSize") then Global $iLListViewSortInfoSize = 11
Execute(Dbug(21))
if not IsDeclared ("aListViewSortInfo") then Global $aListViewSortInfo[1][$iLListViewSortInfoSize]
Execute(Dbug(22))
Global $DBGuser32 = DllOpen("user32.dll")
Execute(Dbug(23))
Global $DBGBlock, $DBGOnEventMode, $DBGCurrentGUI, $DBGScriptFullPath, $DBGident, $DBGnotifyFun, $DBGcommandFun, $DBGhSci, $DBGstepMode, $DBGBreakFun, $DBGBreakLine, $DBGtimer, $DBGSortMode
Execute(Dbug(24))
Global $DBGLineFun[1], $DBGlnr
Execute(Dbug(25))
Global $DBGFunVars[1][2], $DBGFunVarsOrg[1][2]
Execute(Dbug(26))
Global $DBGLastFun, $DBGStack, $DBGPrevVar
Execute(Dbug(27))
Global $frmDBUG, $DBGtxtCommand, $DBGbtnRun, $DBGbtnRunCursor, $DBGbtnStep, $DBGbtnStepOver, $DBGtxtResult, $DBGtxtBreakPoint, $DBGbtnClear, $DBGListView, $DBGlblStat, $DBGbtnEdit, $DBGchkSetOnTop, $DBGchkSortToggle
;if called for the first time (no arguments) then create shadow script, start it and exit (if the original script contains a 'Execute(dbug())' statement then continue (debug line mode)
;else (called second time) get the original script name and run it (debug script mode)
Execute(Dbug(30))
$DBGScriptFullPath = @ScriptFullPath

; multi language support
Execute(Dbug(33))
Global $DBGISNDir = StringReplace(RegRead("HKEY_CURRENT_USER\Software\ISN AutoIt Studio", "Dbug_imagepath"),"\Data\Dbug\IMAGES\","")
Execute(Dbug(34))
if FileExists($DBGISNDir&"\portable.dat") then
Execute(Dbug(35))
	Global $DBGConfigfile = $DBGISNDir & "\data\config.ini"
Execute(Dbug(36))
	Global $DBGLanguagefile = iniread($DBGConfigfile, "config", "language", "german.lng")
Execute(Dbug(37))
Else
Execute(Dbug(38))
	Global $DBGConfigfile = RegRead ("HKEY_CURRENT_USER\Software\ISN AutoIt Studio", "Configfile")
Execute(Dbug(39))
	Global $DBGLanguagefile = iniread($DBGConfigfile, "config", "language", "german.lng")
Execute(Dbug(40))
endif


Execute(Dbug(43))
If $CmdLine[0] = 0 Then
Execute(Dbug(44))
	_CreateAndRun()
Execute(Dbug(45))
Else
Execute(Dbug(46))
	$DBGScriptFullPath = $CmdLine[2] & '\' & $CmdLine[1]
Execute(Dbug(47))
EndIf

Execute(Dbug(49))
_Analyse($DBGScriptFullPath)	;get variables for each function

Execute(Dbug(51))
$DBGstepMode = True	;default mode
Execute(Dbug(52))
$DBGSortMode = True
Execute(Dbug(53))
Opt('WinTitleMatchMode',2)

Execute(Dbug(55))
if WinGetTitle("[TITLE:ISN AutoIt Studio - Ed; CLASS:AutoIt v3 GUI;]","") = 0 Then
Execute(Dbug(56))
$title = WinGetTitle("[TITLE: - ISN AutoIt Studio; CLASS:AutoIt v3 GUI;]","")
Execute(Dbug(57))
Else
Execute(Dbug(58))
$title = WinGetTitle("[TITLE:ISN AutoIt Studio - Ed; CLASS:AutoIt v3 GUI;]","")
Execute(Dbug(59))
endif
;~ ConsoleWrite($title&@crlf)
Execute(Dbug(61))
$DBGhSci = ControlGetHandle($title,"","[CLASS:Scintilla;INSTANCE:1]")	;Scintilla handle


Execute(Dbug(64))
ConsoleWrite('+ DBUG started with ' & $CmdLine[0] & ' arguments.'&@crlf&@crlf)


;DBUG GUI
#Region ### START Koda GUI section ### Form=d:\nlrgo\my documents\my autoit scripts\dbug\frmdbug.kxf
Execute(Dbug(69))
$frmDBUG = GUICreate("DBUG", 670, 602, 381, 154, BitOR($WS_MAXIMIZEBOX,$WS_MINIMIZEBOX,$WS_SIZEBOX,$WS_THICKFRAME,$WS_SYSMENU,$WS_CAPTION,$WS_OVERLAPPEDWINDOW,$WS_TILEDWINDOW,$WS_POPUP,$WS_POPUPWINDOW,$WS_GROUP,$WS_TABSTOP,$WS_BORDER,$WS_CLIPSIBLINGS))
Execute(Dbug(70))
GUISetIcon("")
Execute(Dbug(71))
$DBGtxtCommand = GUICtrlCreateEdit("", 16, 255, 600, 105)
;$DBGtxtCommand = GUICtrlCreateEdit("", 16, 303, 600, 50)
Execute(Dbug(73))
GUICtrlSetData(-1, _Get_langstr(821))
Execute(Dbug(74))
GUICtrlSetFont(-1, 9, 400, 0, "Courier New")
Execute(Dbug(75))
GUICtrlSetResizing(-1, $GUI_DOCKLEFT+$GUI_DOCKRIGHT)
;~ GUICtrlSetResizing(-1, $GUI_DOCKSIZE+$GUI_DOCKBOTTOM)
Execute(Dbug(77))
GUICtrlSetTip(-1, _Get_langstr(822))
Execute(Dbug(78))
$DBGtxtResult = GUICtrlCreateEdit("", 16, 360, 600, 209)
Execute(Dbug(79))
GUICtrlSetData(-1, _Get_langstr(823))
Execute(Dbug(80))
GUICtrlSetFont(-1, 9, 400, 0, "Courier New")
;GUICtrlSetResizing(-1, $GUI_DOCKLEFT+$GUI_DOCKRIGHT+$GUI_DOCKBOTTOM)
Execute(Dbug(82))
GUICtrlSetResizing(-1, $GUI_DOCKLEFT+$GUI_DOCKRIGHT)
Execute(Dbug(83))
GUICtrlSetTip(-1, _Get_langstr(824))
Execute(Dbug(84))
$DBGtxtBreakPoint = GUICtrlCreateInput("", 224, 8, 389, 23)
Execute(Dbug(85))
GUICtrlSetFont(-1, 9, 400, 0, "Courier New")
Execute(Dbug(86))
GUICtrlSetResizing(-1, $GUI_DOCKLEFT+$GUI_DOCKRIGHT+$GUI_DOCKTOP+$GUI_DOCKHEIGHT)
Execute(Dbug(87))
GUICtrlSetTip(-1, _Get_langstr(825))
Execute(Dbug(88))
$DBGListView = GUICtrlCreateListView(_Get_langstr(826), 16, 40, 600, 209, BitOR($LVS_REPORT,$LVS_EDITLABELS,$LVS_SHOWSELALWAYS), BitOR($WS_EX_CLIENTEDGE,$LVS_EX_GRIDLINES))
Execute(Dbug(89))
GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, 0, 50)
Execute(Dbug(90))
GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, 1, 50)
Execute(Dbug(91))
GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, 2, 50)
Execute(Dbug(92))
GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, 3, 50)
Execute(Dbug(93))
GUICtrlSetFont(-1, 9, 400, 0, "Courier New")
Execute(Dbug(94))
GUICtrlSetResizing(-1, $GUI_DOCKLEFT+$GUI_DOCKRIGHT+$GUI_DOCKTOP)
;~ GUICtrlSetResizing(-1, $GUI_DOCKLEFT+$GUI_DOCKRIGHT+$GUI_DOCKTOP)
Execute(Dbug(96))
GUICtrlSetTip(-1, _Get_langstr(827))
Execute(Dbug(97))
$DBGbtnStep = GUICtrlCreateButton(_Get_langstr(828), 16, 8, 32, 24, BitOR($BS_BITMAP,$WS_GROUP))
Execute(Dbug(98))
GUICtrlSetImage(-1, "D:\nlrgo\My Documents\My AutoIt Scripts\Dbug\IMAGES\StepInto.bmp", -1)
Execute(Dbug(99))
GUICtrlSetResizing(-1, $GUI_DOCKLEFT+$GUI_DOCKTOP+$GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
Execute(Dbug(100))
GUICtrlSetTip(-1, _Get_langstr(829))
Execute(Dbug(101))
$DBGbtnStepOver = GUICtrlCreateButton(_Get_langstr(830), 48, 8, 32, 24, BitOR($BS_BITMAP,$WS_GROUP))
Execute(Dbug(102))
GUICtrlSetImage(-1, "D:\nlrgo\My Documents\My AutoIt Scripts\Dbug\IMAGES\StepOver.bmp", -1)
Execute(Dbug(103))
GUICtrlSetResizing(-1, $GUI_DOCKLEFT+$GUI_DOCKTOP+$GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
Execute(Dbug(104))
GUICtrlSetTip(-1, _Get_langstr(831))
Execute(Dbug(105))
$DBGbtnRunCursor = GUICtrlCreateButton(_Get_langstr(832), 80, 8, 32, 24, BitOR($BS_BITMAP,$WS_GROUP))
Execute(Dbug(106))
GUICtrlSetImage(-1, "D:\nlrgo\My Documents\My AutoIt Scripts\Dbug\IMAGES\RunToCursor.bmp", -1)
Execute(Dbug(107))
GUICtrlSetResizing(-1, $GUI_DOCKLEFT+$GUI_DOCKTOP+$GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
Execute(Dbug(108))
GUICtrlSetTip(-1, _Get_langstr(833))
Execute(Dbug(109))
$btnBreak = GUICtrlCreateButton(_Get_langstr(834), 112, 8, 32, 24, BitOR($BS_BITMAP,$WS_GROUP))
Execute(Dbug(110))
GUICtrlSetImage(-1, "D:\nlrgo\My Documents\My AutoIt Scripts\Dbug\IMAGES\Pause.bmp", -1)
Execute(Dbug(111))
GUICtrlSetResizing(-1, $GUI_DOCKLEFT+$GUI_DOCKTOP+$GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
Execute(Dbug(112))
GUICtrlSetTip(-1, _Get_langstr(835))
Execute(Dbug(113))
$DBGbtnRun = GUICtrlCreateButton(_Get_langstr(836), 144, 8, 32, 24, BitOR($BS_BITMAP,$WS_GROUP))
Execute(Dbug(114))
GUICtrlSetImage(-1, "D:\nlrgo\My Documents\My AutoIt Scripts\Dbug\IMAGES\Resume.bmp", -1)
Execute(Dbug(115))
GUICtrlSetResizing(-1, $GUI_DOCKLEFT+$GUI_DOCKTOP+$GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
Execute(Dbug(116))
GUICtrlSetTip(-1, _Get_langstr(837))
Execute(Dbug(117))
$btnExit = GUICtrlCreateButton(_Get_langstr(838), 624, 536, 32, 24, BitOR($BS_BITMAP,$WS_GROUP))
Execute(Dbug(118))
GUICtrlSetImage(-1, "D:\nlrgo\My Documents\My AutoIt Scripts\Dbug\IMAGES\Stop.bmp", -1)
Execute(Dbug(119))
GUICtrlSetResizing(-1, $GUI_DOCKRIGHT+$GUI_DOCKBOTTOM+$GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
Execute(Dbug(120))
GUICtrlSetTip(-1, _Get_langstr(839))
Execute(Dbug(121))
$btnToggle = GUICtrlCreateButton(_Get_langstr(840), 176, 8, 32, 24, BitOR($BS_BITMAP,$WS_GROUP))
Execute(Dbug(122))
GUICtrlSetImage(-1, "D:\nlrgo\My Documents\My AutoIt Scripts\Dbug\IMAGES\BreakPoints.bmp", -1)
Execute(Dbug(123))
GUICtrlSetResizing(-1, $GUI_DOCKLEFT+$GUI_DOCKTOP+$GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
Execute(Dbug(124))
GUICtrlSetTip(-1, _Get_langstr(841))
Execute(Dbug(125))
$DBGbtnClear = GUICtrlCreateButton(_Get_langstr(842), 624, 8, 32, 24, BitOR($BS_BITMAP,$WS_GROUP))
Execute(Dbug(126))
GUICtrlSetImage(-1, "D:\nlrgo\My Documents\My AutoIt Scripts\Dbug\IMAGES\Erase.bmp", -1)
Execute(Dbug(127))
GUICtrlSetResizing(-1, $GUI_DOCKRIGHT+$GUI_DOCKTOP+$GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
Execute(Dbug(128))
GUICtrlSetTip(-1, _Get_langstr(843))
Execute(Dbug(129))
$btnDelete = GUICtrlCreateButton(_Get_langstr(844), 624, 64, 32, 24, BitOR($BS_BITMAP,$WS_GROUP))
Execute(Dbug(130))
GUICtrlSetImage(-1, "D:\nlrgo\My Documents\My AutoIt Scripts\Dbug\IMAGES\Cut.bmp", -1)
Execute(Dbug(131))
GUICtrlSetResizing(-1, $GUI_DOCKRIGHT+$GUI_DOCKTOP+$GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
Execute(Dbug(132))
GUICtrlSetTip(-1, _Get_langstr(845))
Execute(Dbug(133))
$btnInsert = GUICtrlCreateButton(_Get_langstr(846), 624, 88, 32, 24, BitOR($BS_BITMAP,$WS_GROUP))
Execute(Dbug(134))
GUICtrlSetImage(-1, "D:\nlrgo\My Documents\My AutoIt Scripts\Dbug\IMAGES\Add.bmp", -1)
Execute(Dbug(135))
GUICtrlSetResizing(-1, $GUI_DOCKRIGHT+$GUI_DOCKTOP+$GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
Execute(Dbug(136))
GUICtrlSetTip(-1, _Get_langstr(847))
Execute(Dbug(137))
$DBGbtnEdit = GUICtrlCreateButton(_Get_langstr(848), 624, 112, 32, 24, BitOR($BS_BITMAP,$WS_GROUP))
Execute(Dbug(138))
GUICtrlSetImage(-1, "D:\nlrgo\My Documents\My AutoIt Scripts\Dbug\IMAGES\Edit.bmp", -1)
Execute(Dbug(139))
GUICtrlSetResizing(-1, $GUI_DOCKRIGHT+$GUI_DOCKTOP+$GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
Execute(Dbug(140))
GUICtrlSetTip(-1, _Get_langstr(849))
Execute(Dbug(141))
$btnOriginal = GUICtrlCreateButton(_Get_langstr(850), 624, 168, 32, 24, BitOR($BS_BITMAP,$WS_GROUP))
Execute(Dbug(142))
GUICtrlSetImage(-1, "D:\nlrgo\My Documents\My AutoIt Scripts\Dbug\IMAGES\Refresh.bmp", -1)
Execute(Dbug(143))
GUICtrlSetResizing(-1, $GUI_DOCKRIGHT+$GUI_DOCKTOP+$GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
Execute(Dbug(144))
GUICtrlSetTip(-1, _Get_langstr(851))
Execute(Dbug(145))
$btnLoad = GUICtrlCreateButton(_Get_langstr(852), 624, 192, 32, 24, BitOR($BS_BITMAP,$WS_GROUP))
Execute(Dbug(146))
GUICtrlSetImage(-1, "D:\nlrgo\My Documents\My AutoIt Scripts\Dbug\IMAGES\Open.bmp", -1)
Execute(Dbug(147))
GUICtrlSetResizing(-1, $GUI_DOCKRIGHT+$GUI_DOCKTOP+$GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
Execute(Dbug(148))
GUICtrlSetTip(-1, _Get_langstr(853))
Execute(Dbug(149))
$btnStore = GUICtrlCreateButton(_Get_langstr(854), 624, 216, 32, 24, BitOR($BS_BITMAP,$WS_GROUP))
Execute(Dbug(150))
GUICtrlSetImage(-1, "D:\nlrgo\My Documents\My AutoIt Scripts\Dbug\IMAGES\Save.bmp", -1)
Execute(Dbug(151))
GUICtrlSetResizing(-1, $GUI_DOCKRIGHT+$GUI_DOCKTOP+$GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
Execute(Dbug(152))
GUICtrlSetTip(-1, _Get_langstr(855))
Execute(Dbug(153))
$btnClearCmd = GUICtrlCreateButton(_Get_langstr(869), 624, 248, 32, 24, BitOR($BS_BITMAP,$WS_GROUP))
Execute(Dbug(154))
GUICtrlSetImage(-1, "D:\nlrgo\My Documents\My AutoIt Scripts\Dbug\IMAGES\Erase.bmp", -1)
Execute(Dbug(155))
GUICtrlSetResizing(-1, $GUI_DOCKRIGHT+$GUI_DOCKTOP+$GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
Execute(Dbug(156))
GUICtrlSetTip(-1, _Get_langstr(870))

Execute(Dbug(158))
$DBGchkSortToggle = GUICtrlCreateCheckbox(_Get_langstr(875), 624, 275, 32, 24, BitOR($BS_CHECKBOX,$BS_PUSHLIKE,$WS_TABSTOP))
Execute(Dbug(159))
GUICtrlSetState(-1, $GUI_CHECKED)
;$btnSortToggle = GUICtrlCreateButton(_Get_langstr(875), 624, 275, 32, 24, BitOR($BS_BITMAP,$WS_GROUP))
;GUICtrlSetImage(-1, "D:\nlrgo\My Documents\My AutoIt Scripts\Dbug\IMAGES\Sort.bmp", -1)
Execute(Dbug(162))
GUICtrlSetResizing(-1, $GUI_DOCKRIGHT+$GUI_DOCKTOP+$GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
Execute(Dbug(163))
GUICtrlSetTip(-1, _Get_langstr(876))

Execute(Dbug(165))
$btnExecute = GUICtrlCreateButton(_Get_langstr(856), 624, 320, 32, 24, BitOR($BS_BITMAP,$WS_GROUP))
Execute(Dbug(166))
GUICtrlSetImage(-1, "D:\nlrgo\My Documents\My AutoIt Scripts\Dbug\IMAGES\Execute.bmp", -1)
;~ GUICtrlSetResizing(-1, $GUI_DOCKRIGHT+$GUI_DOCKBOTTOM+$GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
Execute(Dbug(168))
GUICtrlSetResizing(-1, $GUI_DOCKRIGHT+$GUI_DOCKTOP+$GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
Execute(Dbug(169))
GUICtrlSetTip(-1, _Get_langstr(857))
Execute(Dbug(170))
$btnClearResults = GUICtrlCreateButton(_Get_langstr(870), 624, 352, 32, 24, BitOR($BS_BITMAP,$WS_GROUP))
Execute(Dbug(171))
GUICtrlSetImage(-1, "D:\nlrgo\My Documents\My AutoIt Scripts\Dbug\IMAGES\Erase.bmp", -1)
;~ GUICtrlSetResizing(-1, $GUI_DOCKRIGHT+$GUI_DOCKBOTTOM+$GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
Execute(Dbug(173))
GUICtrlSetResizing(-1, $GUI_DOCKRIGHT+$GUI_DOCKTOP+$GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
Execute(Dbug(174))
GUICtrlSetTip(-1, _Get_langstr(858))

Execute(Dbug(176))
$DBGchkSetOnTop = GUICtrlCreateCheckbox(_Get_langstr(859), 624, 40, 32, 24, BitOR($BS_CHECKBOX,$BS_PUSHLIKE,$WS_TABSTOP))
Execute(Dbug(177))
GUICtrlSetState(-1, $GUI_CHECKED)
Execute(Dbug(178))
GUICtrlSetResizing(-1, $GUI_DOCKRIGHT+$GUI_DOCKTOP+$GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
Execute(Dbug(179))
GUICtrlSetTip(-1, _Get_langstr(860))
Execute(Dbug(180))
$DBGlblStat = GUICtrlCreateLabel(_Get_langstr(861), 15, 580, 604, 17)
Execute(Dbug(181))
GUICtrlSetFont(-1, 9, 400, 0, "Courier New")
Execute(Dbug(182))
GUICtrlSetResizing(-1, $GUI_DOCKLEFT+$GUI_DOCKRIGHT+$GUI_DOCKBOTTOM+$GUI_DOCKHEIGHT)
Execute(Dbug(183))
GUICtrlSetTip(-1, _Get_langstr(862))
#EndRegion ### END Koda GUI section ###

;after koda save GUISetState and GUISetAccelerators lines in Koda GUI section
Execute(Dbug(187))
Dim $frmDBUG_AccelTable[11][2] = [["{F5}", $DBGbtnRun],["{F7}", $DBGbtnStep],["{F2}", $DBGbtnEdit],["{F8}", $DBGbtnStepOver],["^q", $btnExit],["^x", $btnDelete],["^s", $btnStore],["^o", $btnLoad],["^{F2}", $btnToggle],["{INS}", $btnInsert],["^{ENTER}", $btnExecute]]
Execute(Dbug(188))
GUISetAccelerators($frmDBUG_AccelTable)

Execute(Dbug(190))
$DBGImagePath = RegRead ("HKEY_CURRENT_USER\Software\ISN AutoIt Studio", "Dbug_imagepath")
Execute(Dbug(191))
if $DBGImagePath = "" then StringReplace(@AutoItExe, "AutoIt3.exe", "IMAGES\")
Execute(Dbug(192))
If Not FileExists($DBGImagePath) Then GUICtrlSetData($DBGtxtResult, _Get_langstr(863) & " " & $DBGImagePath)
Execute(Dbug(193))
GUISetIcon($DBGImagePath & "Dbug.ico", -1, $frmDBUG)
Execute(Dbug(194))
GUICtrlSetStyle($DBGchkSetOnTop, BitOR($WS_GROUP, $BS_PUSHLIKE, $BS_AUTOCHECKBOX, $BS_BITMAP))
Execute(Dbug(195))
GUICtrlSetImage($DBGchkSetOnTop, $DBGImagePath & "OnTop.bmp", -1)
Execute(Dbug(196))
GUICtrlSetStyle($DBGchkSortToggle, BitOR($WS_GROUP, $BS_PUSHLIKE, $BS_AUTOCHECKBOX, $BS_BITMAP))
Execute(Dbug(197))
GUICtrlSetImage($DBGchkSortToggle, $DBGImagePath & "Sort.bmp", -1)
Execute(Dbug(198))
GUICtrlSetImage($DBGbtnRun, $DBGImagePath & "Resume.bmp", -1)
Execute(Dbug(199))
GUICtrlSetImage($DBGbtnClear, $DBGImagePath & "Erase.bmp", -1)
Execute(Dbug(200))
GUICtrlSetImage($DBGbtnStep, $DBGImagePath & "StepInto.bmp", -1)
Execute(Dbug(201))
GUICtrlSetImage($DBGbtnRunCursor, $DBGImagePath & "RunToCursor.bmp", -1)
Execute(Dbug(202))
GUICtrlSetImage($DBGbtnEdit, $DBGImagePath & "Edit.bmp", -1)
Execute(Dbug(203))
GUICtrlSetImage($DBGbtnStepOver, $DBGImagePath & "StepOver.bmp", -1)
Execute(Dbug(204))
GUICtrlSetImage($btnBreak, $DBGImagePath & "Pause.bmp", -1)
Execute(Dbug(205))
GUICtrlSetImage($btnExit, $DBGImagePath & "Exit.bmp", -1)
Execute(Dbug(206))
GUICtrlSetImage($btnDelete, $DBGImagePath & "Cut.bmp", -1)
Execute(Dbug(207))
GUICtrlSetImage($btnStore, $DBGImagePath & "Save.bmp", -1)
Execute(Dbug(208))
GUICtrlSetImage($btnLoad, $DBGImagePath & "Open.bmp", -1)
Execute(Dbug(209))
GUICtrlSetImage($btnToggle, $DBGImagePath & "BreakPoints.bmp", -1)
Execute(Dbug(210))
GUICtrlSetImage($btnClearCmd, $DBGImagePath & "Erase.bmp", -1)
Execute(Dbug(211))
GUICtrlSetImage($btnClearResults, $DBGImagePath & "Erase.bmp", -1)
Execute(Dbug(212))
GUICtrlSetImage($btnInsert, $DBGImagePath & "Add.bmp", -1)
Execute(Dbug(213))
GUICtrlSetImage($btnOriginal, $DBGImagePath & "Refresh.bmp", -1)
Execute(Dbug(214))
GUICtrlSetImage($btnExecute, $DBGImagePath & "Execute.bmp", -1)

Execute(Dbug(216))
DBGShow()

Execute(Dbug(218))
WinSetOnTop($frmDBUG, '', 1)


Execute(Dbug(221))
Func Dbug($lnr = @ScriptLineNumber, $case = -5, $exp = 0, $exp2 = 0)	;main function
	;ConsoleWrite('DBUG(' & $lnr & ') case: ' & $case & ' exp: ' & $exp & ' exp2: ' & $exp2 & @CRLF)

Execute(Dbug(224))
	Local $Msg, $brk, $sel, $editActive, $in, $out, $var, $val, $hEdit, $items, $fx, $CurExpr, $max, $item, $scope, $vname, $breaknow, $tmp

	Switch $case
		Case -9 ;loop

Execute(Dbug(229))
		While True
Execute(Dbug(230))
			Opt('GUIOnEventMode', 0)
Execute(Dbug(231))
			$DBGBlock = True

Execute(Dbug(233))
			$Msg = GUIGetMsg()
			Switch $Msg

				Case $DBGbtnClear	;clear conditional breakpoint
Execute(Dbug(237))
					GUICtrlSetData($DBGtxtBreakPoint, "")
Execute(Dbug(238))
					ControlFocus($frmDBUG, "", $DBGtxtBreakPoint)

Execute(Dbug(240))
				Case $btnClearCmd
Execute(Dbug(241))
					GUICtrlSetData($DBGtxtCommand, "")
Execute(Dbug(242))
					ControlFocus($frmDBUG, "", $DBGtxtCommand)

Execute(Dbug(244))
				Case $btnClearResults
Execute(Dbug(245))
					GUICtrlSetData($DBGtxtResult, "")
Execute(Dbug(246))
					ControlFocus($frmDBUG, "", $DBGtxtResult)

Execute(Dbug(248))
				Case $DBGchkSortToggle
Execute(Dbug(249))
					If GUICtrlRead($DBGchkSortToggle) = $GUI_CHECKED then
Execute(Dbug(250))
						$DBGSortMode = True
Execute(Dbug(251))
						_DBGGUICtrlListView_SortItems_NoToggle($DBGListView, 0, 0)
Execute(Dbug(252))
					Else
Execute(Dbug(253))
						$DBGSortMode = False
Execute(Dbug(254))
						MsgBox(0,_Get_langstr(877),_Get_langstr(878),0, $frmDBUG)
Execute(Dbug(255))
					EndIf
Execute(Dbug(256))
				Case $DBGchkSetOnTop	;set on top
Execute(Dbug(257))
					WinSetOnTop($frmDBUG, '', 0)
Execute(Dbug(258))
					If GUICtrlRead($DBGchkSetOnTop) = $GUI_CHECKED Then WinSetOnTop($frmDBUG, '', 1)

Execute(Dbug(260))
				Case $DBGbtnRun, $DBGbtnStep, $DBGbtnRunCursor, $DBGbtnStepOver	;handle debug command
Execute(Dbug(261))
					$sel = _SCISendMessage($DBGhSci, 2009)	;get anchor
Execute(Dbug(262))
					$sel = _SCISendMessage($DBGhSci, 2166, $sel)+2	;linefromposition

Execute(Dbug(264))
					$DBGstepMode = False	;set run/step mode things
Execute(Dbug(265))
					$DBGBreakFun = ''
Execute(Dbug(266))
					$DBGBreakLine = 0
Execute(Dbug(267))
					$DBGLineFun[0] = 0
Execute(Dbug(268))
					If $msg = $DBGbtnStep Then $DBGstepMode = True
Execute(Dbug(269))
					If $msg = $DBGbtnStepOver Then $DBGBreakFun = $DBGLineFun[$lnr]
Execute(Dbug(270))
					If $msg = $DBGbtnRunCursor Then $DBGBreakLine = $sel

Execute(Dbug(272))
					WinSetTitle($frmDBUG, 0, 'DBUG - Running script')	;set GUI things
Execute(Dbug(273))
					For $val = 1 To 20 ;disable buttons
Execute(Dbug(274))
						$text = ControlGetText($frmDBUG, "", "[CLASS:Button;INSTANCE:" & $val & "]")
Execute(Dbug(275))
						If $text <> _Get_langstr(834) And $text <> _Get_langstr(838) Then ControlDisable($frmDBUG, "", "[CLASS:Button;INSTANCE:" & $val & "]")
Execute(Dbug(276))
					Next
Execute(Dbug(277))
					_GUICtrlListView_DeleteAllItems(GUICtrlGetHandle($DBGListView))

Execute(Dbug(279))
					_SCISendMessage($DBGhSci, 2045, 3)	;delete markers
Execute(Dbug(280))
					Opt('GUIOnEventMode', $DBGOnEventMode)	;restore previous OnEventMode
Execute(Dbug(281))
					GUISwitch($DBGCurrentGUI)	;restore previous GUI
Execute(Dbug(282))
					$DBGBlock = False	;release just before return

Execute(Dbug(284))
					Return

Execute(Dbug(286))
				Case $btnToggle ;set/reset breakpoint line
Execute(Dbug(287))
					$sel = _SCISendMessage($DBGhSci, 2009)	;get anchor
Execute(Dbug(288))
					$sel = _SCISendMessage($DBGhSci, 2166, $sel)+1	;linefromposition

Execute(Dbug(290))
					$val = _SCISendMessage($DBGhSci, 2046, $sel-1)		;markerget
Execute(Dbug(291))
					If BitAND($val, 0x0002) Then
Execute(Dbug(292))
						_SCISendMessage($DBGhSci, 2044, $sel-1, 1)		;delete marker
Execute(Dbug(293))
					Else
Execute(Dbug(294))
						$text = _SCIGetLine() ; get line
Execute(Dbug(295))
						$text = StringStripWS($text,7) ; remove all extra whitespace
Execute(Dbug(296))
						If StringLeft($text,1) = "#" or StringLeft($text,1) = ";" or StringInStr($text,"#cs") or StringInStr($text,"#ce") Then
Execute(Dbug(297))
							MsgBox(0,_Get_langstr(864),_Get_langstr(865),0, $frmDBUG)
Execute(Dbug(298))
						Else
Execute(Dbug(299))
							_SCISendMessage($DBGhSci, 2043, $sel-1, 1)		;add marker
Execute(Dbug(300))
							_SCISendMessage($DBGhSci, 2042, 1, 0x0000FF) ; NEUE ZEILE - set markNum 1 background to red
Execute(Dbug(301))
							_SCISendMessage($DBGhSci, 2040, 1, 21) ; NEUE ZEILE - set markNum 1 auf Typ 21 (Circleminusconnected)
Execute(Dbug(302))
						EndIf
Execute(Dbug(303))
					EndIf

Execute(Dbug(305))
				Case $DBGbtnEdit	;edit listview item
Execute(Dbug(306))
					$sel = _GUICtrlListView_GetSelectedIndices($DBGListView)
Execute(Dbug(307))
					_GUICtrlListView_EditLabel($DBGListView, Int($sel))

Execute(Dbug(309))
				Case $btnInsert	;insert listview item
Execute(Dbug(310))
					$sel = _GUICtrlListView_GetNextItem($DBGListView, -1, 0, 8)
Execute(Dbug(311))
					If $sel = -1 Then $sel = 0
Execute(Dbug(312))
					_GUICtrlListView_InsertItem($DBGListView, _Get_langstr(866), Int($sel))
Execute(Dbug(313))
					_GUICtrlListView_SetItemSelected(GUICtrlGetHandle($DBGListView), $sel, True)
Execute(Dbug(314))
					_GUICtrlListView_EditLabel($DBGListView, Int($sel))

Execute(Dbug(316))
				Case $btnDelete ;delete selected listview items
Execute(Dbug(317))
					$val = _GUICtrlListView_GetSelectedIndices($DBGListView, True)
Execute(Dbug(318))
					For $sel = UBound($val)-1 To 1 Step -1
Execute(Dbug(319))
						_GUICtrlListView_DeleteItem(GUICtrlGetHandle($DBGListView), $val[$sel])
Execute(Dbug(320))
					Next
Execute(Dbug(321))
					_GUICtrlListView_SetItemSelected(GUICtrlGetHandle($DBGListView), $val[1], True)
					;_GUICtrlListView_EnsureVisible($DBGListView, $val[1])
Execute(Dbug(323))
					ControlFocus($frmDBUG, "", $DBGListView)
Execute(Dbug(324))
					SaveListItems($lnr)

Execute(Dbug(326))
				Case $btnOriginal ;retsore original list
Execute(Dbug(327))
					$fx = _ArraySearch($DBGFunVars, $DBGLineFun[$lnr])
Execute(Dbug(328))
					$DBGFunVars[$fx][1] = $DBGFunVarsOrg[$fx][1]
Execute(Dbug(329))
					PopulateListView($lnr)
