;ISN Autoitstudio Addons.au3





Func _hit_win($GUI)
	$wpos = WinGetPos($GUI, "")
	$mpos = MouseGetPos()
	If Not IsArray($wpos) Then Return
	If Not IsArray($mpos) Then Return
	If @error Then Return
	If($mpos[0] > $wpos[0] And $mpos[1] > $wpos[1]) And($mpos[0] < $wpos[0] + $wpos[2] And $mpos[1] < $wpos[1] + $wpos[3]) Then
		Return 1
	Else
		Return 0
	EndIf
EndFunc   ;==>_hit_win


Func _SetIconAlpha($hWnd, $sIcon, $iIndex, $iWidth, $iHeight)

    If Not IsHWnd($hWnd) Then
        $hWnd = GUICtrlGetHandle($hWnd)
        If $hWnd = 0 Then
            Return SetError(1, 0, 0)
        EndIf
    EndIf

    if $iIndex <> 0 then $iIndex = $iIndex-1
    Local $hIcon = _WinAPI_ShellExtractIcons($sIcon, $iIndex, $iWidth, $iHeight)

    If $hIcon = 0 Then
        Return SetError(1, 0, 0)
    EndIf

    Local $hBitmap, $hObj, $hDC, $hMem, $hSv

    $hDC = _WinAPI_GetDC($hWnd)
    $hMem = _WinAPI_CreateCompatibleDC($hDC)
    $hBitmap = _WinAPI_CreateCompatibleBitmap($hDC, $iWidth, $iHeight)
    $hSv = _WinAPI_SelectObject($hMem, $hBitmap)
    _WinAPI_DrawIconEx($hMem, 0, 0, $hIcon, $iWidth, $iHeight, 0, 0, 2)
    _WinAPI_ReleaseDC($hWnd, $hDC)
    _WinAPI_SelectObject($hMem, $hSv)
    _WinAPI_DeleteDC($hMem)
    _WinAPI_DestroyIcon($hIcon)
    _WinAPI_DeleteObject(_SendMessage($hWnd, 0x0172, 0, 0))
    _SendMessage($hWnd, 0x0172, 0, $hBitmap)
    $hObj = _SendMessage($hWnd, 0x0173)
    If $hObj <> $hBitmap Then
        _WinAPI_DeleteObject($hBitmap)
    EndIf
    Return 1
 EndFunc   ;==>_SetIconAlpha

;___BUTTONICONS__

Func Button_AddIcon($nID, $sIconFile, $nIconID, $nAlign)
	$sIconFile = $smallIconsdll
	Local $hIL = ImageList_Create(16, 16, BitOR($ILC_MASK, $ILC_COLOR32), 0, 1)
	Local $stIcon = DllStructCreate("int")
	ExtractIconEx($sIconFile, $nIconID, DllStructGetPtr($stIcon), 0, 1)
	ImageList_AddIcon($hIL, DllStructGetData($stIcon, 1))
	DestroyIcon(DllStructGetData($stIcon, 1))
	Local $stBIL = DllStructCreate("dword;int[4];uint")
	DllStructSetData($stBIL, 1, $hIL)
	DllStructSetData($stBIL, 2, 1, 1)
	DllStructSetData($stBIL, 2, 1, 2)
	DllStructSetData($stBIL, 2, 1, 3)
	DllStructSetData($stBIL, 2, 1, 4)
	DllStructSetData($stBIL, 3, $nAlign)
	GUICtrlSendMsg($nID, $BCM_SETIMAGELIST, 0, DllStructGetPtr($stBIL))
EndFunc   ;==>Button_AddIcon

Func ExtractIconEx($sIconFile, $nIconID, $ptrIconLarge, $ptrIconSmall, $nIcons)
	Local $nCount = DllCall('shell32.dll', 'int', 'ExtractIconEx', _
			'str', $sIconFile, _
			'int', $nIconID, _
			'ptr', $ptrIconLarge, _
			'ptr', $ptrIconSmall, _
			'int', $nIcons)
	Return $nCount[0]
EndFunc   ;==>ExtractIconEx

;___END__BUTTONICONS__

Func _Dummyfunc()
EndFunc   ;==>_Dummyfunc

Func _Write_log($str, $colour = "000000", $big = "false", $notime = "false")
	$str = StringReplace($str, "\", "\\")
	$str = StringReplace($str, "/", "//")
	;uictrlsetdata($Programm_log,guictrlread($Programm_log)&@hour&":"&@min&":"&@sec&"  "&$str&@crlf)
	$time = @HOUR & ":" & @MIN & ":" & @SEC & "  "
	$str = "[c=#" & $colour & "]" & $str & "[/c] "
	If $big = "true" Then $str = "[b]" & $str & "[/b] "
	If $notime = "true" Then $time = ""

	_ChatBoxAdd($Programm_log, $time & $str & @CRLF)
	;_GUICtrlEdit_Scroll($Programm_log, $SB_SCROLLCARET)
	_SendMessage($Programm_log, $WM_VSCROLL, $SB_BOTTOM, 0)
EndFunc   ;==>_Write_log

Func _show_Loading($Text1, $Text2)
	GUISetCursor(15, 0, $Loading_GUI)
	GUICtrlSetData($Loading_Text1, $Text1)
	GUICtrlSetData($Loading_Text2, $Text2)
	GUISetState(@SW_SHOW, $Loading_GUI)
	GUISetState(@SW_DISABLE, $StudioFenster)
EndFunc   ;==>_show_Loading

Func _Loading_Progress($zahl)
	GUICtrlSetData($Loading_progressbar, $zahl)
EndFunc   ;==>_Loading_Progress

Func _Hide_Loading()
	GUISetCursor(2, 0, $Loading_GUI)
	GUISetState(@SW_HIDE, $Loading_GUI)
	_Rezize()
EndFunc   ;==>_Hide_Loading

Func _Create_New_Project()
	If GUICtrlRead($new_projectvorlage_combo) = "" And GUICtrlRead($new_projectvorlage_radio1) = $GUI_CHECKED Then
		MsgBox(262144 + 16, _Get_langstr(25), _Get_langstr(380), 0, $NEW_PROJECT_GUI)
		Return
	EndIf

	If GUICtrlRead($new_projectname) = "" Then
		MsgBox(262144 + 16, _Get_langstr(25), _Get_langstr(24), 0, $NEW_PROJECT_GUI)
		_Input_Error_FX($new_projectname)
		Return
	EndIf

	If GUICtrlRead($new_projectmainfile) = "" Then
		MsgBox(262144 + 16, _Get_langstr(25), _Get_langstr(26), 0, $NEW_PROJECT_GUI)
		_Input_Error_FX($new_projectmainfile)
		Return
	EndIf

	If FileExists($Projectfolder & "\" & GUICtrlRead($new_projectname)) And GUICtrlRead($new_projectstammordner_checkbox) = $GUI_UNCHECKED Then
		MsgBox(262144 + 16, _Get_langstr(25), _Get_langstr(27), 0, $NEW_PROJECT_GUI)
		Return
	EndIf

	$i = GUICtrlRead($new_projectname)
	If StringInStr($i, "\") Or StringInStr($i, "/") Or StringInStr($i, "?") Or StringInStr($i, ":") Or StringInStr($i, "*") Or StringInStr($i, "|") Or StringInStr($i, "<") Or StringInStr($i, ">") Or StringInStr($i, "'") Or StringInStr($i, '"') Then
		MsgBox(262144 + 16, _Get_langstr(25), _Get_langstr(390) & @CRLF & _Get_langstr(389), 0, $NEW_PROJECT_GUI)
		_Input_Error_FX($new_projectname)
		Return
	EndIf

	$i = GUICtrlRead($new_projectmainfile)
	If StringInStr($i, "\") Or StringInStr($i, "/") Or StringInStr($i, "?") Or StringInStr($i, ":") Or StringInStr($i, "*") Or StringInStr($i, "|") Or StringInStr($i, "<") Or StringInStr($i, ">") Or StringInStr($i, "'") Or StringInStr($i, '"') Then
		MsgBox(262144 + 16, _Get_langstr(25), _Get_langstr(505) & @CRLF & _Get_langstr(389), 0, $NEW_PROJECT_GUI)
		_Input_Error_FX($new_projectmainfile)
		Return
	EndIf

	If GUICtrlRead($new_projectvorlage_radio2) = $GUI_CHECKED Then
		If GUICtrlRead($new_projectusefollowingmainfile_input) = "" Then
			MsgBox(262144 + 16, _Get_langstr(25), _Get_langstr(503), 0, $NEW_PROJECT_GUI)
			_Input_Error_FX($new_projectusefollowingmainfile_input)
			Return
		EndIf
	EndIf

	Local $Noopen = 0
	$state = WinGetState($projectmanager, "")
	If BitAND($state, 2) Then
		$Noopen = 1
	Else
		$Noopen = 0
	EndIf
	If $Noopen = 1 Then
		GUISetState(@SW_ENABLE, $projectmanager)
		GUISetState(@SW_HIDE, $NEW_PROJECT_GUI)
	EndIf
	If $Noopen = 0 Then
		_Write_log(_Get_langstr(33) & "(" & GUICtrlRead($new_projectname) & ")", "000000", "true", "true")
		GUISetState(@SW_ENABLE, $StudioFenster)
		GUISetState(@SW_HIDE, $NEW_PROJECT_GUI)
		GUISetState(@SW_HIDE, $Welcome_GUI)
		GUISetState(@SW_DISABLE, $StudioFenster)
		GUISetState(@SW_SHOW, $StudioFenster)
		;guictrlsetdata($new_projectname,StringReplace(guictrlread($new_projectname)," ","_"))
		_show_Loading(_Get_langstr(22), _Get_langstr(23))
	EndIf
	_Loading_Progress(10)
	If GUICtrlRead($new_projectstammordner_checkbox) = $GUI_UNCHECKED Then
		$res = DirCreate($Projectfolder & "\" & GUICtrlRead($new_projectname))
		If $res = 0 Then MsgBox(16, "Error", "Cannot create project directory! Maybe access denied?!")
	EndIf
	_Loading_Progress(20)

	If GUICtrlRead($new_projectvorlage_radio1) = $GUI_CHECKED Or GUICtrlRead($new_projectvorlage_radio0) = $GUI_CHECKED Then
		If GUICtrlRead($new_projectvorlage_radio1) = $GUI_CHECKED Then
			_FileOperationProgress($new_projectvorlage_combo_ARRAY[_GUICtrlComboBox_GetCurSel($new_projectvorlage_combo) + 1] & "\*.*", $Projectfolder & "\" & GUICtrlRead($new_projectname), 1, $FO_COPY, $FOF_SIMPLEPROGRESS + $FOF_NOCONFIRMATION)
			$templatemainfile = IniRead($new_projectvorlage_combo_ARRAY[_GUICtrlComboBox_GetCurSel($new_projectvorlage_combo) + 1] & "\project.isn", "ISNAUTOITSTUDIO", "mainfile", "")
			FileMove($Projectfolder & "\" & GUICtrlRead($new_projectname) & "\" & $templatemainfile, $Projectfolder & "\" & GUICtrlRead($new_projectname) & "\" & GUICtrlRead($new_projectmainfile), 1)
			;Organize Mainfile
			Dim $aRecords
			_FileReadToArray($Projectfolder & "\" & GUICtrlRead($new_projectname) & "\" & GUICtrlRead($new_projectmainfile), $aRecords)
			If IsArray($aRecords) Then
				For $x = 1 To $aRecords[0]
					;Alte Variablen (für Kompatibilität)
					$aRecords[$x] = StringReplace($aRecords[$x], "$FILENAME", GUICtrlRead($new_projectmainfile))
					$aRecords[$x] = StringReplace($aRecords[$x], "$AUTHOR", GUICtrlRead($new_projectauthor))
					$aRecords[$x] = StringReplace($aRecords[$x], "$PROGRAMMVERSION", $Studioversion)
					$aRecords[$x] = StringReplace($aRecords[$x], "$STR30", _Get_langstr(30))
					$aRecords[$x] = StringReplace($aRecords[$x], "$COMMENT", GUICtrlRead($new_projectcomment))

					;Neue Variablen
					$aRecords[$x] = _Neue_Datei_erstellen_ersetze_Variablen($aRecords[$x], GUICtrlRead($new_projectmainfile), GUICtrlRead($new_projectauthor), GUICtrlRead($new_projectcomment), GUICtrlRead($new_projectname))
				Next
				_FileWriteFromArray($Projectfolder & "\" & GUICtrlRead($new_projectname) & "\" & GUICtrlRead($new_projectmainfile), $aRecords, 1)
			EndIf
		Else
			;Leeres Projekt
			$file = FileOpen($Projectfolder & "\" & GUICtrlRead($new_projectname) & "\" & GUICtrlRead($new_projectmainfile), 1)
			FileClose($file)
		EndIf
		IniWrite($Projectfolder & "\" & GUICtrlRead($new_projectname) & "\project.isn", "ISNAUTOITSTUDIO", "mainfile", GUICtrlRead($new_projectmainfile))
	EndIf

	If GUICtrlRead($new_projectvorlage_radio2) = $GUI_CHECKED Then
		If GUICtrlRead($new_projectstammordner_checkbox) = $GUI_CHECKED Then
			$new_isn_path = StringTrimRight(GUICtrlRead($new_projectusefollowingmainfile_input), StringLen(GUICtrlRead($new_projectusefollowingmainfile_input)) - StringInStr(GUICtrlRead($new_projectusefollowingmainfile_input), "\", 0, -1) + 1) & "\project.isn"
			IniWrite($new_isn_path, "ISNAUTOITSTUDIO", "mainfile", StringTrimLeft(GUICtrlRead($new_projectusefollowingmainfile_input), StringInStr(GUICtrlRead($new_projectusefollowingmainfile_input), "\", 0, -1)))
			$mainfile = StringTrimLeft(GUICtrlRead($new_projectusefollowingmainfile_input), StringInStr(GUICtrlRead($new_projectusefollowingmainfile_input), "\", 0, -1))
			$Default_Name = StringTrimRight($mainfile, StringLen($mainfile) - StringInStr($mainfile, ".", 0, -1) + 1)
			IniWrite($new_isn_path, "ISNAUTOITSTUDIO", "compile_exename", $Default_Name)

		Else
			FileCopy(GUICtrlRead($new_projectusefollowingmainfile_input), $Projectfolder & "\" & GUICtrlRead($new_projectname), 1)
			$new_isn_path = $Projectfolder & "\" & GUICtrlRead($new_projectname) & "\project.isn"
			IniWrite($new_isn_path, "ISNAUTOITSTUDIO", "mainfile", StringTrimLeft(GUICtrlRead($new_projectusefollowingmainfile_input), StringInStr(GUICtrlRead($new_projectusefollowingmainfile_input), "\", 0, -1)))
			$mainfile = StringTrimLeft(GUICtrlRead($new_projectusefollowingmainfile_input), StringInStr(GUICtrlRead($new_projectusefollowingmainfile_input), "\", 0, -1))
			$Default_Name = StringTrimRight($mainfile, StringLen($mainfile) - StringInStr($mainfile, ".", 0, -1) + 1)
			IniWrite($new_isn_path, "ISNAUTOITSTUDIO", "compile_exename", $Default_Name)
		EndIf
	EndIf

	_Loading_Progress(60)
	If GUICtrlRead($new_projectstammordner_checkbox) = $GUI_CHECKED Then
		$new_isn_path = StringTrimRight(GUICtrlRead($new_projectusefollowingmainfile_input), StringLen(GUICtrlRead($new_projectusefollowingmainfile_input)) - StringInStr(GUICtrlRead($new_projectusefollowingmainfile_input), "\", 0, -1) + 1) & "\project.isn"
	Else
		$new_isn_path = $Projectfolder & "\" & GUICtrlRead($new_projectname) & "\project.isn"
	EndIf

	_Write_ISN_Debug_Console("New project created! (" & GUICtrlRead($new_projectname) & ")", 1)
	IniWrite($new_isn_path, "ISNAUTOITSTUDIO", "name", GUICtrlRead($new_projectname))
	IniWrite($new_isn_path, "ISNAUTOITSTUDIO", "date", @MDAY & "." & @MON & "." & @YEAR)
	IniWrite($new_isn_path, "ISNAUTOITSTUDIO", "author", GUICtrlRead($new_projectauthor))
	IniWrite($new_isn_path, "ISNAUTOITSTUDIO", "comment", GUICtrlRead($new_projectcomment))
	IniWrite($new_isn_path, "ISNAUTOITSTUDIO", "studioversion", $Studioversion)
	IniWrite($new_isn_path, "ISNAUTOITSTUDIO", "version", GUICtrlRead($new_projectversion))
	IniWrite($new_isn_path, "ISNAUTOITSTUDIO", "time", "0")
	IniWrite($new_isn_path, "ISNAUTOITSTUDIO", "projectopened", "0")

	If GUICtrlRead($new_project_aenderungsprotokolle_checkbox) = $GUI_CHECKED Then
		IniWrite($new_isn_path, "ISNAUTOITSTUDIO", "use_changelog_manager", "true")
	EndIf

	If $Noopen = 0 Then
		If GUICtrlRead($new_projectstammordner_checkbox) = $GUI_CHECKED Then
			_Load_Project(StringTrimRight(GUICtrlRead($new_projectusefollowingmainfile_input), StringLen(GUICtrlRead($new_projectusefollowingmainfile_input)) - StringInStr(GUICtrlRead($new_projectusefollowingmainfile_input), "\", 0, -1) + 1))
			$History_Projekte_Array = _fuege_in_History_ein($History_Projekte_Array, StringTrimRight(GUICtrlRead($new_projectusefollowingmainfile_input), StringLen(GUICtrlRead($new_projectusefollowingmainfile_input)) - StringInStr(GUICtrlRead($new_projectusefollowingmainfile_input), "\", 0, -1) + 1))
		Else
			_Load_Project($Projectfolder & "\" & GUICtrlRead($new_projectname))
			$History_Projekte_Array = _fuege_in_History_ein($History_Projekte_Array, $Projectfolder & "\" & GUICtrlRead($new_projectname))
		EndIf
	EndIf

	If $Noopen = 0 Then
		If $Templatemode = 0 And $Tempmode = 0 Then _Start_Project_timer()
		_Loading_Progress(100)
		GUISetState(@SW_ENABLE, $StudioFenster)
		_Hide_Loading()
		_GUICtrlTreeView_ExpandOneLevel($hTreeView, $hroot)
		_Check_tabs_for_changes()
		_Earn_trophy(1, 1)
		If $Templatemode = 0 And $Tempmode = 0 Then _run_rule($Section_Trigger1)
	Else
		GUISetState(@SW_ENABLE, $projectmanager)
		_Show_Projectman()
	EndIf
EndFunc   ;==>_Create_New_Project

Func _return_formicon($type)
	If $type = "button" Then Return 20
	If $type = "label" Then Return 21
	If $type = "input" Then Return 22
	If $type = "checkbox" Then Return 23
	If $type = "radio" Then Return 24
	If $type = "image" Then Return 25
	If $type = "slider" Then Return 26
	If $type = "progress" Then Return 27
	If $type = "updown" Then Return 28
	If $type = "icon" Then Return 29
	If $type = "combo" Then Return 30
	If $type = "edit" Then Return 31
	If $type = "group" Then Return 32
	If $type = "listbox" Then Return 33
	If $type = "tab" Then Return 34
	If $type = "date" Then Return 35
	If $type = "calendar" Then Return 36
	If $type = "listview" Then Return 37
	If $type = "softbutton" Then Return 48
	If $type = "ip" Then Return 47
	If $type = "treeview" Then Return 51
	If $type = "menu" Then Return 59

	Return 20 ;crash with button
EndFunc   ;==>_return_formicon

Func _oeffne_Editormodus_Leer()
	_oeffne_Editormodus("")
EndFunc   ;==>_oeffne_Editormodus_Leer

Func _oeffne_Editormodus_mit_Datei_waehlen()
	$var = FileOpenDialog(_Get_langstr(508), "::{20D04FE0-3AEA-1069-A2D8-08002B30309D}", _Get_langstr(58) & " (*.*)", 1 + 2 + 4, "", $Welcome_GUI)
	FileChangeDir(@ScriptDir)
	If $var = "" Then Return
	If @error Then Return
	_oeffne_Editormodus($var)
EndFunc   ;==>_oeffne_Editormodus_mit_Datei_waehlen

Func _oeffne_Editormodus($Datei = "")
	If Not FileExists($Arbeitsverzeichnis & "\Data\Editormode\project.isn") Then
		_Write_ISN_Debug_Console("\\Data\\Editormode\\project.isn not found! I create the file for you now... :)", 2)
		DirCreate($Arbeitsverzeichnis & "\Data\Editormode")
		IniWrite($Arbeitsverzeichnis & "\Data\Editormode\project.isn", "ISNAUTOITSTUDIO", "name", "Editormode")
	EndIf
	_Write_ISN_Debug_Console("Opening Editormode...", 1, 0)
	_show_Loading(_Get_langstr(662), _Get_langstr(23))
	GUISetState(@SW_HIDE, $Welcome_GUI)
;~ 	GUISetState(@SW_LOCK, $studiofenster)
	$Studiomodus = 2 ;EDITOR MODUS
	$Offene_tabs = 0
	$Offenes_Projekt = $Arbeitsverzeichnis & "\Data\Editormode"
;~ 	_Write_in_Config("lastproject", $Offenes_Projekt)
	$Offenes_Projekt_name = "Editormode"
	_Loading_Progress(30)
	_Write_log(_Get_langstr(662), "000000", "true", "true")
	_Aktualisiere_oder_erstelle_Projektbaum("")
	_GUICtrlTVExplorer_Expand($hWndTreeview)
	If $Datei <> "" Then $History_Projekte_Array = _fuege_in_History_ein($History_Projekte_Array, $Datei)
	If $Datei <> "" Then _GUICtrlTVExplorer_Expand($hWndTreeview, $Datei)
	_Lade_Zuletzt_Verwendete_Dateien_aus_projectISN()
	_Check_Buttons(0)
	If $lade_zuletzt_geoeffnete_Dateien = "true" Then _Oeffne_alte_Tabs(IniRead($Arbeitsverzeichnis & "\Data\Editormode\project.isn", "ISNAUTOITSTUDIO", "opened_tabs", ""))
	_Loading_Progress(50)
	If $Datei <> "" And FileExists($Datei) Then Try_to_opten_file($Datei)
	_Loading_Progress(70)
	WinSetTitle($Studiofenster, "", _Get_langstr(1) & " - " & _Get_langstr(661))
;~ 	GUISetState(@SW_UNLOCK, $studiofenster)
	GUISetState(@SW_ENABLE, $StudioFenster)
	_Loading_Progress(100)
	_Hide_Loading()
	_Write_ISN_Debug_Console("done", 1, 1, 1, 1)
	_Show_Warning("confirmeditormode", 308, _Get_langstr(178), _Get_langstr(667), _Get_langstr(7))

EndFunc   ;==>_oeffne_Editormodus

Func _Try_to_Open_project()
	If _GUICtrlListView_GetSelectionMark($Projects_Listview) = -1 Then
		MsgBox(262144 + 16, _Get_langstr(25), _Get_langstr(29), 0, $Welcome_GUI)
		Return
	EndIf

	$PID_Read = IniRead($Projectfolder & "\" & _GUICtrlListView_GetItemText($Projects_Listview, _GUICtrlListView_GetSelectionMark($Projects_Listview), 3) & "\project.isn", "ISNAUTOITSTUDIO", "opened", "")
	If ProcessExists($PID_Read) Then
		MsgBox(262144 + 16, _Get_langstr(25), _Get_langstr(331), 0, $Welcome_GUI)
		If $Autoload = "true" Then GUISetState(@SW_SHOW, $Welcome_GUI)
		Return
	EndIf
	_show_Loading(_Get_langstr(34), _Get_langstr(23))
	GUISetState(@SW_HIDE, $Welcome_GUI)

	_Loading_Progress(50)

	_Write_log(_Get_langstr(34) & "(" & _GUICtrlListView_GetItemText($Projects_Listview, _GUICtrlListView_GetSelectionMark($Projects_Listview), 0) & ")", "000000", "true", "true")
	GUISetState(@SW_LOCK, $studiofenster)
	GUICtrlSetState($HD_Logo, $GUI_HIDE)
	_Loading_Progress(90)
	_Load_Project($Projectfolder & "\" & _GUICtrlListView_GetItemText($Projects_Listview, _GUICtrlListView_GetSelectionMark($Projects_Listview), 3))
;~ 	_GUICtrlTreeView_ExpandOneLevel($hTreeView, $hroot)
	_Check_tabs_for_changes()
	If $Templatemode = 0 And $Tempmode = 0 Then _Write_in_Config("lastproject", $Projectfolder & "\" & _GUICtrlListView_GetItemText($Projects_Listview, _GUICtrlListView_GetSelectionMark($Projects_Listview), 3))
	If $Templatemode = 0 And $Tempmode = 0 Then $History_Projekte_Array = _fuege_in_History_ein($History_Projekte_Array, $Projectfolder & "\" & _GUICtrlListView_GetItemText($Projects_Listview, _GUICtrlListView_GetSelectionMark($Projects_Listview), 3))
	;_Check_Buttons()
	If $Templatemode = 0 And $Tempmode = 0 Then _Start_Project_timer()
	$Studiomodus = 1
	IniWrite($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "lastopendate", @MDAY & "." & @MON & "." & @YEAR & " " & @HOUR & ":" & @MIN)
	IniWrite($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "opened", @AutoItPID)
	If $Templatemode = 0 And $Tempmode = 0 Then
		If $enablebackup = "true" Then
			AdlibUnRegister("_Backup_Files")
			AdlibRegister("_Backup_Files", $backuptime * 60000)
		Else
			AdlibUnRegister("_Backup_Files")
		EndIf
	 EndIf


	 if $Automatische_Speicherung_Modus = "1" Then
		 AdlibUnRegister("_ISN_Automatische_Speicherung_starten")
		 AdlibRegister("_ISN_Automatische_Speicherung_starten",_TimeToTicks ($Automatische_Speicherung_Timer_Stunden, $Automatische_Speicherung_Timer_Minuten, $Automatische_Speicherung_Timer_Sekunden))
	 Else
		 AdlibUnRegister("_ISN_Automatische_Speicherung_Sekundenevent")
		 AdlibRegister("_ISN_Automatische_Speicherung_Sekundenevent",1000)
	 EndIf



	_Check_Buttons(0)
	GUISetState(@SW_UNLOCK, $studiofenster)
	GUISetState(@SW_ENABLE, $StudioFenster)
	_Write_ISN_Debug_Console("Project loaded (" & $Offenes_Projekt_name & ") from " & StringReplace($Offenes_Projekt, "\", "\\"), 1)
	_Loading_Progress(100)
	_Hide_Loading()
	_run_rule($Section_Trigger1)
EndFunc   ;==>_Try_to_Open_project

Func _Try_to_delete_project()
	If _GUICtrlListView_GetSelectionMark($Projects_Listview_projectman) = -1 Then
		MsgBox(262144 + 16, _Get_langstr(25), _Get_langstr(170), 0, $projectmanager)
		Return
	EndIf
	$folder = $Projectfolder & "\" & _GUICtrlListView_GetItemText($Projects_Listview_projectman, _GUICtrlListView_GetSelectionMark($Projects_Listview_projectman), 3)
	$answer = MsgBox(262144 + 32 + 4, _Get_langstr(48), _Get_langstr(169) & @CRLF & @CRLF & _Get_langstr(5) & " " & _
			IniRead($folder & "\project.isn", "ISNAUTOITSTUDIO", "name", "#ERROR#") & @CRLF & _
			_Get_langstr(18) & " " & IniRead($folder & "\project.isn", "ISNAUTOITSTUDIO", "author", "#ERROR#") & @CRLF & _
			_Get_langstr(171) & " " & IniRead($folder & "\project.isn", "ISNAUTOITSTUDIO", "date", "#ERROR#") & @CRLF & _
			_Get_langstr(17) & " " & IniRead($folder & "\project.isn", "ISNAUTOITSTUDIO", "comment", "#ERROR#") & @CRLF & @CRLF & _
			_Get_langstr(172), 0, $projectmanager)

	If $answer = 6 Then
		DirRemove($folder, 1)
		_Show_Projectman()
	EndIf
EndFunc   ;==>_Try_to_delete_project

Func _Try_to_delete_project_at_welcomepage()
	If _GUICtrlListView_GetSelectionMark($Projects_Listview) = -1 Then
		MsgBox(262144 + 16, _Get_langstr(25), _Get_langstr(170), 0, $Welcome_GUI)
		Return
	EndIf
	$folder = $Projectfolder & "\" & _GUICtrlListView_GetItemText($Projects_Listview, _GUICtrlListView_GetSelectionMark($Projects_Listview), 3)
	$answer = MsgBox(262144 + 32 + 4, _Get_langstr(48), _Get_langstr(169) & @CRLF & @CRLF & _Get_langstr(5) & " " & _
			IniRead($folder & "\project.isn", "ISNAUTOITSTUDIO", "name", "#ERROR#") & @CRLF & _
			_Get_langstr(18) & " " & IniRead($folder & "\project.isn", "ISNAUTOITSTUDIO", "author", "#ERROR#") & @CRLF & _
			_Get_langstr(171) & " " & IniRead($folder & "\project.isn", "ISNAUTOITSTUDIO", "date", "#ERROR#") & @CRLF & _
			_Get_langstr(17) & " " & IniRead($folder & "\project.isn", "ISNAUTOITSTUDIO", "comment", "#ERROR#") & @CRLF & @CRLF & _
			_Get_langstr(172), 0, $Welcome_GUI)

	If $answer = 6 Then
		DirRemove($folder, 1)
		_Load_Projectlist()
	EndIf
EndFunc   ;==>_Try_to_delete_project_at_welcomepage

;===============================================================================
;
; Function Name:   _RunReadStd()
;
; Description::    Run a specified command, and return the Exitcode, StdOut text and
;                  StdErr text from from it. StdOut and StdErr are @tab delimited,
;                  with blank lines removed.
;
; Parameter(s):    $doscmd: the actual command to run, same as used with Run command
;                  $timeoutSeconds: maximum execution time in seconds, optional, default: 0 (wait forever),
;                  $workingdir: directory in which to execute $doscmd, optional, default: @ScriptDir
;                  $flag: show/hide flag, optional, default: @SW_HIDE
;                  $sDelim: stdOut and stdErr output deliminter, optional, default: @TAB
;                  $nRetVal: return single item from function instead of array, optional, default: -1 (return array)
;
; Requirement(s):  AutoIt 3.2.10.0
;
; Return Value(s): An array with three values, Exit Code, StdOut and StdErr
;
; Author(s):       lod3n
;                  (Thanks to mrRevoked for delimiter choice and non array return selection)
;                  (Thanks to mHZ for _ProcessOpenHandle() and _ProcessGetExitCode())
;                  (MetaThanks to DaveF for posting these DllCalls in Support Forum)
;                  (MetaThanks to JPM for including CloseHandle as needed)
;
;===============================================================================

Func _RunReadStd($doscmd, $timeoutSeconds = 0, $workingdir = @ScriptDir, $flag = @SW_HIDE, $nRetVal = -1, $sDelim = @TAB)
	Local $aReturn, $i_Pid, $h_Process, $i_ExitCode, $sStdOut, $sStdErr, $runTimer
	Dim $aReturn[3]

	; run process with StdErr and StdOut flags
	$runTimer = TimerInit()
	$i_Pid = Run($doscmd, $workingdir, $flag, 6) ; 6 = $STDERR_CHILD+$STDOUT_CHILD
	$RUNNING_SCRIPT = $i_Pid
	; Get process handle
	Sleep(100) ; or DllCall may fail - experimental
	$h_Process = DllCall('kernel32.dll', 'ptr', 'OpenProcess', 'int', 0x400, 'int', 0, 'int', $i_Pid)

	Global $iProcessID = $i_Pid

	$hPDHQuery = _PDH_GetNewQueryHandle()

	; Get the localized name for "Process"
	$sProcessLocal = _PDH_GetCounterNameByIndex(230, "")

	Global $poCounter = _PDH_ProcessObjectCreate($sProcess, $iProcessID)
	_PDH_ProcessObjectAddCounters($poCounter, "6;180") ; "% Processor Time;Working Set"
	_PDH_ProcessObjectCollectQueryData($poCounter)

	; create tab delimited string containing StdOut text from process
	$aReturn[1] = ""
	$sStdOut = ""
	While 1
		_Refresh_Debug($i_Pid)
		Sleep(500)
		$line = StdoutRead($i_Pid)
		If @error Then ExitLoop
		$sStdOut &= $line
		_Write_debug($line)
	WEnd

	; fetch exit code and close process handle
	If IsArray($h_Process) Then
		Sleep(100) ; or DllCall may fail - experimental
		$i_ExitCode = DllCall('kernel32.dll', 'ptr', 'GetExitCodeProcess', 'ptr', $h_Process[0], 'int*', 0)
		If IsArray($i_ExitCode) Then
			$aReturn[0] = $i_ExitCode[2]
		Else
			$aReturn[0] = -1
		EndIf
		Sleep(100) ; or DllCall may fail - experimental
		DllCall('kernel32.dll', 'ptr', 'CloseHandle', 'ptr', $h_Process[0])
	Else
		$aReturn[0] = -2
	EndIf

	$aReturn[0] = $sStdOut
	$aReturn[1] = $i_ExitCode[2]
	$aReturn[2] = $i_Pid
	Return $aReturn

	; return single item if correctly specified with with $nRetVal
	If $nRetVal <> -1 And $nRetVal >= 0 And $nRetVal <= 2 Then Return $aReturn[$nRetVal]

	; return array with exit code, stdout, and stderr
	Return $aReturn
EndFunc   ;==>_RunReadStd

Func _Disable_edit()
	If _GUICtrlTab_GetItemCount($htab) = 0 Then Return
	WinSetState($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)], "", @SW_DISABLE)
EndFunc   ;==>_Disable_edit

Func _ENABLE_edit()
	If _GUICtrlTab_GetItemCount($htab) = 0 Then Return
	WinSetState($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)], "", @SW_ENABLE)
EndFunc   ;==>_ENABLE_edit

Func _Try_to_Exit()
	If $closeaction = "close" Then AdlibRegister("_exit", 0)
	If $closeaction = "closeproject" Then _Close_Project()
	If $closeaction = "minimize" Then WinSetState($Studiofenster, "", @SW_MINIMIZE)
EndFunc   ;==>_Try_to_Exit

Func _exit()
	AdlibUnRegister("_exit")

	If $Can_open_new_tab = 0 Then Return
	_Write_ISN_Debug_Console("Shutting down ISN AutoIt Studio...", 2)
	If $AskExit = "true" Then
		$i = MsgBox(262144 + 32 + 4, _Get_langstr(48), _Get_langstr(188), 0, $Studiofenster)
		If $i = 7 Then Return
	EndIf
	FileDelete($Arbeitsverzeichnis & "\data\cache\AutoIt_Studio_Print.txt")

	GUISetState(@SW_HIDE, $Welcome_GUI)
	GUISetState(@SW_HIDE, $StudioFenster)
	WinMove($StudioFenster, "", 900000, 900000)


	If _GUICtrlTab_GetItemCount($htab) > 0 And _GUICtrlTab_GetCurFocus($htab) <> -1 Then _MailSlotWrite(String("\\.\mailslot\ISNPLUGIN_" & WinGetProcess($Plugin_Handle[_GUICtrlTab_GetCurFocus($htab)])), $Mailslot_Pfad & "|resize") ;Plugin versteckt sich auch beim herunterfahren
	If $SKRIPT_LAUEFT = 1 Then _STOPSCRIPT()
	$Benoetigte_Zeit = 0
	If $Offenes_Projekt <> "" Then
		If $Templatemode = 0 And $Tempmode = 0 Then $Benoetigte_Zeit = _stop_Project_timer()
		IniWrite($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "opened", "")

		;Speichere geöffnete Tabs in die project.Isn
		$Pfade = ""
		If _GUICtrlTab_GetItemCount($htab) > 0 Then
			For $x = 0 To _GUICtrlTab_GetItemCount($htab) - 1
				$Pfade = $Pfade & $Datei_pfad[$x] & "|"
			Next
		EndIf
		IniWrite($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "opened_tabs", $Pfade)

		_Write_ISN_Debug_Console("|--> Closing Type 3 Plugins...", 1)
		_Laufende_Type3_Plugins_Beenden()
		_Write_ISN_Debug_Console("|--> Type 3 Plugins closed!", 1)

		_run_rule($Section_Trigger6)
		_Zeige_neuer_changelog_eintrag_GUI()
	EndIf
	If _GUICtrlTab_GetItemCount($htab) > 0 And _GUICtrlTab_GetCurFocus($htab) <> -1 Then WinMove($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)], "", 900000, 900000)
	_Write_ISN_Debug_Console("|--> Closing all tabs...(" & $Offene_tabs & " tab(s) loaded)", 1)
	_Close_All_Tabs()
	_Write_ISN_Debug_Console("|--> All tabs closed!", 1)
	_Write_ISN_Debug_Console("|--> Destroy Chatboxes...", 1)
	_ChatBoxDestroy($Programm_log)
	_ChatBoxDestroy($Credits_Srollbox)
	If $Tempmode = 1 Then DirRemove($Offenes_Projekt, 1)
	;Clean up
	DllClose($dll)
	FileDelete($Cachefile)
	FileDelete($Backupcache)
	DirRemove($Arbeitsverzeichnis & "\Data\Cache\tempcompile", 1)
	_WinAPI_UnhookWindowsHookEx($hHook)
	DllCallbackFree($hStub_KeyProc)
	If $runafter <> "" Then
		_Write_ISN_Debug_Console("|--> Run before exit...!", 1)
		_Run_Beforexit()
	EndIf
	_GUICtrlListView_UnRegisterSortCallBack($changelogmanager_listview)
	_PDH_UnInit()
	_USkin_Exit()
	OnAutoItExit_modern()
	OnAutoItExit()
	_GUICtrlTVExplorer_DestroyAll()
	_Kille_Laufende_Type3_Plugins()
	_Write_ISN_Debug_Console("|--> ISN AutoIt Studio shutdown complete! Bye... ;)", 1)
	If $SHOW_DEBUG_CONSOLE = "true" Then MsgBox(0, "", "Press ok to exit", 0, $console_GUI)
	_ChatBoxDestroy($console_chatbox)
	Exit
EndFunc   ;==>_exit

Func _Close_Project($Changelogeintrag_anzeigen = "true")
	If $Can_open_new_tab = 0 Then Return
	If $SKRIPT_LAUEFT = 1 Then _STOPSCRIPT()
	IniWrite($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "opened", "")
	$Benoetigte_Zeit = 0
	If $Templatemode = 0 And $Tempmode = 0 And $Studiomodus = 1 Then $Benoetigte_Zeit = _stop_Project_timer()
	_Write_ISN_Debug_Console("Closing project (" & $Offenes_Projekt_name & ")...", 1)
	_Scripttree_Hide_comment()
	_Clear_Debuglog()
	_Debug_clear_redo()
	GUISetState(@SW_HIDE, $msgboxcreator)
	GUISetState(@SW_HIDE, $fFind1)
	GUISetState(@SW_HIDE, $colour_picker)
	GUISetState(@SW_HIDE, $bitwise_operations_GUI)
	_Write_in_Config("lastproject", "")
	;Speichere geöffnete Tabs in die project.IsNumber
	$Pfade = ""
	If _GUICtrlTab_GetItemCount($htab) > 0 Then
		For $x = 0 To _GUICtrlTab_GetItemCount($htab) - 1
			$Pfade = $Pfade & $Datei_pfad[$x] & "|"
		Next
	EndIf
	IniWrite($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "opened_tabs", $Pfade)

	_GUICtrlTreeView_DeleteAll($hWndTreeview)
	_GUICtrlTreeView_DeleteAll($hWndTreeview2)
	_Close_All_Tabs()
	WinSetTitle($Studiofenster, "", _Get_langstr(1))
	AdlibUnRegister("_Backup_Files")
	AdlibUnRegister("_ISN_Automatische_Speicherung_Sekundenevent")
	FileDelete($Backupcache) ;Lösche Backupcache
	_Reset_Search()
	If $Studiomodus = 1 Then
		_Write_log(_Get_langstr(311) & "(" & $Offenes_Projekt_name & ")", "000000", "true", "true")
	Else
		_Write_log(_Get_langstr(665) & "...", "000000", "true", "true")
	EndIf
	_Write_log("", "000000", "true", "true")
	If $Tempmode = 1 Then DirRemove($Offenes_Projekt, 1) ;Clean up tempprojects
	_run_rule($Section_Trigger6)
	If $Changelogeintrag_anzeigen = "true" Then _Zeige_neuer_changelog_eintrag_GUI()
    _GUICtrlTreeView_DeleteAll($hWndTreeview)
	_GUICtrlTreeView_DeleteAll($hWndTreeview2)
	_Clear_Projecttree_Rebuild()
	_Clear_Scripttree_Rebuild()
	$Offenes_Projekt = ""
	$Offenes_Projekt_name = ""
	$Offene_tabs = 0
	$Tempmode = 0
	$Studiomodus = 1
	_GUICtrlStatusBar_SetText_ISN($Status_bar, "")
	_Load_Projectlist()
	GUISetState(@SW_DISABLE, $StudioFenster)
	If $Templatemode = 0 Then
		GUISetState(@SW_SHOW, $Welcome_GUI)
	Else
		GUISetState(@SW_SHOW, $projectmanager)
	EndIf
	$Templatemode = 0
EndFunc   ;==>_Close_Project

func _GUICtrlStatusBar_SetText_ISN($handle="",$text="")
if $handle = "" then return
_GUICtrlStatusBar_SetText($handle, $text)
EndFunc

Func _Load_Projectlist()
	_Read_Last_4_Projects()
	_GUICtrlListView_DeleteAllItems(GUICtrlGetHandle($Projects_Listview))
	ScanforProjects($Projectfolder)

EndFunc   ;==>_Load_Projectlist

Func ScanforProjects($SourceFolder)
	Local $Search
	Local $file
	Local $FileAttributes
	Local $FullFilePath
	$Count = 0
	$Search = FileFindFirstFile($SourceFolder & "\*.*")
	_GUICtrlListView_BeginUpdate($Projects_Listview)

	While 1
		If $Search = -1 Then
			ExitLoop
		EndIf
		$file = FileFindNextFile($Search)
		If @error Then ExitLoop
		$FullFilePath = $SourceFolder & "\" & $file
		$FileAttributes = FileGetAttrib($FullFilePath)
		If StringInStr($FileAttributes, "D") Then
			If FileExists($FullFilePath & "\project.isn") Then
				$tmp = IniReadSection($FullFilePath & "\project.isn", "ISNAUTOITSTUDIO")
				If Not @error Then
					$Count = $Count + 1
					_GUICtrlListView_AddItem($Projects_Listview, IniRead($FullFilePath & "\project.isn", "ISNAUTOITSTUDIO", "name", "#ERROR#"), 39)
					_GUICtrlListView_AddSubItem($Projects_Listview, _GUICtrlListView_GetItemCount($Projects_Listview) - 1, IniRead($FullFilePath & "\project.isn", "ISNAUTOITSTUDIO", "author", ""), 1)
					_GUICtrlListView_AddSubItem($Projects_Listview, _GUICtrlListView_GetItemCount($Projects_Listview) - 1, IniRead($FullFilePath & "\project.isn", "ISNAUTOITSTUDIO", "comment", ""), 2)
					$folder = StringTrimLeft($FullFilePath, StringInStr($FullFilePath, "\", 0, -1))
					_GUICtrlListView_AddSubItem($Projects_Listview, _GUICtrlListView_GetItemCount($Projects_Listview) - 1, $folder, 3)
				EndIf
			EndIf
		EndIf
	WEnd
	$Descending = False
	_GUICtrlListView_SimpleSort($Projects_Listview, $Descending, 0)
	_GUICtrlListView_SetItemSelected($Projects_Listview, -1, False, False)
	_GUICtrlListView_EndUpdate($Projects_Listview)
	If $Count > 4 Then _Earn_trophy(5, 1)
EndFunc   ;==>ScanforProjects

Func _Clear_Projecttree_Rebuild()
	$Projektbaum_Treeview_Expanded_Array = $Projektbaum_Treeview_Expanded_Array_empty
EndFunc   ;==>_Clear_Projecttree_Rebuild

Func _Clear_Scripttree_Rebuild()
	$Scripttree_Treeview_Expanded_Array = $Projektbaum_Treeview_Expanded_Array_empty
EndFunc   ;==>_Clear_Scripttree_Rebuild

; #FUNCTION# ;===============================================================================
;
; Name...........: _Speichere_TVExplorer
; Description ...: Speichert alle geöffneten (expanded) Elemente des Projektbaumen im $Projektbaum_Treeview_Expanded_Array Array
; Syntax.........: _Speichere_TVExplorer($hTreeView)
; Parameters ....: $hTreeView			- Handle zum Treeview
; Return values .: None
; Author ........: ISI360
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: http://www.isnetwork.at
; Example .......: No
;
; ;==========================================================================================

Func _Speichere_TVExplorer($hTreeView)
	_Clear_Projecttree_Rebuild()
	$found = 0
	$hItem = _GUICtrlTreeView_GetFirstItem($hTreeView)
	If _GUICtrlTreeView_GetExpanded($hTreeView, $hItem) = True Then
		$Projektbaum_Treeview_Expanded_Array[$found] = _GUICtrlTreeView_GetText($hTreeView, $hItem)
		$found = $found + 1
	EndIf
	While True
		$hItem = _GUICtrlTreeView_GetNext($hTreeView, $hItem)
		If $hItem = 0 Then ExitLoop
		If _GUICtrlTreeView_GetExpanded($hTreeView, $hItem) = True Then
			$Projektbaum_Treeview_Expanded_Array[$found] = _GUICtrlTreeView_GetText($hTreeView, $hItem)
			$found = $found + 1
		EndIf
	WEnd
EndFunc   ;==>_Speichere_TVExplorer

; #FUNCTION# ;===============================================================================
;
; Name...........:  _Lade_TVExplorer
; Description ...: Lädt alle geöffneten (expanded) Elemente des Projektbaumen aus dem $Projektbaum_Treeview_Expanded_Array Array
; Syntax.........:  _Lade_TVExplorer($hTreeView)
; Parameters ....: $hTreeView			- Handle zum Treeview
; Return values .: None
; Author ........: ISI360
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: http://www.isnetwork.at
; Example .......: No
;
; ;==========================================================================================

Func _Lade_TVExplorer($hTreeView)
	$hItem = _GUICtrlTreeView_GetFirstItem($hTreeView)
	$res = _ArraySearch($Projektbaum_Treeview_Expanded_Array, _GUICtrlTreeView_GetText($hTreeView, $hItem))
	If $res <> -1 Then
		_GUICtrlTreeView_ExpandOneLevel($hTreeView, $hItem)
	EndIf
	While True
		$hItem = _GUICtrlTreeView_GetNext($hTreeView, $hItem)
		If $hItem = 0 Then ExitLoop
		$res = _ArraySearch($Projektbaum_Treeview_Expanded_Array, _GUICtrlTreeView_GetText($hTreeView, $hItem))
		If $res <> -1 Then
			If StringInStr($Offenes_Projekt, _GUICtrlTreeView_GetText($hTreeView, $hItem)) And $AutoIt_Projekte_in_Projektbaum_anzeigen = "true" And StringInStr(_GUICtrlTreeView_GetTree($hTreeView, $hItem), _Get_langstr(881)) Then ContinueLoop
			_GUICtrlTreeView_ExpandOneLevel($hTreeView, $hItem)
		EndIf
	WEnd
EndFunc   ;==>_Lade_TVExplorer

; #FUNCTION# ;===============================================================================
;
; Name...........:  _Update_Treeview
; Description ...: Aktualisiert den Projektbaum
; Syntax.........: _Update_Treeview()
; Parameters ....: None
; Return values .: None
; Author ........: ISI360
; Modified.......:
; Remarks .......: Speichert automatisch geöffnete Elemente und stellt diese nach dem Aktualisieren wieder her
; Related .......:
; Link ..........: http://www.isnetwork.at
; Example .......: No
;
; ;==========================================================================================

Func _Update_Treeview()
	AdlibUnRegister("_Update_Treeview")
	If $Offenes_Projekt = "" Then Return
	_GUICtrlTreeView_BeginUpdate($hTreeview)
	_Speichere_TVExplorer($hTreeview) ;Speichere geöffnete Elemente
;~ 		 $Path = _GUICtrlTVExplorer_GetSelected($hTreeView)
;~             _GUICtrlTVExplorer_AttachFolder($hTreeView)
;~             _GUICtrlTVExplorer_Expand($hTreeView, $Path, 0)
	_GUICtrlTVExplorer_AttachFolder($hWndTreeview) ;Lade Treeview neu
	_GUICtrlTVExplorer_Expand($hTreeView)
	_Lade_TVExplorer($hTreeview) ;Geöffnete Elemente wiederherstellen
	_GUICtrlTreeView_EndUpdate($hTreeview)
EndFunc   ;==>_Update_Treeview

; #FUNCTION# ;===============================================================================
;
; Name...........: _Aktualisiere_oder_erstelle_Projektbaum
; Description ...: Erstellt bzw.
; Syntax.........: _Aktualisiere_oder_erstelle_Projektbaum($Rootfolder)
; Parameters ....: $Rootfolder			- Ordnerpfad der im Projektbaum angezeigt werden soll
; Return values .: None
; Author ........: ISI360
; Modified.......:
; Remarks .......: Wird jedesmal aufgerufen wenn ein Projekt geöffnet wird. Löscht das alte Treeview Control und erzeugt ein neues mit dem angegebenen Rootpfad
;					Erstellt auch über die Funktion "" das Kontextmenü für den Treeview
; Related .......:
; Link ..........: http://www.isnetwork.at
; Example .......: No
;
; ;==========================================================================================
Func _Aktualisiere_oder_erstelle_Projektbaum($Rootfolder)
	$alte_position = ControlGetPos($Studiofenster, "", $hTreeview) ;hole zuerst die positionen des alten Controls
	_GUICtrlTVExplorer_Destroy($hWndTreeview) ;Zerstöre Inhalt der TVExplorer UDF
	Global $tvData[1][31] = [[0, _GUIImageList_Create(_WinAPI_GetSystemMetrics(49), _WinAPI_GetSystemMetrics(50), 5, 1), GUICreate('')]] ;Deklariere neu
	Global $tvIcon[101][3] = [[0]] ;Deklariere neu
	GUISwitch($studiofenster) ;wechsle zum Studiofenster
	_GUICtrlTVExplorer_Create($Rootfolder, $alte_position[0], $alte_position[1], $alte_position[2], $alte_position[3], -1, $WS_EX_CLIENTEDGE, $TV_FLAG_SHOWFILESEXTENSION + $TV_FLAG_SHOWFILES + $TV_FLAG_SHOWFOLDERICON + $TV_FLAG_SHOWFILEICON + $TV_FLAG_SHOWLIKEEXPLORER, "_Projecttree_event", '', 1) ;Erstelle neuen Treeview an der Position des alten
	Global $hWndTreeview = GUICtrlGetHandle($hTreeview) ;Erneuere Handle
	GUICtrlSetFont($hTreeview, $treefont_size, 400, 0, $treefont_font) ;Schrift
	GUICtrlSetColor($hTreeview, $treefont_colour) ;Farbe
	GUICtrlSetState($hTreeview, $GUI_DROPACCEPTED) ;aktiviere Drag´nDrop
;~ _Erstelle_Kontextmenue_fuer_Projektbaum()

;~ _GUICtrlTVExplorer_SetExplorerStyle($hWndTreeview) ;aktiviere modernen Explorer Style ;)
EndFunc   ;==>_Aktualisiere_oder_erstelle_Projektbaum

Func _Load_Project($Foldername)
	FileDelete($Backupcache)
	_GUICtrlTab_DeleteAllItems($htab)
	$Offene_tabs = 0
	GUICtrlSetState($hTreeview, $GUI_ENABLE)
	GUICtrlSetState($hTreeview2, $GUI_ENABLE)
	$Offenes_Projekt = $Foldername
	$Offenes_Projekt_name = IniRead($Foldername & "\project.isn", "ISNAUTOITSTUDIO", "name", "")
	$Skriptbaum_Filter_Array = StringSplit(IniRead($Foldername & "\project.isn", "ISNAUTOITSTUDIO", "scripttreefilter", ""), "|", 2)
	_Aktualisiere_oder_erstelle_Projektbaum($Offenes_Projekt)
	_GUICtrlTVExplorer_Expand($hWndTreeview)
	_Lade_Zuletzt_Verwendete_Dateien_aus_projectISN()
	WinSetTitle($Studiofenster, "", IniRead($Foldername & "\project.isn", "ISNAUTOITSTUDIO", "name", "") & " - " & _Get_langstr(1))
	$oldoppened = IniRead($Foldername & "\project.isn", "ISNAUTOITSTUDIO", "projectopened", "0")
	$oldoppened = $oldoppened + 1
	IniWrite($Foldername & "\project.isn", "ISNAUTOITSTUDIO", "projectopened", $oldoppened)
	If $lade_zuletzt_geoeffnete_Dateien = "true" Then _Oeffne_alte_Tabs(IniRead($Foldername & "\project.isn", "ISNAUTOITSTUDIO", "opened_tabs", ""))
	If $autoloadmainfile = "true" Then Try_to_opten_file($Offenes_Projekt & "\" & IniRead($Foldername & "\project.isn", "ISNAUTOITSTUDIO", "mainfile", "#ERROR#"))
EndFunc   ;==>_Load_Project

Func _CheckCtrlDblClick($GUI, $CTRL)
	Local $CtrlPos = ControlGetPos($GUI, '', $CTRL)
	If($pos[0] >= $CtrlPos[0] And $pos[0] <= $CtrlPos[0] + $CtrlPos[2]) And _
			($pos[1] >= $CtrlPos[1] + 20 And $pos[1] <= $CtrlPos[1] + 20 + $CtrlPos[3]) Then
		$n += 1
		$MousePos = True
		If $n = 2 And(TimerDiff($start) < $clickspeed) Then
			Return True
		Else
			$start = TimerInit()
			$n = 1
		EndIf
	EndIf
EndFunc   ;==>_CheckCtrlDblClick

Func _CheckCtrlClick($GUI, $CTRL)
	Local $CtrlPos = ControlGetPos($GUI, '', $CTRL)
	If($pos[0] >= $CtrlPos[0] And $pos[0] <= $CtrlPos[0] + $CtrlPos[2]) And _
			($pos[1] >= $CtrlPos[1] + 20 And $pos[1] <= $CtrlPos[1] + 20 + $CtrlPos[3]) Then
		$n += 1
		$MousePos = True
		Return True
	EndIf
EndFunc   ;==>_CheckCtrlClick

Func _PRIMARYdown()
	$pos = MouseGetPos()
	Select
		Case _CheckCtrlDblClick($StudioFenster, $Debug_log)
			_trytofinderror()
		Case Else
			$MousePos = False
	  EndSelect

   ;Drag´n Drop für Tabitems
   if IsDeclared("Studiofenster") then
    $aCInfo = GUIGetCursorInfo($Studiofenster)
   if IsArray($aCInfo) and IsDeclared("htab") Then
	  switch $aCInfo[4]

		 case $htab
			if _GUICtrlTab_GetItemCount ($htab) > 1 Then ;Nur wenn mehr als 1 Tab aktiv ist
			   $Tab_Item0Rect = _GUICtrlTab_GetItemRect ( $htab, 0)
			   $Tab_Control_Pos = ControlGetPos($Studiofenster,"",$htab)
			   Opt("MouseCoordMode", 2) ;1=absolute, 0=relative, 2=client
			   $pos = MouseGetPos()
			   Opt("MouseCoordMode", 1) ;1=absolute, 0=relative, 2=client
			   if IsArray($Tab_Control_Pos) then
			   if $pos[1] < $Tab_Control_Pos[1]+$Tab_Item0Rect[3] then ;Nur wenn sich maus auf den "Tabitems" befindet
				  $getroffenes_item = _GUICtrlTab_HitTest ($htab, $pos[0]-$Tab_Control_Pos[0], $pos[1]-$Tab_Control_Pos[1])
				  if IsArray($getroffenes_item) Then
					 if $getroffenes_item[0] <> -1 Then
						;Es wurde ein Tabitem getroffen
						sleep(500) ;Warte ob Mausteste nach 500ms immer noch gedrückt ist
						if _IsPressed("01", $user32) Then
						   ;Drag´n Drop Tabitem


   guiswitch($Studiofenster)
    $Tab_Dragndrop_Poslabel = GUICtrlCreateicon($smallIconsdll,1564, 0, 0, 15, 15)
    GUICtrlSetState(-1, $GUI_HIDE)

					 Opt("MouseCoordMode", 2) ;1=absolute, 0=relative, 2=client
					 while _IsPressed("01", $user32)
						sleep(50)
						$pos = MouseGetPos()
						$Maus_ueber_Item = _GUICtrlTab_HitTest ($htab, $pos[0]-$Tab_Control_Pos[0], $pos[1]-$Tab_Control_Pos[1])

						if $Maus_ueber_Item[0] = -1 then
						   GUICtrlSetState($Tab_Dragndrop_Poslabel, $GUI_HIDE)
						   ContinueLoop
						EndIf

						if $Maus_ueber_Item[0] = $getroffenes_item[0] then
						   GUICtrlSetState($Tab_Dragndrop_Poslabel, $GUI_HIDE)
						   ContinueLoop
						EndIf

						$Tab_Dragndrop_Itemrect = _GUICtrlTab_GetItemRect ($htab, $Maus_ueber_Item[0])
						if $Maus_ueber_Item[0] > $getroffenes_item[0] Then
						   ;Maus ist rechts neben den aktuellen Item
						   GUICtrlSetImage($Tab_Dragndrop_Poslabel,$smallIconsdll,1566)
						   GUICtrlSetPos($Tab_Dragndrop_Poslabel, ($Tab_Control_Pos[0]+$Tab_Dragndrop_Itemrect[2])-19, $Tab_Control_Pos[1]+5)

						Else
						   ;Maus ist links neben den aktuellen Item
						   GUICtrlSetImage($Tab_Dragndrop_Poslabel,$smallIconsdll,1563)
						   GUICtrlSetPos($Tab_Dragndrop_Poslabel, ($Tab_Control_Pos[0]+$Tab_Dragndrop_Itemrect[0])+1, $Tab_Control_Pos[1]+5)

						endif
						$iFlags = BitOR($SWP_SHOWWINDOW, $SWP_NOSIZE, $SWP_NOMOVE)
						_WinAPI_SetWindowPos(GUICtrlGetHandle($Tab_Dragndrop_Poslabel), $HWND_TOP, 0, 0, 0, 0, $iFlags)
					 WEnd
					 Opt("MouseCoordMode", 1) ;1=absolute, 0=relative, 2=client
					 GUICtrlDelete($Tab_Dragndrop_Poslabel)
					 _Tabseiten_austauschen($getroffenes_item[0],$Maus_ueber_Item[0])
						endif
					 endif
				  endif
			   endif
			   endif

			endif


	  EndSwitch
   EndIf
   EndIf



EndFunc   ;==>_PRIMARYdown


func _Tabseiten_austauschen($Quellindex = -1, $Zielindex = -1)
if $Quellindex = -1 then Return
if $Zielindex = -1 then Return

$Quelle_State = _GUICtrlTab_GetItem ( $htab, $Quellindex)
$Ziel_State = _GUICtrlTab_GetItem ($htab, $Zielindex)

if not IsArray($Quelle_State) then Return
if not IsArray($Ziel_State) then Return

;Tausche Arrayeinträge
_ArraySwap ($SCE_EDITOR,$Quellindex,$Zielindex)
_ArraySwap ($Plugin_Handle,$Quellindex,$Zielindex)
_ArraySwap ($FILE_CACHE,$Quellindex,$Zielindex)
_ArraySwap ($Datei_pfad,$Quellindex,$Zielindex)


;Tabs neu konfigurieren
_GUICtrlTab_SetItemText ( $htab, $Quellindex, $Ziel_State[1])
_GUICtrlTab_SetItemText ( $htab, $Zielindex, $Quelle_State[1])

_GUICtrlTab_SetItemImage ( $htab, $Quellindex, $Ziel_State[2])
_GUICtrlTab_SetItemImage ( $htab, $Zielindex, $Quelle_State[2])

_GUICtrlTab_SetCurSel ($htab,$Zielindex)
_Show_Tab($Zielindex)
_Check_Buttons()
EndFunc


Func _return_FileIcon($filetype)
	If $filetype = "wmv" Then Return 2
	If $filetype = "avi" Then Return 2
	If $filetype = "mpg" Then Return 2
	If $filetype = "mpeg" Then Return 2
	If $filetype = "divx" Then Return 2
	If $filetype = "mkv" Then Return 2
	If $filetype = "wav" Then Return 3
	If $filetype = "mp3" Then Return 3
	If $filetype = "exe" Then Return 4
	If $filetype = "bat" Then Return 17
	If $filetype = "bmp" Then Return 6
	If $filetype = "ico" Then Return 16
	If $filetype = "jpg" Then Return 6
	If $filetype = "jpeg" Then Return 6
	If $filetype = "png" Then Return 6
	If $filetype = "doc" Then Return 7
	If $filetype = "ppt" Then Return 8
	If $filetype = "xls" Then Return 9
	If $filetype = $Autoitextension Then Return 10
	If $filetype = "txt" Then Return 11
	If $filetype = "isf" Then Return 12
	If $filetype = "ini" Then Return 13
	If $filetype = "inf" Then Return 13
	If $filetype = "isn" Then Return 14
	If $filetype = "dll" Then Return 15

	Return 1

EndFunc   ;==>_return_FileIcon

Func _IsReparsePoint($FLS) ; progandy
	Dim Static $K32 = DllOpen('kernel32.dll')
	Dim $DA = DllCall($K32, 'dword', 'GetFileAttributesW', 'wstr', $FLS)

	If @error Then Return SetError(1, @error, False)
	Return BitAND($DA[0], 1024) = 1024
EndFunc   ;==>_IsReparsePoint

Func _GUICtrlTab_ActivateTabX($hWnd, $iIndex, $rebildtree = 1)
	If _GUICtrlTab_GetItemCount($hWnd) = 0 Then Return
	_GUICtrlTab_SetCurSel($hWnd, $iIndex)
	If $rebildtree = 1 Then _Check_Buttons()
EndFunc   ;==>_GUICtrlTab_ActivateTabX

Func _Try_to_import_folder()

	$var = _WinAPI_BrowseForFolderDlg("", _Get_langstr(455), $BIF_RETURNONLYFSDIRS, 0, 0, $Studiofenster)
	If @error Then
		Return
	Else
		$Count = 0
		If $Studiomodus = 1 Then
			$res = _WinAPI_BrowseForFolderDlg($Offenes_Projekt, _Get_langstr(59), $BIF_RETURNONLYFSDIRS, 0, 0, $Studiofenster)
		Else
			$res = _WinAPI_BrowseForFolderDlg("", _Get_langstr(59), $BIF_RETURNONLYFSDIRS, 0, 0, $Studiofenster)
		EndIf
		If @error Or $res = "" Then
			Return
		Else
			_FileOperationProgress($var & "\*.*", $res, 1, $FO_COPY, $FOF_SIMPLEPROGRESS + $FOF_NOCONFIRMATION)
			If @extended == 1 Then ;ERROR
				Return
			EndIf
			_Write_log($var & " " & _Get_langstr(63))
		EndIf
	EndIf

	FileChangeDir(@ScriptDir)
	_Update_Treeview()

	_Show_Warning("confirmimportfolder", 9, _Get_langstr(61), _Get_langstr(456), _Get_langstr(7))
EndFunc   ;==>_Try_to_import_folder

Func _Try_to_import_file()

	$var = FileOpenDialog(_Get_langstr(57), "::{20D04FE0-3AEA-1069-A2D8-08002B30309D}", _Get_langstr(58) & " (*.*)", 1 + 2 + 4, "", $StudioFenster)
	FileChangeDir(@ScriptDir)
	If $var = "" Then Return
	If @error Then
		Return
	Else
		$Count = 0
		If $Studiomodus = 1 Then
			$res = _WinAPI_BrowseForFolderDlg($Offenes_Projekt, _Get_langstr(59), $BIF_RETURNONLYFSDIRS, 0, 0, $Studiofenster)
		Else
			$res = _WinAPI_BrowseForFolderDlg("", _Get_langstr(59), $BIF_RETURNONLYFSDIRS, 0, 0, $Studiofenster)
		EndIf
		If @error Or $res = "" Then
			Return
		Else
			If StringInStr($var, "|") = 0 Then
				$Count = 1
				;FileCopy ($var, $res&"\*.*" , 1)
				_FileOperationProgress($var, $res, 1, $FO_COPY, $FOF_SIMPLEPROGRESS + $FOF_NOCONFIRMATION)
				If @extended == 1 Then ;ERROR
					Return
				EndIf
				_Write_log($var & " " & _Get_langstr(63))
			Else
				$pfad = StringTrimRight($var, (StringLen($var) - StringInStr($var, "|")) + 1)
				$filelist = StringTrimLeft($var, (StringInStr($var, "|"))) & "|"
				$Count = 0
				While StringLen($filelist) > 1
					$Datei = StringTrimRight($filelist, (StringLen($filelist) - StringInStr($filelist, "|")) + 1)
					;FileCopy ($pfad&"\"&$Datei, $res&"\*.*" , 1)
					_FileOperationProgress($pfad & "\" & $Datei, $res, 1, $FO_COPY, $FOF_SIMPLEPROGRESS + $FOF_NOCONFIRMATION)
					_Write_log($Datei & " " & _Get_langstr(63))
					$filelist = StringTrimLeft($filelist, StringInStr($filelist, "|"))
					$Count = $Count + 1
				WEnd
			EndIf

		EndIf
	EndIf

	_Update_Treeview()
	_Show_Warning("confirmimportfiles", 9, _Get_langstr(61), $Count & " " & _Get_langstr(60), _Get_langstr(7))
	If $Count > 14 Then _Earn_trophy(7, 2)
EndFunc   ;==>_Try_to_import_file

Func _plugin_send_msg($plugin, $msg = "")
	If $msg = "" Then
		WinSetTitle($plugin, "", "##WAITING##")
	Else
		WinSetTitle($plugin, "", $msg)
	EndIf
EndFunc   ;==>_plugin_send_msg

Func _ShowFileProperties($sFile, $sVerb = "properties", $hWnd = 0)
	; function by Rasim
	; http://www.autoitscript.com/forum/index....p?showtopic=78236&view=findpos

	Local Const $SEE_MASK_INVOKEIDLIST = 0xC
	Local Const $SEE_MASK_NOCLOSEPROCESS = 0x40
	Local Const $SEE_MASK_FLAG_NO_UI = 0x400

	Local $PropBuff, $FileBuff, $SHELLEXECUTEINFO

	$PropBuff = DllStructCreate("char[256]")
	DllStructSetData($PropBuff, 1, $sVerb)

	$FileBuff = DllStructCreate("char[256]")
	DllStructSetData($FileBuff, 1, $sFile)

	$SHELLEXECUTEINFO = DllStructCreate("int cbSize;long fMask;hwnd hWnd;ptr lpVerb;ptr lpFile;ptr lpParameters;ptr lpDirectory;" & _
			"int nShow;int hInstApp;ptr lpIDList;ptr lpClass;hwnd hkeyClass;int dwHotKey;hwnd hIcon;" & _
			"hwnd hProcess")

	DllStructSetData($SHELLEXECUTEINFO, "cbSize", DllStructGetSize($SHELLEXECUTEINFO))
	DllStructSetData($SHELLEXECUTEINFO, "fMask", $SEE_MASK_INVOKEIDLIST)
	DllStructSetData($SHELLEXECUTEINFO, "hwnd", $hWnd)
	DllStructSetData($SHELLEXECUTEINFO, "lpVerb", DllStructGetPtr($PropBuff, 1))
	DllStructSetData($SHELLEXECUTEINFO, "lpFile", DllStructGetPtr($FileBuff, 1))

	$aRet = DllCall("shell32.dll", "int", "ShellExecuteEx", "ptr", DllStructGetPtr($SHELLEXECUTEINFO))
	If $aRet[0] = 0 Then Return SetError(2, 0, 0)

	Return $aRet[0]
EndFunc   ;==>_ShowFileProperties

;1=$sPath is a dir|0=$sPath is not a dir

Func _IsDir($sPath)
	If Not StringInStr(FileGetAttrib($sPath), "D") Then Return False
	Return True
EndFunc   ;==>_IsDir



;==================================================================================================
; Function Name:   _GUICtrlTreeView_ExpandOneLevel($hTreeView [, $hParentItem=0])
; Description::    Ausklappen nur EINER Ebene eines Items, analog zum Mausklick auf '+'
; Parameter(s):    $hTreeView     Handle des TreeView
;                  $hParentItem   Handle des Auszuklappenden Parent-Items
;                                 Standard 0 ==> Handle des ersten Item im TreeView
; Return:          Erfolg         nichts
;                  Fehler         @error 1  -  TreeView enthält kein Item
;                                 @error 2  -  Item hat keine Child-Item
; Note:            Die Funktion sollte zwischen _GUICtrlTreeView_BeginUpdate() und _GUICtrlTreeView_EndUpdate()
;                  ausgeführt werden um ein Flackern zu verhindern
; Author(s):       BugFix (bugfix@autoit.de)
;==================================================================================================

Func _GUICtrlTreeView_ExpandOneLevel($hTreeView, $hParentItem = 0)
	If $hParentItem < 1 Then
		Local $hCurrentItem = _GUICtrlTreeView_GetFirstItem($hTreeView)
	Else
		Local $hCurrentItem = $hParentItem
	EndIf
	If $hCurrentItem = 0 Then Return SetError(1)
	Local $hChild
	Local $countChild = _GUICtrlTreeView_GetChildCount($hTreeView, $hCurrentItem)
	If $countChild = 0 Then Return SetError(2)
	_GUICtrlTreeView_Expand($hTreeView, $hCurrentItem)
	For $i = 1 To $countChild
		If $i = 1 Then
			$hChild = _GUICtrlTreeView_GetFirstChild($hTreeView, $hCurrentItem)
		Else
			$hChild = _GUICtrlTreeView_GetNextSibling($hTreeView, $hChild)
		EndIf
		If _GUICtrlTreeView_GetChildren($hTreeView, $hChild) Then _GUICtrlTreeView_Expand($hTreeView, $hChild, False)
	Next
EndFunc   ;==>_GUICtrlTreeView_ExpandOneLevel


Func _Show_Delete_file_GUI()
	If _GUICtrlTreeView_GetSelection($hTreeview) = 0 Then Return
	If _GUICtrlTVExplorer_GetSelected($hWndTreeview) = $Offenes_Projekt Then Return
	If _WinAPI_PathIsRoot(_GUICtrlTVExplorer_GetSelected($hWndTreeview)) Then Return
	$pfad = _GUICtrlTVExplorer_GetSelected($hWndTreeview)
	If _Schuetze_Wichtige_daten($pfad) = False Then Return
	If _FileInUse($pfad) = 1 Then
		MsgBox(262144 + 16, _Get_langstr(25), _Get_langstr(951), 0, $StudioFenster)
		Return
	EndIf

	$alreadyopen = _GUICtrlTab_FindTab($htab, StringTrimLeft($pfad, StringInStr($pfad, "\", 0, -1)))
	If $alreadyopen <> -1 Then
		$res = _ArraySearch($Datei_pfad, $pfad)
		If $res <> -1 Then
			$alreadyopen = $res
		Else
			$alreadyopen = -1
		EndIf
	EndIf
	If $alreadyopen = -1 Then
		If StringReplace(StringTrimLeft(_GUICtrlTreeView_GetTree($hTreeview, _GUICtrlTreeView_GetSelection($hTreeview)), StringInStr(_GUICtrlTreeView_GetTree($hTreeview, _GUICtrlTreeView_GetSelection($hTreeview)), "|")), $Delim1, $Delim) = IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "name", "#ERROR#") Then Return ;cannot delete root
		GUICtrlSetData($datei_loeschen_text, StringTrimLeft($pfad, StringInStr($pfad, "\", 0, -1)) & " " & _Get_langstr(62))
		GUICtrlSetState($datei_loeschen_include_checkbox, $GUI_ENABLE)
		If StringInStr($pfad, $Autoitextension) Or StringInStr($pfad, ".isf") Then
			GUICtrlSetState($datei_loeschen_include_checkbox, $GUI_CHECKED)
		Else
			GUICtrlSetState($datei_loeschen_include_checkbox, $GUI_UNCHECKED)
		EndIf
		If $Studiomodus = 2 Or _IsDir($pfad) = True Then
			GUICtrlSetState($datei_loeschen_include_checkbox, $GUI_UNCHECKED)
			GUICtrlSetState($datei_loeschen_include_checkbox, $GUI_DISABLE)
		EndIf
		GUISetState(@SW_SHOW, $Datei_loeschen_GUI)
		GUISetState(@SW_DISABLE, $StudioFenster)
	Else
		MsgBox(262144 + 16, _Get_langstr(25), StringTrimLeft($pfad, StringInStr($pfad, "\", 0, -1)) & " " & _Get_langstr(78), 0, $StudioFenster)
	EndIf
EndFunc   ;==>_Show_Delete_file_GUI

Func _Hide_Delete_file_GUI()
	GUISetState(@SW_ENABLE, $StudioFenster)
	GUISetState(@SW_HIDE, $Datei_loeschen_GUI)
EndFunc   ;==>_Hide_Delete_file_GUI


Func _Try_to_delete_file()
	If _GUICtrlTreeView_GetSelection($hTreeview) = 0 Then Return
	If _GUICtrlTVExplorer_GetSelected($hWndTreeview) = $Offenes_Projekt Then Return
	If _WinAPI_PathIsRoot(_GUICtrlTVExplorer_GetSelected($hWndTreeview)) Then Return
	$pfad = _GUICtrlTVExplorer_GetSelected($hWndTreeview)
	If _Schuetze_Wichtige_daten($pfad) = False Then Return
	$Projektbaum_ist_bereit = 0 ;Sperre Projektbaum
	_Hide_Delete_file_GUI()
	_Write_log(StringTrimLeft($pfad, StringInStr($pfad, "\", 0, -1)) & " " & _Get_langstr(64))
	If _IsDir($pfad) = True Then
		DirRemove($pfad, 1)
	Else
		FileDelete($pfad)
	EndIf
	If GUICtrlRead($datei_loeschen_include_checkbox) = $GUI_CHECKED Then _Exclude_IT(StringTrimLeft($pfad, StringInStr($pfad, "\", 0, -1)))
	_Update_Treeview()

	$Projektbaum_ist_bereit = 1
EndFunc   ;==>_Try_to_delete_file





Func _Redraw_Window($gui = $StudioFenster)
	$Pos_Splitter1 = ControlGetPos($StudioFenster, "", $VSplitter_1)
	$Pos_Splitter2 = ControlGetPos($StudioFenster, "", $VSplitter_2)
	$Pos_Splitter3 = ControlGetPos($StudioFenster, "", $HSplitter_1)
	$Pos_Splitter4 = ControlGetPos($StudioFenster, "", $HSplitter_2)

	If $Toggle_Leftside = 0 Then _Write_in_Config("VSplitter1X", $Pos_Splitter1[0])

	If $hidefunctionstree = "false" And $IS_HIDDEN_RECHTS = 0 And $Toggle_rightside = 0 Then _Write_in_Config("VSplitter2X", $Pos_Splitter2[0])

	If $hidedebug = "false" And $IS_HIDDEN_UNTEN = 0 Then _Write_in_Config("HSplitter1Y", $Pos_Splitter3[1])
	If $hideprogramlog = "false" Then _Write_in_Config("HSplitter2Y", $Pos_Splitter4[1])

	For $i = $Offene_tabs To 1 Step -1
		WinMove($SCE_EDITOR[$i - 1], "", -9000, -9000, Default, Default)
	Next
	_Show_Tab(_GUICtrlTab_GetCurFocus($htab))

	_Rezize()
;~ DLLCAll("user32.dll","int","RedrawWindow","hwnd",$gui,"int",0,"int",0,"int",0x1)
EndFunc   ;==>_Redraw_Window

Func _Repos_HD_Logo()
	If _GUICtrlTab_GetItemCount($htab) > 0 Then Return
	$tabsize = ControlGetPos($StudioFenster, "", $htab)
	GUICtrlSetPos($HD_Logo, ($tabsize[0] + ($tabsize[2]) / 2) - (400 / 2), ($tabsize[1] + ($tabsize[3]) / 2) - (400 / 2), 400, 400)
EndFunc   ;==>_Repos_HD_Logo

Func _Status_bar_aktualisiere_Parts()
	Return
	Local $size_StudioFenster = WinGetClientSize($StudioFenster)
	If Not IsArray($size_StudioFenster) Then Return
	Local $aParts[2] = [$size_StudioFenster[0] - 110, -1]
	_GUICtrlStatusBar_SetParts($Status_bar, $aParts)
;~  _GUICtrlStatusBar_EmbedControl($Status_bar, 1, GUICtrlGetHandle($Statusbar_progress),3)
EndFunc   ;==>_Status_bar_aktualisiere_Parts

Func _Rezize($no_tabrefresh = 0)
	;Falls gui verkleinert wurde passe Elemente an Fenstergröße an
	_Resize_Elements_to_Window()
	;Falls der Scriptbaum gerade versteckt ist..
	If $Toggle_rightside = 1 And $hidefunctionstree = "false" Then
		$Pos_VSplitter_2 = ControlGetPos($StudioFenster, "", $VSplitter_2)
		$winpos = WinGetClientSize($studiofenster)
		GUICtrlSetPos($VSplitter_2, $winpos[0] - 30, $Pos_VSplitter_2[1])
		GUICtrlSetPos($Scripttree_title, $winpos[0] - 28, 30, 20, 150)
	EndIf
	;Aktualisiere die Splitter
	_Aktualisiere_Splittercontrols()
	;Aktualisiere das Logo
	_Repos_HD_Logo()
	;Aktualisiere die Statusbar
	_GUICtrlStatusBar_Resize($Status_bar)
	_Status_bar_aktualisiere_Parts()
	;Aktualisiere Tab
	If $no_tabrefresh = 0 Then _Show_Tab(_GUICtrlTab_GetCurFocus($htab))
EndFunc   ;==>_Rezize


Func _Toggle_Fenster_unten()
	If $IS_HIDDEN_UNTEN = 1 Then
		If StringTrimLeft($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], StringInStr($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], ".", 0, -1)) <> $Autoitextension Then Return
		If $hidedebug = "true" Then Return
		_HIDE_FENSTER_UNTEN("false")
		$Fenster_unten_durch_toggle_versteckt = 0
	Else
		_HIDE_FENSTER_UNTEN("true")
		$Fenster_unten_durch_toggle_versteckt = 1
	EndIf
EndFunc   ;==>_Toggle_Fenster_unten



Func _WINDOW_REBUILD()
	GUISetState(@SW_SHOW, $Studiofenster)
	WinSetOnTop($Studiofenster, "", 1)
	WinSetOnTop($Studiofenster, "", 0)
	_Rezize(0)
EndFunc   ;==>_WINDOW_REBUILD

Func _HIDE_FENSTER_RECHTS($state = "")
	If $state = "" Then $state = $hidefunctionstree
	If $hidefunctionstree = "true" Then $state = $hidefunctionstree
	$winpos = WinGetPos($studiofenster)
	$winpos_client = WinGetClientSize($studiofenster)
	$Pos_VSplitter_2 = ControlGetPos($StudioFenster, "", $VSplitter_2)
	If $state = "true" Then ;hide
		If $IS_HIDDEN_RECHTS = 1 Then Return
		If $IS_HIDDEN_RECHTS = 0 Then
			$OLD_X = $Pos_VSplitter_2[0]
			$IS_HIDDEN_RECHTS = 1
		EndIf
		GUICtrlSetPos($VSplitter_2, $winpos_client[0] - 2, $Pos_VSplitter_2[1], $Splitter_Breite)
		GUICtrlSetState($VSplitter_2, $GUI_HIDE)
		GUICtrlSetState($Scripttree_title, $GUI_HIDE)
		GUICtrlSetState($Skriptbaum_Einstellungen_Button, $GUI_HIDE)
		GUICtrlSetState($Skriptbaum_Aktualisieren_Button, $GUI_HIDE)
	Else
		If $IS_HIDDEN_RECHTS = 0 Then Return
		If $Toggle_rightside = 1 Then
			$Toggle_rightside = 0
			_Toggle_hide_rightbar()
			GUICtrlSetState($Scripttree_title, $GUI_SHOW)
			$IS_HIDDEN_RECHTS = 0
		Else
			$OLD_X = _Config_Read("VSplitter2X", $size[2] - 268)
			If _GUICtrlTab_GetItemCount($htab) = 0 Then Return
			GUICtrlSetPos($VSplitter_2, $OLD_X, $Pos_VSplitter_2[1], $Splitter_Breite)
			GUICtrlSetState($VSplitter_2, $GUI_SHOW)
			GUICtrlSetState($Scripttree_title, $GUI_SHOW)
			GUICtrlSetState($Skriptbaum_Einstellungen_Button, $GUI_SHOW)
			GUICtrlSetState($Skriptbaum_Aktualisieren_Button, $GUI_SHOW)
			$IS_HIDDEN_RECHTS = 0
		EndIf
	EndIf

	_Aktualisiere_Splittercontrols() ;Aktuallisiere alle Controls die mit Splittern verbunden sind
	_Repos_HD_Logo() ;aktualisiere Logo
EndFunc   ;==>_HIDE_FENSTER_RECHTS

Func _HIDE_FENSTER_UNTEN($state = "")
	If $state = "" Then $state = $hidedebug
	If $hidedebug = "true" Then $state = $hidedebug
	$winpos = WinGetPos($studiofenster)
	$winpos_clientsize = WinGetClientSize($studiofenster)
	$Pos_HSplitter_1 = ControlGetPos($StudioFenster, "", $HSplitter_1)
	$Pos_Splitter1 = ControlGetPos($StudioFenster, "", $VSplitter_1)
	If $state = "true" Then ;hide
;~ if $IS_HIDDEN_UNTEN=1 then return
		If $IS_HIDDEN_UNTEN = 0 Then
			$OLD_Y = $Pos_HSplitter_1[1]
			$IS_HIDDEN_UNTEN = 1
		EndIf

		GUICtrlSetPos($HSplitter_1, $Pos_HSplitter_1[0], $winpos_clientsize[1] - 24)
		GUICtrlSetState($HSplitter_1, $GUI_HIDE)
		GUICtrlSetState($Debug_log, $GUI_HIDE)
		GUICtrlSetState($Debug_Log_Undo_Button, $GUI_HIDE)
		GUICtrlSetState($Debug_Log_Redo_Button, $GUI_HIDE)
		GUICtrlSetState($Debug_Log_Zwischenablage_Button, $GUI_HIDE)
	Else
		If $IS_HIDDEN_UNTEN = 0 Then Return
		$OLD_Y = _Config_Read("HSplitter1Y", (@DesktopHeight / 2) + 200)
		If _GUICtrlTab_GetItemCount($htab) = 0 Then Return
		GUICtrlSetPos($HSplitter_1, $Pos_HSplitter_1[0], $OLD_Y)
		GUICtrlSetState($HSplitter_1, $GUI_SHOW)
		GUICtrlSetState($Debug_log, $GUI_SHOW)
		If $Zeige_Buttons_neben_Debug_Fenster = "true" Then
			GUICtrlSetState($Debug_Log_Undo_Button, $GUI_SHOW)
			GUICtrlSetState($Debug_Log_Redo_Button, $GUI_SHOW)
			GUICtrlSetState($Debug_Log_Zwischenablage_Button, $GUI_SHOW)
		Else
			GUICtrlSetState($Debug_Log_Undo_Button, $GUI_HIDE)
			GUICtrlSetState($Debug_Log_Redo_Button, $GUI_HIDE)
			GUICtrlSetState($Debug_Log_Zwischenablage_Button, $GUI_HIDE)
		EndIf
		$IS_HIDDEN_UNTEN = 0
	EndIf

	_Aktualisiere_Splittercontrols() ;Aktuallisiere alle Controls die mit Splittern verbunden sind
	_Repos_HD_Logo() ;aktualisiere Logo
EndFunc   ;==>_HIDE_FENSTER_UNTEN

Func _Imagelist_replace_icon($hWnd, $toreplace, $sFile, $iIndex = 0)
	Local $pIcon, $tIcon, $hIcon

	$tIcon = DllStructCreate("int Icon")
	$pIcon = DllStructGetPtr($tIcon)
	_WinAPI_ExtractIconEx($sFile, $iIndex, 0, $pIcon, 1)
	$hIcon = DllStructGetData($tIcon, "Icon")
	_GUIImageList_ReplaceIcon($hWnd, $toreplace, $hIcon)
	_WinAPI_DestroyIcon($hIcon)
EndFunc   ;==>_Imagelist_replace_icon

Func _Reload_Ruleslots()
	GUICtrlSetState($Tools_menu_item3, $GUI_ENABLE)
	GUICtrlSetState($Tools_menu_item4, $GUI_ENABLE)
	GUICtrlSetState($Tools_menu_item5, $GUI_ENABLE)
	GUICtrlSetState($Tools_menu_item6, $GUI_ENABLE)
	GUICtrlSetState($Tools_menu_item7, $GUI_ENABLE)
	GUICtrlSetState($Tools_menu_item9, $GUI_ENABLE)
	GUICtrlSetState($Tools_menu_item10, $GUI_ENABLE)

	;regelslots in Toolbar
	$sections = IniReadSection($Offenes_Projekt & "\project.isn", $Section_Trigger12)
	If @error Then
		_GUICtrlToolbar_SetButtonState($hToolbar, $id24, $TBSTATE_HIDDEN)
		_GUICtrlToolbar_SetButtonText($hToolbar, $id24, _Get_langstr(611))
		_GUICtrlODMenuItemSetText($Tools_menu_item3, _Get_langstr(611) & @TAB & _Keycode_zu_Text($Hotkey_Keycode_Makroslot1))
		_GUICtrlODMenuItemSetIcon($Tools_menu_item3, $smallIconsdll, 0)
		_Imagelist_replace_icon($hToolBarImageListNorm, 24, $smallIconsdll, "1")
		_GUICtrlToolbar_SetButtonBitMap($hToolbar, $id24, 24)
	Else
		_GUICtrlToolbar_SetButtonState($hToolbar, $id24, $TBSTATE_ENABLED)
		$name = IniRead($Offenes_Projekt & "\project.isn", $sections[1][0], "name", "")
		_GUICtrlToolbar_SetButtonText($hToolbar, $id24, $name)
		_GUICtrlODMenuItemSetText($Tools_menu_item3, $name & @TAB & _Keycode_zu_Text($Hotkey_Keycode_Makroslot1))
		$readen_icon = IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "icon_ruleslot1", "1")
		$readen_icon = Number($readen_icon)
		If $readen_icon > 1 Then
			$readen_icon = $readen_icon - 1
		Else
			$readen_icon = 0
		EndIf
		_Imagelist_replace_icon($hToolBarImageListNorm, 24, $smallIconsdll, $readen_icon)
		_GUICtrlToolbar_SetButtonBitMap($hToolbar, $id24, 24)
		_GUICtrlODMenuItemSetIcon($Tools_menu_item3, $smallIconsdll, $readen_icon + 1)
		If IniRead($Offenes_Projekt & "\project.isn", $sections[1][0], "status", "active") <> "active" Then
			_GUICtrlToolbar_SetButtonState($hToolbar, $id24, $TBSTATE_HIDDEN)
			GUICtrlSetState($Tools_menu_item3, $GUI_DISABLE)
		EndIf
	EndIf

	$sections = IniReadSection($Offenes_Projekt & "\project.isn", $Section_Trigger13)
	If @error Then
		_GUICtrlToolbar_SetButtonState($hToolbar, $id25, $TBSTATE_HIDDEN)
		_GUICtrlToolbar_SetButtonText($hToolbar, $id25, _Get_langstr(612))
		_GUICtrlODMenuItemSetText($Tools_menu_item4, _Get_langstr(612) & @TAB & _Keycode_zu_Text($Hotkey_Keycode_Makroslot2))
		_GUICtrlODMenuItemSetIcon($Tools_menu_item4, $smallIconsdll, 909)
		_Imagelist_replace_icon($hToolBarImageListNorm, 25, $smallIconsdll, "908")
		_GUICtrlToolbar_SetButtonBitMap($hToolbar, $id25, 25)
	Else
		_GUICtrlToolbar_SetButtonState($hToolbar, $id25, $TBSTATE_ENABLED)
		$name = IniRead($Offenes_Projekt & "\project.isn", $sections[1][0], "name", "")
		_GUICtrlToolbar_SetButtonText($hToolbar, $id25, $name)
		_GUICtrlODMenuItemSetText($Tools_menu_item4, $name & @TAB & _Keycode_zu_Text($Hotkey_Keycode_Makroslot2))
		$readen_icon = IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "icon_ruleslot2", "908")
		$readen_icon = Number($readen_icon)
		If $readen_icon > 1 Then
			$readen_icon = $readen_icon - 1
		Else
			$readen_icon = 0
		EndIf
		_Imagelist_replace_icon($hToolBarImageListNorm, 25, $smallIconsdll, $readen_icon)
		_GUICtrlToolbar_SetButtonBitMap($hToolbar, $id25, 25)
		_GUICtrlODMenuItemSetIcon($Tools_menu_item4, $smallIconsdll, $readen_icon + 1)
		If IniRead($Offenes_Projekt & "\project.isn", $sections[1][0], "status", "active") <> "active" Then
			_GUICtrlToolbar_SetButtonState($hToolbar, $id25, $TBSTATE_HIDDEN)
			GUICtrlSetState($Tools_menu_item4, $GUI_DISABLE)
		EndIf
	EndIf

	$sections = IniReadSection($Offenes_Projekt & "\project.isn", $Section_Trigger14)
	If @error Then
		_GUICtrlToolbar_SetButtonState($hToolbar, $id26, $TBSTATE_HIDDEN)
		_GUICtrlToolbar_SetButtonText($hToolbar, $id26, _Get_langstr(613))
		_GUICtrlODMenuItemSetText($Tools_menu_item5, _Get_langstr(613) & @TAB & _Keycode_zu_Text($Hotkey_Keycode_Makroslot3))
		_GUICtrlODMenuItemSetIcon($Tools_menu_item5, $smallIconsdll, 1020)
		_Imagelist_replace_icon($hToolBarImageListNorm, 26, $smallIconsdll, "1019")
		_GUICtrlToolbar_SetButtonBitMap($hToolbar, $id26, 26)
	Else
		_GUICtrlToolbar_SetButtonState($hToolbar, $id26, $TBSTATE_ENABLED)
		$name = IniRead($Offenes_Projekt & "\project.isn", $sections[1][0], "name", "")
		_GUICtrlToolbar_SetButtonText($hToolbar, $id26, $name)
		_GUICtrlODMenuItemSetText($Tools_menu_item5, $name & @TAB & _Keycode_zu_Text($Hotkey_Keycode_Makroslot3))
		$readen_icon = IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "icon_ruleslot3", "1019")
		$readen_icon = Number($readen_icon)
		If $readen_icon > 1 Then
			$readen_icon = $readen_icon - 1
		Else
			$readen_icon = 0
		EndIf
		_Imagelist_replace_icon($hToolBarImageListNorm, 26, $smallIconsdll, $readen_icon)
		_GUICtrlToolbar_SetButtonBitMap($hToolbar, $id26, 26)
		_GUICtrlODMenuItemSetIcon($Tools_menu_item5, $smallIconsdll, $readen_icon + 1)
		If IniRead($Offenes_Projekt & "\project.isn", $sections[1][0], "status", "active") <> "active" Then
			_GUICtrlToolbar_SetButtonState($hToolbar, $id26, $TBSTATE_HIDDEN)
			GUICtrlSetState($Tools_menu_item5, $GUI_DISABLE)
		EndIf
	EndIf

	$sections = IniReadSection($Offenes_Projekt & "\project.isn", $Section_Trigger15)
	If @error Then
		_GUICtrlToolbar_SetButtonState($hToolbar, $id27, $TBSTATE_HIDDEN)
		_GUICtrlToolbar_SetButtonText($hToolbar, $id27, _Get_langstr(614))
		_GUICtrlODMenuItemSetText($Tools_menu_item6, _Get_langstr(614) & @TAB & _Keycode_zu_Text($Hotkey_Keycode_Makroslot4))
		_GUICtrlODMenuItemSetIcon($Tools_menu_item6, $smallIconsdll, 1130)
		_Imagelist_replace_icon($hToolBarImageListNorm, 27, $smallIconsdll, "1129")
		_GUICtrlToolbar_SetButtonBitMap($hToolbar, $id27, 27)
	Else
		_GUICtrlToolbar_SetButtonState($hToolbar, $id27, $TBSTATE_ENABLED)
		$name = IniRead($Offenes_Projekt & "\project.isn", $sections[1][0], "name", "")
		_GUICtrlToolbar_SetButtonText($hToolbar, $id27, $name)
		_GUICtrlODMenuItemSetText($Tools_menu_item6, $name & @TAB & _Keycode_zu_Text($Hotkey_Keycode_Makroslot4))
		$readen_icon = IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "icon_ruleslot4", "1129")
		$readen_icon = Number($readen_icon)
		If $readen_icon > 1 Then
			$readen_icon = $readen_icon - 1
		Else
			$readen_icon = 0
		EndIf
		_Imagelist_replace_icon($hToolBarImageListNorm, 27, $smallIconsdll, $readen_icon)
		_GUICtrlToolbar_SetButtonBitMap($hToolbar, $id27, 27)
		_GUICtrlODMenuItemSetIcon($Tools_menu_item6, $smallIconsdll, $readen_icon + 1)
		If IniRead($Offenes_Projekt & "\project.isn", $sections[1][0], "status", "active") <> "active" Then
			_GUICtrlToolbar_SetButtonState($hToolbar, $id27, $TBSTATE_HIDDEN)
			GUICtrlSetState($Tools_menu_item6, $GUI_DISABLE)
		EndIf
	EndIf

	$sections = IniReadSection($Offenes_Projekt & "\project.isn", $Section_Trigger16)
	If @error Then
		_GUICtrlToolbar_SetButtonState($hToolbar, $id28, $TBSTATE_HIDDEN)
		_GUICtrlToolbar_SetButtonText($hToolbar, $id28, _Get_langstr(615))
		_GUICtrlODMenuItemSetText($Tools_menu_item7, _Get_langstr(615) & @TAB & _Keycode_zu_Text($Hotkey_Keycode_Makroslot5))
		_GUICtrlODMenuItemSetIcon($Tools_menu_item7, $smallIconsdll, 1241)
		_Imagelist_replace_icon($hToolBarImageListNorm, 28, $smallIconsdll, "1240")
		_GUICtrlToolbar_SetButtonBitMap($hToolbar, $id28, 28)
	Else
		_GUICtrlToolbar_SetButtonState($hToolbar, $id28, $TBSTATE_ENABLED)
		$name = IniRead($Offenes_Projekt & "\project.isn", $sections[1][0], "name", "")
		_GUICtrlToolbar_SetButtonText($hToolbar, $id28, $name & @TAB & _Keycode_zu_Text($Hotkey_Keycode_Makroslot5))
		_GUICtrlODMenuItemSetText($Tools_menu_item7, $name)
		$readen_icon = IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "icon_ruleslot5", "1240")
		$readen_icon = Number($readen_icon)
		If $readen_icon > 1 Then
			$readen_icon = $readen_icon - 1
		Else
			$readen_icon = 0
		EndIf
		_Imagelist_replace_icon($hToolBarImageListNorm, 28, $smallIconsdll, $readen_icon)
		_GUICtrlToolbar_SetButtonBitMap($hToolbar, $id28, 28)
		_GUICtrlODMenuItemSetIcon($Tools_menu_item7, $smallIconsdll, $readen_icon + 1)
		If IniRead($Offenes_Projekt & "\project.isn", $sections[1][0], "status", "active") <> "active" Then
			_GUICtrlToolbar_SetButtonState($hToolbar, $id28, $TBSTATE_HIDDEN)
			GUICtrlSetState($Tools_menu_item7, $GUI_DISABLE)
		EndIf
	EndIf

	$sections = IniReadSection($Offenes_Projekt & "\project.isn", $Section_Trigger17)
	If @error Then
		_GUICtrlToolbar_SetButtonState($hToolbar, $Toolbar_makroslot6, $TBSTATE_HIDDEN)
		_GUICtrlToolbar_SetButtonText($hToolbar, $Toolbar_makroslot6, _Get_langstr(906))
		_GUICtrlODMenuItemSetText($Tools_menu_item9, _Get_langstr(906) & @TAB & _Keycode_zu_Text($Hotkey_Keycode_Makroslot6))
		_GUICtrlODMenuItemSetIcon($Tools_menu_item9, $smallIconsdll, 1345)
		_Imagelist_replace_icon($hToolBarImageListNorm, 30, $smallIconsdll, "1344")
		_GUICtrlToolbar_SetButtonBitMap($hToolbar, $Toolbar_makroslot6, 30)
	Else
		_GUICtrlToolbar_SetButtonState($hToolbar, $Toolbar_makroslot6, $TBSTATE_ENABLED)
		$name = IniRead($Offenes_Projekt & "\project.isn", $sections[1][0], "name", "")
		_GUICtrlToolbar_SetButtonText($hToolbar, $Toolbar_makroslot6, $name & @TAB & _Keycode_zu_Text($Hotkey_Keycode_Makroslot6))
		_GUICtrlODMenuItemSetText($Tools_menu_item9, $name)
		$readen_icon = IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "icon_ruleslot6", "1344")
		$readen_icon = Number($readen_icon)
		If $readen_icon > 1 Then
			$readen_icon = $readen_icon - 1
		Else
			$readen_icon = 0
		EndIf
		_Imagelist_replace_icon($hToolBarImageListNorm, 30, $smallIconsdll, $readen_icon)
		_GUICtrlToolbar_SetButtonBitMap($hToolbar, $Toolbar_makroslot6, 30)
		_GUICtrlODMenuItemSetIcon($Tools_menu_item9, $smallIconsdll, $readen_icon + 1)
		If IniRead($Offenes_Projekt & "\project.isn", $sections[1][0], "status", "active") <> "active" Then
			_GUICtrlToolbar_SetButtonState($hToolbar, $Toolbar_makroslot6, $TBSTATE_HIDDEN)
			GUICtrlSetState($Tools_menu_item9, $GUI_DISABLE)
		EndIf
	EndIf

	$sections = IniReadSection($Offenes_Projekt & "\project.isn", $Section_Trigger18)
	If @error Then
		_GUICtrlToolbar_SetButtonState($hToolbar, $Toolbar_makroslot7, $TBSTATE_HIDDEN)
		_GUICtrlToolbar_SetButtonText($hToolbar, $Toolbar_makroslot7, _Get_langstr(907))
		_GUICtrlODMenuItemSetText($Tools_menu_item10, _Get_langstr(907) & @TAB & _Keycode_zu_Text($Hotkey_Keycode_Makroslot7))
		_GUICtrlODMenuItemSetIcon($Tools_menu_item10, $smallIconsdll, 1456)
		_Imagelist_replace_icon($hToolBarImageListNorm, 31, $smallIconsdll, "1455")
		_GUICtrlToolbar_SetButtonBitMap($hToolbar, $Toolbar_makroslot7, 31)
	Else
		_GUICtrlToolbar_SetButtonState($hToolbar, $Toolbar_makroslot7, $TBSTATE_ENABLED)
		$name = IniRead($Offenes_Projekt & "\project.isn", $sections[1][0], "name", "")
		_GUICtrlToolbar_SetButtonText($hToolbar, $Toolbar_makroslot7, $name & @TAB & _Keycode_zu_Text($Hotkey_Keycode_Makroslot7))
		_GUICtrlODMenuItemSetText($Tools_menu_item10, $name)
		$readen_icon = IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "icon_ruleslot7", "1455")
		$readen_icon = Number($readen_icon)
		If $readen_icon > 1 Then
			$readen_icon = $readen_icon - 1
		Else
			$readen_icon = 0
		EndIf
		_Imagelist_replace_icon($hToolBarImageListNorm, 31, $smallIconsdll, $readen_icon)
		_GUICtrlToolbar_SetButtonBitMap($hToolbar, $Toolbar_makroslot7, 31)
		_GUICtrlODMenuItemSetIcon($Tools_menu_item10, $smallIconsdll, $readen_icon + 1)
		If IniRead($Offenes_Projekt & "\project.isn", $sections[1][0], "status", "active") <> "active" Then
			_GUICtrlToolbar_SetButtonState($hToolbar, $Toolbar_makroslot7, $TBSTATE_HIDDEN)
			GUICtrlSetState($Tools_menu_item10, $GUI_DISABLE)
		EndIf
	EndIf
	_Erstelle_Kontextmenu_fuer_Projektbaum() ;Aktualisiere Kontextmenü des Projektbaumes
EndFunc   ;==>_Reload_Ruleslots

Func _deaktiviere_Buttons_fuer_Editormodus()
	;Deaktiviere einige Optionen im Editormodus
	If $Studiomodus = 2 Then
		GUICtrlSetState($ProjectMenu_item4, $GUI_DISABLE)
		GUICtrlSetState($ProjectMenu_projekteinstellungen, $GUI_DISABLE)
		GUICtrlSetState($FileMenu_item6, $GUI_DISABLE)
		GUICtrlSetState($ProjectMenu_item8a, $GUI_DISABLE)
		GUICtrlSetState($ProjectMenu_item8b, $GUI_DISABLE)
		GUICtrlSetState($ProjectMenu_item11a, $GUI_DISABLE)
		GUICtrlSetState($ProjectMenu_item11b, $GUI_DISABLE)
		GUICtrlSetState($FileMenu_Neue_Datei_temp_au3file, $GUI_DISABLE)
		GUICtrlSetState($ProjectMenu_Kompilieren_Daten_auswaehlen, $GUI_DISABLE)
		GUICtrlSetState($HelpMenu_item3, $GUI_DISABLE)
		_GUICtrlToolbar_SetButtonState($hToolbar, $id9, $TBSTATE_INDETERMINATE)
		_GUICtrlToolbar_SetButtonState($hToolbar, $id4, $TBSTATE_INDETERMINATE)
		_GUICtrlODMenuItemSetText($ProjectMenu_item8, _Get_langstr(82))
		_GUICtrlODMenuItemSetText($FileMenu_item13, _Get_langstr(665))
		_GUICtrlODMenuItemSetText($ProjectMenu_item3, _Get_langstr(665))
		_GUICtrlToolbar_SetButtonText($hToolbar, $Toolbarmenu_closeproject, _Get_langstr(665))
		_GUICtrlODMenuItemSetText($ProjectMenu_item8a, _Get_langstr(668) & @TAB & _Keycode_zu_Text($Hotkey_Keycode_Testprojekt))
		_GUICtrlODMenuItemSetText($ProjectMenu_item11, _Get_langstr(601))
		_GUICtrlODMenuItemSetText($ProjectMenu_item11a, _Get_langstr(601) & @TAB & _Keycode_zu_Text($Hotkey_Keycode_compile))
		_GUICtrlODMenuItemSetText($ProjectMenu_item8b, _Get_langstr(669) & @TAB & _Keycode_zu_Text($Hotkey_Keycode_Testprojekt_ohne_Parameter))
		If Not _GUICtrlTab_GetItemCount($htab) = 0 Then
			If StringTrimLeft($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], StringInStr($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], ".", 0, -1)) = $Autoitextension Then
				GUICtrlSetState($ProjectMenu_item11a, $GUI_ENABLE)
				GUICtrlSetState($ProjectMenu_item11b, $GUI_ENABLE)
				GUICtrlSetState($ProjectMenu_item8a, $GUI_ENABLE)
				GUICtrlSetState($ProjectMenu_item8b, $GUI_ENABLE)
				_GUICtrlToolbar_SetButtonState($hToolbar, $id21, $TBSTATE_ENABLED)
			EndIf
		EndIf

	Else
		GUICtrlSetState($ProjectMenu_item11a, $GUI_ENABLE)
		GUICtrlSetState($ProjectMenu_item11b, $GUI_ENABLE)
		GUICtrlSetState($FileMenu_Neue_Datei_temp_au3file, $GUI_ENABLE)
		GUICtrlSetState($ProjectMenu_Kompilieren_Daten_auswaehlen, $GUI_ENABLE)
		GUICtrlSetState($ProjectMenu_item4, $GUI_Enable)
		GUICtrlSetState($ProjectMenu_projekteinstellungen, $GUI_Enable)
		GUICtrlSetState($FileMenu_item6, $GUI_Enable)
		_GUICtrlToolbar_SetButtonState($hToolbar, $id9, $TBSTATE_ENABLED)
		_GUICtrlToolbar_SetButtonState($hToolbar, $id4, $TBSTATE_ENABLED)
		GUICtrlSetState($ProjectMenu_item8, $GUI_Enable)
		GUICtrlSetState($ProjectMenu_item8b, $GUI_Enable)
		GUICtrlSetState($HelpMenu_item3, $GUI_Enable)
		_GUICtrlODMenuItemSetText($FileMenu_item13, _Get_langstr(41))
		_GUICtrlToolbar_SetButtonText($hToolbar, $Toolbarmenu_closeproject, _Get_langstr(41))
		_GUICtrlODMenuItemSetText($ProjectMenu_item3, _Get_langstr(41))
		_GUICtrlODMenuItemSetText($ProjectMenu_item8, _Get_langstr(489))
		_GUICtrlODMenuItemSetText($ProjectMenu_item8a, _Get_langstr(50) & @TAB & _Keycode_zu_Text($Hotkey_Keycode_Testprojekt))
		_GUICtrlODMenuItemSetText($ProjectMenu_item8b, _Get_langstr(488) & @TAB & _Keycode_zu_Text($Hotkey_Keycode_Testprojekt_ohne_Parameter))
		_GUICtrlODMenuItemSetText($ProjectMenu_item11, _Get_langstr(52))
		_GUICtrlODMenuItemSetText($ProjectMenu_item11a, _Get_langstr(52) & @TAB & _Keycode_zu_Text($Hotkey_Keycode_compile))
	EndIf

EndFunc   ;==>_deaktiviere_Buttons_fuer_Editormodus

Func _Check_Buttons($buildtree = 1)
	AdlibUnRegister("_Check_Buttons")

	If $Erweitertes_debugging = "true" Then
		GUICtrlSetState($Tools_menu_debugging_erweitertes_debugging_aktivieren, $GUI_CHECKED)
		GUICtrlSetState($Tools_menu_debugging_erweitertes_debugging_deaktivieren, $GUI_UNCHECKED)
	Else
		GUICtrlSetState($Tools_menu_debugging_erweitertes_debugging_aktivieren, $GUI_UNCHECKED)
		GUICtrlSetState($Tools_menu_debugging_erweitertes_debugging_deaktivieren, $GUI_CHECKED)
	 EndIf

	 $Automatische_Speicherung_eingabecounter = 0 ;Eingabecounter resetten

	;toolbar
	_GUICtrlToolbar_SetButtonState($hToolbar, $id12, $TBSTATE_INDETERMINATE)
	_GUICtrlToolbar_SetButtonState($hToolbar, $id14, $TBSTATE_INDETERMINATE)
	_GUICtrlToolbar_SetButtonState($hToolbar, $id15, $TBSTATE_INDETERMINATE)
	_GUICtrlToolbar_SetButtonState($hToolbar, $id11, $TBSTATE_INDETERMINATE)
	_GUICtrlToolbar_SetButtonState($hToolbar, $id16, $TBSTATE_INDETERMINATE)
	_GUICtrlToolbar_SetButtonState($hToolbar, $id17, $TBSTATE_INDETERMINATE)
	_GUICtrlToolbar_SetButtonState($hToolbar, $id18, $TBSTATE_INDETERMINATE)
	_GUICtrlToolbar_SetButtonState($hToolbar, $id21, $TBSTATE_INDETERMINATE)
	_GUICtrlToolbar_SetButtonState($hToolbar, $id29, $TBSTATE_INDETERMINATE)
	GUICtrlSetState($EditMenu_item1, $GUI_DISABLE)
	GUICtrlSetState($EditMenu_item2, $GUI_DISABLE)
	GUICtrlSetState($FileMenu_item1b, $GUI_DISABLE)
	GUICtrlSetState($FileMenu_item1d, $GUI_DISABLE)
	GUICtrlSetState($FileMenu_item1c, $GUI_DISABLE)
	GUICtrlSetState($FileMenu_item1, $GUI_DISABLE)
	GUICtrlSetState($Dateimenue_Drucken, $GUI_DISABLE)
	GUICtrlSetState($AnsichtMenu_fenster_unten_umschalten, $GUI_DISABLE)
	GUICtrlSetState($AnsichtMenu_fenster_rechts_umschalten, $GUI_DISABLE)

	If _GUICtrlTab_GetItemCount($htab) = 0 Then
		_GUICtrlToolbar_SetButtonState($hToolbar, $id10, $TBSTATE_INDETERMINATE)
		_GUICtrlToolbar_SetButtonState($hToolbar, $id29, $TBSTATE_INDETERMINATE)
		_GUICtrlToolbar_SetButtonState($hToolbar, $id13, $TBSTATE_INDETERMINATE)
		GUICtrlSetState($FileMenu_TabSchliessen, $GUI_DISABLE)
	Else
		_GUICtrlToolbar_SetButtonState($hToolbar, $id10, $TBSTATE_ENABLED)
		_GUICtrlToolbar_SetButtonState($hToolbar, $id29, $TBSTATE_ENABLED)
		_GUICtrlToolbar_SetButtonState($hToolbar, $id13, $TBSTATE_ENABLED)
		GUICtrlSetState($FileMenu_item1b, $GUI_enable)
		GUICtrlSetState($FileMenu_item1d, $GUI_enable)
		GUICtrlSetState($FileMenu_item1c, $GUI_enable)
		GUICtrlSetState($FileMenu_item1, $GUI_enable)
		GUICtrlSetState($FileMenu_TabSchliessen, $GUI_enable)

	EndIf

	;rebar
	GUICtrlSetState($TabContextMenu_Item1, $GUI_DISABLE)
	GUICtrlSetState($ProjectMenu_item9, $GUI_DISABLE)

	GUICtrlSetState($EditMenu_item7, $GUI_DISABLE)

	GUICtrlSetState($EditMenu_item1, $GUI_DISABLE)
	GUICtrlSetState($EditMenu_item2, $GUI_DISABLE)
	GUICtrlSetState($EditMenu_item3, $GUI_DISABLE)
	GUICtrlSetState($EditMenu_item4, $GUI_DISABLE)
	GUICtrlSetState($EditMenu_item5, $GUI_DISABLE)
	GUICtrlSetState($EditMenu_item6, $GUI_DISABLE)
	GUICtrlSetState($EditMenu_item7, $GUI_DISABLE)
	GUICtrlSetState($EditMenu_item8, $GUI_DISABLE)
	GUICtrlSetState($EditMenu_item9, $GUI_DISABLE)
	GUICtrlSetState($EditMenu_item10, $GUI_DISABLE)
	GUICtrlSetState($EditMenu_item11, $GUI_DISABLE)
	GUICtrlSetState($EditMenu_item12, $GUI_DISABLE)
	GUICtrlSetState($EditMenu_zeile_duplizieren, $GUI_DISABLE)
	GUICtrlSetState($Tools_menu_item1, $GUI_DISABLE)
	GUICtrlSetState($Tools_menu_debugging, $GUI_DISABLE)
	GUICtrlSetState($Tools_menu_createUDFheader, $GUI_DISABLE)
	GUICtrlSetState($Tools_menu_AutoIt3Wrapper_GUI, $GUI_DISABLE)
;~ 	GUICtrlSetState($Tools_menu_organizeincludes, $GUI_DISABLE)
	GUICtrlSetState($Tools_menu_ParameterEditor, $GUI_DISABLE)

	If $Offenes_Projekt <> "" Then _Reload_Ruleslots()
	If _GUICtrlTab_GetCurFocus($htab) = -1 Or _GUICtrlTab_GetItemCount($htab) = 0 Then
		_deaktiviere_Buttons_fuer_Editormodus()
		Return
	EndIf

	If $Plugin_Handle[_GUICtrlTab_GetCurFocus($htab)] = "-1" Then

	   ;Für alle Scintilla Controls
		_Check_tabs_for_changes()
		GUICtrlSetState($Dateimenue_Drucken, $GUI_ENABLE)
		GUICtrlSetState($EditMenu_item3, $GUI_ENABLE)
		GUICtrlSetState($EditMenu_item4, $GUI_ENABLE)
		GUICtrlSetState($EditMenu_item5, $GUI_ENABLE)
		GUICtrlSetState($EditMenu_item6, $GUI_ENABLE)
		GUICtrlSetState($EditMenu_item7, $GUI_ENABLE)
		GUICtrlSetState($EditMenu_item8, $GUI_ENABLE)
		GUICtrlSetState($EditMenu_item9, $GUI_ENABLE)
	    GUICtrlSetState($TabContextMenu_Item1, $GUI_ENABLE)
	    GUICtrlSetState($EditMenu_zeile_duplizieren, $GUI_ENABLE)

	   _GUICtrlToolbar_SetButtonState($hToolbar, $id10, $TBSTATE_ENABLED)
	   _GUICtrlToolbar_SetButtonState($hToolbar, $id16, $TBSTATE_ENABLED)
	   _GUICtrlToolbar_SetButtonState($hToolbar, $id29, $TBSTATE_ENABLED)



	    if StringTrimLeft($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], StringInStr($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], ".", 0, -1)) = $Autoitextension Then ;Nur bei au3 Dateien
		GUICtrlSetState($ProjectMenu_item9, $GUI_ENABLE)
		If $hidedebug = "false" Then GUICtrlSetState($AnsichtMenu_fenster_unten_umschalten, $GUI_ENABLE)
		If $hidefunctionstree = "false" Then GUICtrlSetState($AnsichtMenu_fenster_rechts_umschalten, $GUI_ENABLE)

		_GUICtrlToolbar_SetButtonState($hToolbar, $id21, $TBSTATE_ENABLED)
		_GUICtrlToolbar_SetButtonState($hToolbar, $id14, $TBSTATE_ENABLED)
		_GUICtrlToolbar_SetButtonState($hToolbar, $id17, $TBSTATE_ENABLED)
		_GUICtrlToolbar_SetButtonState($hToolbar, $id18, $TBSTATE_ENABLED)

		GUICtrlSetState($EditMenu_item10, $GUI_ENABLE)
		GUICtrlSetState($EditMenu_item11, $GUI_ENABLE)
		GUICtrlSetState($EditMenu_item12, $GUI_ENABLE)

		GUICtrlSetState($Tools_menu_item1, $GUI_ENABLE)
		GUICtrlSetState($Tools_menu_debugging, $GUI_ENABLE)
		GUICtrlSetState($Tools_menu_createUDFheader, $GUI_ENABLE)
		GUICtrlSetState($Tools_menu_AutoIt3Wrapper_GUI, $GUI_ENABLE)
;~ 		GUICtrlSetState($Tools_menu_organizeincludes, $GUI_ENABLE)
		GUICtrlSetState($Tools_menu_ParameterEditor, $GUI_ENABLE)
		endif

	Else

		If $Plugin_Handle[_GUICtrlTab_GetCurFocus($htab)] <> "-1" Then
			_Check_tabs_for_changes()
			GUICtrlSetState($Dateimenue_Drucken, $GUI_DISABLE)
			_GUICtrlToolbar_SetButtonState($hToolbar, $id10, $TBSTATE_ENABLED)
			_GUICtrlToolbar_SetButtonState($hToolbar, $id29, $TBSTATE_ENABLED)
			GUICtrlSetState($TabContextMenu_Item1, $GUI_ENABLE)
			GUICtrlSetState($EditMenu_item3, $GUI_ENABLE)
			GUICtrlSetState($EditMenu_item4, $GUI_ENABLE)
			GUICtrlSetState($EditMenu_item5, $GUI_ENABLE)
			GUICtrlSetState($EditMenu_item6, $GUI_ENABLE)
			GUICtrlSetState($EditMenu_item7, $GUI_ENABLE)
			GUICtrlSetState($EditMenu_item8, $GUI_ENABLE)
			GUICtrlSetState($EditMenu_item9, $GUI_ENABLE)
			GUICtrlSetState($EditMenu_item11, $GUI_ENABLE)
			GUICtrlSetState($EditMenu_item12, $GUI_ENABLE)
			GUICtrlSetState($FileMenu_item1c, $GUI_DISABLE)
			GUICtrlSetState($EditMenu_zeile_duplizieren, $GUI_ENABLE)
		EndIf
	EndIf

	If $SKRIPT_LAUEFT = 1 Then
		_GUICtrlToolbar_SetButtonState($hToolbar, $id14, $TBSTATE_INDETERMINATE)
		GUICtrlSetState($ProjectMenu_item9, $GUI_DISABLE)
		_GUICtrlToolbar_SetButtonState($hToolbar, $id15, $TBSTATE_ENABLED)
		GUICtrlSetState($ProjectMenu_item10, $GUI_ENABLE)
		GUICtrlSetState($ProjectMenu_item8, $GUI_DISABLE)
		_GUICtrlToolbar_SetButtonState($hToolbar, $id7, $TBSTATE_INDETERMINATE)

	Else
		_GUICtrlToolbar_SetButtonState($hToolbar, $id15, $TBSTATE_INDETERMINATE)
		GUICtrlSetState($ProjectMenu_item10, $GUI_DISABLE)
		GUICtrlSetState($ProjectMenu_item8, $GUI_ENABLE)
		_GUICtrlToolbar_SetButtonState($hToolbar, $id7, $TBSTATE_ENABLED)
	EndIf
	_deaktiviere_Buttons_fuer_Editormodus()
	If _GUICtrlTab_GetItemCount($htab) < 1 Then Return
	If Not IsDeclared("buildtree") Then $buildtree = 1
	If $buildtree = 1 Then AdlibRegister("_Build_Scripttree");_Build_Scripttree(stringtrimleft($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], stringinstr($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], "\", 0, -1)), _GUICtrlTab_GetCurFocus($htab))
EndFunc   ;==>_Check_Buttons

Func _Schuetze_Wichtige_daten($file)
	If $file = @DesktopDir Then Return False
	If $file = @MyDocumentsDir Then Return False
	If $file = $Projectfolder Then Return False

	If $file = $Offenes_Projekt & "\" & IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "mainfile", "#ERROR#") Then
		MsgBox(262144 + 16, _Get_langstr(25), StringTrimLeft($file, StringInStr($file, "\", 0, -1)) & " " & _Get_langstr(119), 0, $StudioFenster)
		Return False
	EndIf

	If $file = $Offenes_Projekt & "\project.isn" Then
		MsgBox(262144 + 16, _Get_langstr(25), _Get_langstr(120), 0, $StudioFenster)
		Return False
	EndIf
	Return True
EndFunc   ;==>_Schuetze_Wichtige_daten

Func _Try_to_move_file()
	If _GUICtrlTreeView_GetSelection($hTreeview) = 0 Then Return
	If _WinAPI_PathIsRoot(_GUICtrlTVExplorer_GetSelected($hWndTreeview)) Then Return
	$file = _GUICtrlTVExplorer_GetSelected($hWndTreeview)

	$alreadyopen = _GUICtrlTab_FindTab($htab, StringTrimLeft($file, StringInStr($file, "\", 0, -1)))
	If $alreadyopen <> -1 Then
		$res = _ArraySearch($Datei_pfad, $file)
		If $res <> -1 Then
			$alreadyopen = $res
		Else
			$alreadyopen = -1
		EndIf
	EndIf
	If $alreadyopen = -1 Then
		$sourcefile = _GUICtrlTVExplorer_GetSelected($hWndTreeview)
		If _Schuetze_Wichtige_daten($sourcefile) = False Then Return
		If _FileInUse($sourcefile) = 1 Then
			MsgBox(262144 + 16, _Get_langstr(25), _Get_langstr(951), 0, $StudioFenster)
			Return
		EndIf
		If _GUICtrlTVExplorer_GetSelected($hWndTreeview) = $Offenes_Projekt Then Return
		If $Studiomodus = 1 Then
			$destenationfolder = _WinAPI_BrowseForFolderDlg($Offenes_Projekt, _Get_langstr(152), $BIF_RETURNONLYFSDIRS, 0, 0, $Studiofenster)
		Else
			$destenationfolder = _WinAPI_BrowseForFolderDlg("", _Get_langstr(152), $BIF_RETURNONLYFSDIRS, 0, 0, $Studiofenster)
		EndIf
		If @error Or $destenationfolder = "" Then
			Return
		Else
			If StringInStr(FileGetAttrib($sourcefile), "D") Then
				DirMove($sourcefile, $destenationfolder & "\", 1)
			Else
				FileMove($sourcefile, $destenationfolder, 0)
			EndIf
		EndIf

		_Update_Treeview()
	Else
		MsgBox(262144 + 16, _Get_langstr(25), StringTrimLeft($file, StringInStr($file, "\", 0, -1)) & " " & _Get_langstr(78), 0, $StudioFenster)
	EndIf
EndFunc   ;==>_Try_to_move_file

Func _Rename_File()
	If _GUICtrlTreeView_GetSelection($hTreeview) = 0 Then Return
	If _WinAPI_PathIsRoot(_GUICtrlTVExplorer_GetSelected($hWndTreeview)) Then Return
;~ 	if StringReplace(StringTrimLeft(_GUICtrlTreeView_GetTree($hTreeview, _GUICtrlTreeView_GetSelection($hTreeview)), StringInStr(_GUICtrlTreeView_GetTree($hTreeview, _GUICtrlTreeView_GetSelection($hTreeview)), "|")), $Delim1, $Delim) = iniread($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "name", "#ERROR#") then
	If $Offenes_Projekt = _GUICtrlTVExplorer_GetSelected($hWndTreeview) Then
		_Zeige_Projekteinstellungen("projectproberties")
		_Rename_Project()
		Return ;cannot rename root
	EndIf

	$file = _GUICtrlTVExplorer_GetSelected($hWndTreeview)
	$oldname = StringTrimLeft($file, StringInStr($file, "\", 0, -1))
	If _Schuetze_Wichtige_daten($file) = False Then Return
	If _FileInUse($file) = 1 Then
		MsgBox(262144 + 16, _Get_langstr(25), _Get_langstr(951), 0, $StudioFenster)
		Return
	EndIf
	$alreadyopen = _GUICtrlTab_FindTab($htab, StringTrimLeft($file, StringInStr($file, "\", 0, -1)))
	If $alreadyopen <> -1 Then
		$res = _ArraySearch($Datei_pfad, $file)
		If $res <> -1 Then
			$alreadyopen = $res
		Else
			$alreadyopen = -1
		EndIf
	EndIf

	$Projektbaum_ist_bereit = 0 ;Sperre Projektbaum

	If $alreadyopen = -1 Then
		If FileGetAttrib($file) = "D" Then
			$line = InputBox(_Get_langstr(145), _Get_langstr(145), $oldname, "", 200, 150, Default, Default, -1, $StudioFenster)
			If $line = "" Then Return
			If @error > 0 Then Return
			DirMove($file, StringTrimRight($file, StringLen($oldname)) & $line, 1)
		Else
			$line = InputBox(_Get_langstr(117), _Get_langstr(118), $oldname, "", 200, 150, Default, Default, -1, $StudioFenster)
			If $line = "" Then Return
			If @error > 0 Then Return
			FileMove($file, StringTrimRight($file, StringLen($oldname)) & $line, 0)

		EndIf
		If $file = StringTrimRight($file, StringLen($oldname)) & $line Then
			Sleep(250)
			$Projektbaum_ist_bereit = 1
			Return
		EndIf

		_GUICtrlTreeView_BeginUpdate($hTreeview)
		_Speichere_TVExplorer($hTreeview) ;Speichere geöffnete Elemente
		_GUICtrlTVExplorer_AttachFolder($hTreeview)
		_GUICtrlTVExplorer_Expand($hTreeview, StringTrimRight($file, StringLen($oldname)) & $line, 1)
		_Lade_TVExplorer($hTreeview) ;Geöffnete Elemente wiederherstellen
		_GUICtrlTreeView_EndUpdate($hTreeview)

	Else
		MsgBox(262144 + 16, _Get_langstr(25), StringTrimLeft($file, StringInStr($file, "\", 0, -1)) & " " & _Get_langstr(78), 0, $StudioFenster)
	EndIf
	FileChangeDir(@ScriptDir)
	Sleep(250)
	$Projektbaum_ist_bereit = 1
EndFunc   ;==>_Rename_File

Func _Export_File()
	If _GUICtrlTreeView_GetSelection($hTreeview) = 0 Then Return
	If $Studiomodus = 2 Then Return
	If _GUICtrlTVExplorer_GetSelected($hWndTreeview) = $Offenes_Projekt Then Return
	$file = _GUICtrlTVExplorer_GetSelected($hWndTreeview)
	$filename = StringTrimLeft($file, StringInStr($file, "\", 0, -1))
	If FileGetAttrib($file) = "D" Then
		$line = FileSaveDialog(_Get_langstr(146), "::{20D04FE0-3AEA-1069-A2D8-08002B30309D}", "All (*.*)", 18, $filename, $StudioFenster)
		If $line = "" Then Return
		If @error > 0 Then Return
		;dircopy($file,$line,1)
		_FileOperationProgress($file & "\*.*", $line, 1, $FO_COPY, $FOF_SIMPLEPROGRESS + $FOF_NOCONFIRMATION)
		If @extended == 1 Then ;ERROR
			Return
		EndIf
	Else
		$line = FileSaveDialog(_Get_langstr(73), "::{20D04FE0-3AEA-1069-A2D8-08002B30309D}", "All (*.*)", 18, $filename, $StudioFenster)
		If $line = "" Then Return
		If @error > 0 Then Return
		;filecopy($file,$line,1)
		$line = StringTrimRight($line, StringLen($line) - StringInStr($line, "\", 0, -1))
		_FileOperationProgress($file, $line, 1, $FO_COPY, $FOF_SIMPLEPROGRESS + $FOF_NOCONFIRMATION)
		If @extended == 1 Then ;ERROR
			Return
		EndIf

	EndIf
	_Write_log($filename & " " & _Get_langstr(147))
	MsgBox(262144 + 64, _Get_langstr(61), _Get_langstr(164), 0, $StudioFenster)
	FileChangeDir(@ScriptDir)
EndFunc   ;==>_Export_File

Func _Add_File_to_Backuplist($str)
	$file = FileOpen($Backupcache, 9)
	If $file = -1 Then
		MsgBox(0, "Error", "Can not add file to backupcache! Maybe you do not have write access to this folder!")
	EndIf
	FileWriteLine($file, $str)
	FileClose($file)
EndFunc   ;==>_Add_File_to_Backuplist

Func _Backup_Files()

	If $Offenes_Projekt = "" Then Return
	If $Can_open_new_tab = 0 Then Return
	If _Pruefe_auf_Type3_Plugin($Plugin_Platzhalter_BackupErstellen) <> -1 then return ;Platzhalter für Plugin
;~ 	$current_window_focus = WinGetTitle("[ACTIVE]", "")

	_Write_log(_Get_langstr(122), "368DB6")
;~ 	WinSetState($current_window_focus, "", @SW_SHOW)
;~
;~ 	WinActivate($current_window_focus, "")
;~ 	WinSetOnTop($current_window_focus, "", 1)
;~ 	WinSetOnTop($current_window_focus, "", 0)
	$file = FileOpen($Backupcache, 0)
	If $file = -1 Then Return
	GUISetCursor(1, 0, $studiofenster)
	Local $Ordnerstruktur = ""
	$Ordnerstruktur = $Autobackup_Ordnerstruktur
	$Ordnerstruktur = StringReplace($Ordnerstruktur, "%mday%", @MDAY)
	$Ordnerstruktur = StringReplace($Ordnerstruktur, "%mon%", @MON)
	$Ordnerstruktur = StringReplace($Ordnerstruktur, "%year%", @YEAR)
	$Ordnerstruktur = StringReplace($Ordnerstruktur, "%hour%", @HOUR)
	$Ordnerstruktur = StringReplace($Ordnerstruktur, "%min%", @MIN)
	$Ordnerstruktur = StringReplace($Ordnerstruktur, "%sec%", @SEC)
	$Anzahl_Dateien = 0

	If $backupmode = 1 Then
		$Ordnerstruktur = StringReplace($Ordnerstruktur, "%projectname%", $Offenes_Projekt_name)
		If $Backupfolder = $Standardordner_Backups Then
			$Desfolder = $Arbeitsverzeichnis & "\" & $Backupfolder & "\" & $Ordnerstruktur & "\*.*"
		Else
			$Desfolder = $Backupfolder & "\" & $Ordnerstruktur & "\*.*"
		EndIf
	EndIf
	If $backupmode = 2 Then
		$Ordnerstruktur = StringReplace($Ordnerstruktur, "%projectname%", "")
		$Desfolder = $Offenes_Projekt & "\" & $Backupfolder & "\" & $Ordnerstruktur & "\*.*"
	EndIf
	If StringInStr($Desfolder, "\\") Then $Desfolder = StringReplace($Desfolder, "\\", "\")
	While 1
		$line = FileReadLine($file)
		If @error = -1 Then ExitLoop
		FileCopy($line, $Desfolder, 9)
		$Anzahl_Dateien = $Anzahl_Dateien + 1
	WEnd
	FileClose($file)
	FileSetTime($Desfolder, @YEAR & @MON & @MDAY & @HOUR & @MIN & @SEC, 0, 1) ;Aktualisiere Zeitstempel der neuen Dateien
	If $enabledeleteoldbackups = "true" Then
		If $backupmode = 1 Then
			If $Backupfolder = $Standardordner_Backups Then
				_FileDeleteAfterXDays($Arbeitsverzeichnis & "\" & $Backupfolder & "\", $deleteoldbackupsafter, True, True, True, False)
			Else
				_FileDeleteAfterXDays($Backupfolder & "\", $deleteoldbackupsafter, True, True, True, False)
			EndIf
		EndIf
		If $backupmode = 2 Then _FileDeleteAfterXDays($Offenes_Projekt & "\" & $Backupfolder & "\", $deleteoldbackupsafter, True, True, True, False)
	EndIf
	GUISetCursor(2, 0, $StudioFenster)
	_Write_log(StringReplace(_Get_langstr(899), "%1", $Anzahl_Dateien), "368DB6")
EndFunc   ;==>_Backup_Files



Func _Rename_Project()
	If $Templatemode = 1 Then Return
	If $Tempmode = 1 Then Return
	$i = MsgBox(262144 + 48 + 4, _Get_langstr(178), _Get_langstr(227), 0, $Projekteinstellungen_GUI)
	If $i = 6 Then
		$var = InputBox(_Get_langstr(226), _Get_langstr(226), IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "name", ""), "", 200, 150, Default, Default, -1, $Projekteinstellungen_GUI)
		If $var = "" Then Return
		If $var = IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "name", "") Then Return
		If @error Then Return
		$var = StringReplace($var, "|", "")
		$var = StringReplace($var, "?", "")
		$var = StringReplace($var, "*", "")
		$var = StringReplace($var, "\", "")
		$var = StringReplace($var, "/", "")
		$var = StringReplace($var, '"', "")
		$var = StringReplace($var, "'", "")
		If $var = "" Then Return
		IniWrite($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "name", $var)
		$var2 = MsgBox(262144 + 32 + 4, _Get_langstr(48), _Get_langstr(804), 0, $Projekteinstellungen_GUI)

		$Offenes_Projekt_backup = $Offenes_Projekt
		$Offenes_Projekt_Ordner = StringTrimRight($Offenes_Projekt, StringLen($Offenes_Projekt) - StringInStr($Offenes_Projekt, "\", 0, -1))
		_Hide_Projectproberties()
		_Close_Project("false")
		If $var2 = 6 Then
			;Projektordner umbenennen
			If FileExists($Offenes_Projekt_Ordner & $var) Then
				If $Offenes_Projekt_Ordner & $var <> $Offenes_Projekt_backup Then MsgBox(262144 + 48, _Get_langstr(25), _Get_langstr(805), 0, $Studiofenster)
			Else
				DirMove($Offenes_Projekt_backup, $Offenes_Projekt_Ordner & $var, 0)
				$Offenes_Projekt_backup = $Offenes_Projekt_Ordner & $var
			EndIf
		EndIf
		_Load_Project_by_Foldername($Offenes_Projekt_backup)
		MsgBox(262144 + 64, _Get_langstr(178), _Get_langstr(392), 0, $Studiofenster)
	EndIf
EndFunc   ;==>_Rename_Project

Func _Rename_Author()
	$var = InputBox(_Get_langstr(229), _Get_langstr(229), IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "author", ""), "", 200, 150, Default, Default, -1, $Projekteinstellungen_GUI)
	If @error = 0 Then
		If $var = IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "author", "") Then Return
		IniWrite($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "author", $var)
		MsgBox(262144 + 64, _Get_langstr(178), _Get_langstr(230), 0, $Projekteinstellungen_GUI)
		_Zeige_Projekteinstellungen("projectproberties")
	EndIf
EndFunc   ;==>_Rename_Author

Func _Rename_Comment()
	$var = InputBox(_Get_langstr(231), _Get_langstr(231), IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "comment", ""), "", 200, 150, Default, Default, -1, $Projekteinstellungen_GUI)
	If @error = 0 Then
		If $var = IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "comment", "") Then Return
		IniWrite($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "comment", $var)
		MsgBox(262144 + 64, _Get_langstr(178), _Get_langstr(232), 0, $Projekteinstellungen_GUI)
		_Zeige_Projekteinstellungen("projectproberties")
	EndIf

EndFunc   ;==>_Rename_Comment

Func _chance_Version()
	$var = InputBox(_Get_langstr(233), _Get_langstr(233), IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "version", ""), "", 200, 150, Default, Default, -1, $Projekteinstellungen_GUI)
	If @error = 0 Then
		If $var = IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "version", "") Then Return
		IniWrite($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "version", $var)
		MsgBox(262144 + 64, _Get_langstr(178), _Get_langstr(234), 0, $Projekteinstellungen_GUI)
		_Zeige_Projekteinstellungen("projectproberties")
	EndIf
EndFunc   ;==>_chance_Version

Func _Hide_Projectproberties()
	GUISetState(@SW_ENABLE, $StudioFenster)
	GUISetState(@SW_HIDE, $Projekteinstellungen_GUI)
EndFunc   ;==>_Hide_Projectproberties





Func _stop_Project_timer()
	Local $timer, $Secs, $Mins, $Hour, $time
	Local $timer1, $Secs1, $Mins1, $Hour1, $Time1
	Local $timer2, $Secs2, $Mins2, $Hour2, $Time2
	If $Offenes_Projekt = "" Then Return
	If $Studiomodus = 2 Then Return
	If $Templatemode = 1 Then Return
	$dif = TimerDiff($Project_timer)
	$dif = Int($dif)
	$time = $dif + IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "time", 0)
	_TicksToTime(IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "time", 0), $Hour, $Mins, $Secs)
	_TicksToTime($dif, $Hour1, $Mins1, $Secs1)
	_TicksToTime($time, $Hour2, $Mins2, $Secs2)

	;msgbox(0,"info","Timer Stopped!"&@crlf&"Alte Zeit: "&$Hour&"h "&$Mins&"m "&$Secs&" s ("&iniread($Offenes_Projekt&"\project.isn","ISNAUTOITSTUDIO","time","0")&")"&@crlf&"Vergangene Zeit:"&$Hour1&"h "&$Mins1&"m "&$Secs1&"s ("&$dif&")"&@crlf&"Neue Zeit:"&$Hour2&"h "&$Mins2&"m "&$Secs2&"s ("&$time&")")
	IniWrite($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "time", $time)
	Return $dif
EndFunc   ;==>_stop_Project_timer

Func _Start_Project_timer()
	If $Studiomodus = 2 Then Return
	If $Templatemode = 1 Then Return
	Local $timer, $Secs, $Mins, $Hour, $time
	$time = IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "time", 0)
	_TicksToTime($time, $Hour, $Mins, $Secs)
	If $Hour > 9 Then _Earn_trophy(10, 3)
	If $Hour > 0 Or $Mins > 29 Then _Earn_trophy(6, 1)
	$Project_timer = TimerInit()
EndFunc   ;==>_Start_Project_timer

Func _topSec()
	$Geheimcount = $Geheimcount + 1
	If $Geheimcount > 2 Then _Earn_trophy(11, 3)
EndFunc   ;==>_topSec

Func _Load_Languages()
	GUICtrlSetData($Combo_Sprachen[0], "", "")
	$Search = FileFindFirstFile(@ScriptDir & "\data\language\*.lng")
	If $Search = -1 Then
		GUICtrlSetData($Combo_Sprachen[0], "", "ERROR")
		Return
	EndIf
	$filetypes = ""
	$i = 1
	While 1
		$file = FileFindNextFile($Search)
		If @error Then ExitLoop

		$filetypes = $filetypes & IniRead(@ScriptDir & "\data\language\" & $file, "ISNAUTOITSTUDIO", "language", "ERROR") & "|"
		$Combo_Sprachen[$i] = $file
		$i = $i + 1
	WEnd
	FileClose($Search)
	GUICtrlSetData($Combo_Sprachen[0], $filetypes, IniRead(@ScriptDir & "\data\language\" & $Languagefile, "ISNAUTOITSTUDIO", "language", "ERROR"))
	GUICtrlSetData($langchooser, $filetypes, IniRead(@ScriptDir & "\data\language\" & $Languagefile, "ISNAUTOITSTUDIO", "language", "ERROR"))

EndFunc   ;==>_Load_Languages

Func _Select_Language()
	GUICtrlSetData($Sprachen_Label_Version, _Get_langstr(619) & " " & IniRead(@ScriptDir & "\data\language\" & $Combo_Sprachen[_GUICtrlComboBox_GetCurSel($Combo_Sprachen[0]) + 1], "ISNAUTOITSTUDIO", "version", ""))
	GUICtrlSetData($Sprachen_Label_Kommentar, _Get_langstr(133) & " " & IniRead(@ScriptDir & "\data\language\" & $Combo_Sprachen[_GUICtrlComboBox_GetCurSel($Combo_Sprachen[0]) + 1], "ISNAUTOITSTUDIO", "comment", ""))
	GUICtrlSetData($Sprachen_Label_Author, _Get_langstr(132) & " " & IniRead(@ScriptDir & "\data\language\" & $Combo_Sprachen[_GUICtrlComboBox_GetCurSel($Combo_Sprachen[0]) + 1], "ISNAUTOITSTUDIO", "author", ""))
EndFunc   ;==>_Select_Language

Func _List_Plugins()
	_GUICtrlListView_DeleteAllItems(GUICtrlGetHandle($Pugins_Listview))
	$Search = FileFindFirstFile($Pluginsdir & "\*.*")
	If $Search = -1 Then
		Return
	EndIf
	While 1
		$file = FileFindNextFile($Search)
		If @error Then ExitLoop
		If FileGetAttrib($Pluginsdir & "\" & $file) = "D" Then
			If FileExists($Pluginsdir & "\" & $file & "\plugin.ini") Then
				$filetypes = IniRead($Pluginsdir & "\" & $file & "\plugin.ini", "plugin", "filetypes", "") & "|"
				$IconPfad = iniread($Pluginsdir & "\" & $file & "\plugin.ini","plugin","toolsmenuiconid","193")
				if StringInStr($IconPfad,".ico") Then
				_GUICtrlListView_AddItem($Pugins_Listview, IniRead($Pluginsdir & "\" & $file & "\plugin.ini", "plugin", "name", ""),_GUIImageList_AddIcon($hToolBarImageListNorm,$Pluginsdir & "\" & $file & "\"&$IconPfad, 0))
				else
				_GUICtrlListView_AddItem($Pugins_Listview, IniRead($Pluginsdir & "\" & $file & "\plugin.ini", "plugin", "name", ""),_GUIImageList_AddIcon($hToolBarImageListNorm, $smallIconsdll, number($IconPfad)-1))
				endif
				_GUICtrlListView_AddSubItem($Pugins_Listview, _GUICtrlListView_GetItemCount($Pugins_Listview) - 1, StringReplace(IniRead($Pluginsdir & "\" & $file & "\plugin.ini", "plugin", "filetypes", ""), "|", ", "), 1)
				If IniRead($Pluginsdir & "\" & $file & "\plugin.ini", "plugin", "active", "0") = 1 Then
					_GUICtrlListView_AddSubItem($Pugins_Listview, _GUICtrlListView_GetItemCount($Pugins_Listview) - 1, _Get_langstr(136), 2)

				Else
					_GUICtrlListView_AddSubItem($Pugins_Listview, _GUICtrlListView_GetItemCount($Pugins_Listview) - 1, _Get_langstr(137), 2)
				EndIf
				_GUICtrlListView_AddSubItem($Pugins_Listview, _GUICtrlListView_GetItemCount($Pugins_Listview) - 1, $Pluginsdir & "\" & $file & "\plugin.ini", 3)
			EndIf
		EndIf
	WEnd
	FileClose($Search)
EndFunc   ;==>_List_Plugins

Func _load_plugindetails()
	AdlibUnRegister("_load_plugindetails")
	If _GUICtrlListView_GetSelectionMark($Pugins_Listview) = -1 Then
		GUICtrlSetState($Plugin_Button, $GUI_DISABLE)
		GUICtrlSetState($Plugin_Button2, $GUI_DISABLE)
		GUICtrlSetData($Plugin_name, _Get_langstr(142))
		GUICtrlSetData($Plugin_author, _Get_langstr(132))
		GUICtrlSetData($Plugin_version, _Get_langstr(131))
		GUICtrlSetData($Plugin_comment, _Get_langstr(133))
		GUICtrlSetData($Config_Plugin_type_label, _Get_langstr(1056))
		GUICtrlSetData($Config_Plugin_dateitypen_label, _Get_langstr(1057))
		GUICtrlSetData($Config_Plugin_verwendeteplatzhalter_label, _Get_langstr(1055))
		GUICtrlSetImage($Plugin_pci, $Def_PluginPic)
		Return
	EndIf
	GUICtrlSetState($Plugin_Button, $GUI_ENABLE)
	GUICtrlSetState($Plugin_Button2, $GUI_ENABLE)
	$plng = _GUICtrlListView_GetItemText($Pugins_Listview, _GUICtrlListView_GetSelectionMark($Pugins_Listview), 3)
	GUICtrlSetData($Plugin_name, _Get_langstr(142) & " " & IniRead($plng, "plugin", "name", ""))
	GUICtrlSetData($Plugin_author, _Get_langstr(132) & " " & IniRead($plng, "plugin", "author", ""))
	GUICtrlSetData($Plugin_version, _Get_langstr(131) & " " & IniRead($plng, "plugin", "version", ""))
	GUICtrlSetData($Plugin_comment, _Get_langstr(133) & " " & IniRead($plng, "plugin", "comment", ""))
	GUICtrlSetData($Config_Plugin_type_label, _Get_langstr(1056) & " " & IniRead($plng, "plugin", "plugintype", "1"))
	GUICtrlSetData($Config_Plugin_dateitypen_label, _Get_langstr(1057) & " " & StringReplace(IniRead($plng, "plugin", "filetypes", ""), "|", ", "))
	GUICtrlSetData($Config_Plugin_verwendeteplatzhalter_label, _Get_langstr(1055) & " " & StringReplace(IniRead($plng, "plugin", "isnplaceholders", ""), "|", ", "))
	$pic = StringTrimRight($plng, StringLen($plng) - StringInStr($plng, ".", 0, -1)) & "jpg"
	If FileExists($pic) Then
		GUICtrlSetImage($Plugin_pci, $pic)
	Else
		GUICtrlSetImage($Plugin_pci, $Def_PluginPic)
	EndIf

	If IniRead($plng, "plugin", "active", "0") = 1 Then
		GUICtrlSetData($Plugin_Button, _Get_langstr(140))
		Button_AddIcon($Plugin_Button, $smallIconsdll, 1173, 0)
	Else
		GUICtrlSetData($Plugin_Button, _Get_langstr(141))
		Button_AddIcon($Plugin_Button, $smallIconsdll, 314, 0)
	EndIf

EndFunc   ;==>_load_plugindetails

Func _Toggle_Pluginstatus()
	If _GUICtrlListView_GetSelectionMark($Pugins_Listview) = -1 Then Return
	$oldsec = _GUICtrlListView_GetSelectionMark($Pugins_Listview)
	$plng = _GUICtrlListView_GetItemText($Pugins_Listview, _GUICtrlListView_GetSelectionMark($Pugins_Listview), 3)
	If IniRead($plng, "plugin", "active", "0") = 0 Then
		IniWrite($plng, "plugin", "active", "1")
	Else
		IniWrite($plng, "plugin", "active", "0")
	EndIf
	_load_plugindetails()
	_List_Plugins()
	_GUICtrlListView_SetItemSelected($Pugins_Listview, $oldsec, True, True)

EndFunc   ;==>_Toggle_Pluginstatus

Func _Delete_Plugin()
	If _GUICtrlListView_GetSelectionMark($Pugins_Listview) = -1 Then Return
	$plng = _GUICtrlListView_GetItemText($Pugins_Listview, _GUICtrlListView_GetSelectionMark($Pugins_Listview), 3)
	$i = MsgBox(262144 + 4 + 32, _Get_langstr(48), _Get_langstr(144) & @CRLF & @CRLF & _Get_langstr(142) & " " & IniRead($plng, "plugin", "name", "") & @CRLF & _Get_langstr(132) & " " & IniRead($plng, "plugin", "author", "") & @CRLF & _Get_langstr(131) & " " & IniRead($plng, "plugin", "version", ""), 0, $Config_GUI)
	If $i = 6 Then

		DirRemove(StringTrimRight($plng, StringLen($plng) - StringInStr($plng, "\", 0, -1) + 1), 1)

		_List_Plugins()
		_load_plugindetails()
	EndIf
EndFunc   ;==>_Delete_Plugin

;********************************************************************************
;Recursive search for filemask
;********************************************************************************

Func _GetFileList($T_DIR, $T_MASK)
	Dim $N_DIRNAMES[200000] ; max number of directories that can be scanned
	Local $N_DIRCOUNT = 0
	Local $N_FILE
	Local $N_SEARCH
	Local $N_TFILE
	Local $N_OFILE
	Local $T_FILENAMES
	Local $T_FILECOUNT
	Local $T_DIRCOUNT = 1
	; remove the end \ If specified
	If StringRight($T_DIR, 1) = "\" Then $T_DIR = StringTrimRight($T_DIR, 1)
	$N_DIRNAMES[$T_DIRCOUNT] = $T_DIR
	; Exit if base dir doesn't exists
	If Not FileExists($T_DIR) Then Return 0
	; keep on looping until all directories are scanned
	While $T_DIRCOUNT > $N_DIRCOUNT
		$N_DIRCOUNT = $N_DIRCOUNT + 1
		; find all subdirs in this directory and save them in a array
		$N_SEARCH = FileFindFirstFile($N_DIRNAMES[$N_DIRCOUNT] & "\*.*")
		While 1
			$N_FILE = FileFindNextFile($N_SEARCH)
			If @error Then ExitLoop
			; skip these references
			If $N_FILE = "." Or $N_FILE = ".." Then ContinueLoop
			$N_TFILE = $N_DIRNAMES[$N_DIRCOUNT] & "\" & $N_FILE
			; if Directory than add to the list of directories to be processed
			If StringInStr(FileGetAttrib($N_TFILE), "D") > 0 Then
				$T_DIRCOUNT = $T_DIRCOUNT + 1
				$N_DIRNAMES[$T_DIRCOUNT] = $N_TFILE
			EndIf
		WEnd
		FileClose($N_SEARCH)
		; find all Files that mtach the MASK
		$N_SEARCH = FileFindFirstFile($N_DIRNAMES[$N_DIRCOUNT] & "\" & $T_MASK)
		If $N_SEARCH = -1 Then ContinueLoop
		While 1
			$N_FILE = FileFindNextFile($N_SEARCH)
			If @error Then ExitLoop
			; skip these references
			If $N_FILE = "." Or $N_FILE = ".." Then ContinueLoop
			$N_TFILE = $N_DIRNAMES[$N_DIRCOUNT] & "\" & $N_FILE
			; if Directory than add to the list of directories to be processed
			If StringInStr(FileGetAttrib($N_TFILE), "D") = 0 Then
				$T_FILENAMES = $T_FILENAMES & $N_TFILE & @CR
				$T_FILECOUNT = $T_FILECOUNT + 1
				;MsgBox(0,'filecount ' & $T_FILECOUNT ,$N_TFILE)
			EndIf
		WEnd
		FileClose($N_SEARCH)
	WEnd
	$T_FILENAMES = StringTrimRight($T_FILENAMES, 1)
	$N_OFILE = StringSplit($T_FILENAMES, @CR)
	Return($N_OFILE)
EndFunc   ;==>_GetFileList

Func _New_Folder()
	$str = InputBox(_Get_langstr(71), _Get_langstr(148), "", "", 200, 150, Default, Default, -1, $StudioFenster)
	If @error Then
		Return
	Else
		If $str = "" Then Return
		$Count = 0
		If $Studiomodus = 1 Then
			$projectfolderr = _WinAPI_BrowseForFolderDlg($Offenes_Projekt, _Get_langstr(149), $BIF_RETURNONLYFSDIRS, 0, 0, $Studiofenster)
		Else
			$projectfolderr = _WinAPI_BrowseForFolderDlg("", _Get_langstr(149), $BIF_RETURNONLYFSDIRS, 0, 0, $Studiofenster)
		EndIf
		If @error Or $projectfolderr = "" Then
			Return
		Else
			$str = StringReplace($str, "\", "")
			$str = StringReplace($str, "/", "")
			$str = StringReplace($str, "?", "")
			$str = StringReplace($str, "*", "")
			$str = StringReplace($str, "|", "")
			$str = StringReplace($str, ":", "")
			$str = StringReplace($str, "<", "")
			$str = StringReplace($str, ">", "")
			$str = StringReplace($str, "'", "")
			$str = StringReplace($str, '"', "")
			If DirCreate($projectfolderr & "\" & $str) = 1 Then _Write_log(_Get_langstr(150) & " (" & $str & ")")
			_Update_Treeview()
		EndIf
	EndIf
EndFunc   ;==>_New_Folder


Func _Make_New_File()
	If GUICtrlRead($newfile_filename) = "" Then
		MsgBox(262144 + 16, _Get_langstr(25), _Get_langstr(159), 0, $New_file_GUI)
		Return
	EndIf

	If GUICtrlRead($neue_datei_vorlagen_datei_combo) = "" And GUICtrlRead($neue_datei_radio2) = $GUI_CHECKED Then
		MsgBox(262144 + 16, _Get_langstr(25), _Get_langstr(746), 0, $New_file_GUI)
		Return
	EndIf

	GUISetState(@SW_ENABLE, $StudioFenster)
	GUISetState(@SW_HIDE, $New_file_GUI)
	If $Studiomodus = 1 Then

		$projectfolderr = _WinAPI_BrowseForFolderDlg($Offenes_Projekt, _Get_langstr(160), $BIF_RETURNONLYFSDIRS, 0, 0, $Studiofenster)
	Else
		$projectfolderr = _WinAPI_BrowseForFolderDlg("", _Get_langstr(160), $BIF_RETURNONLYFSDIRS, 0, 0, $Studiofenster)
	EndIf
	If @error Or $projectfolderr = "" Then
		Return
	Else
		$filename = GUICtrlRead($newfile_filename) & GUICtrlRead($combo_newfile)

		If GUICtrlRead($neue_datei_radio1) = $GUI_CHECKED Then
			$file = FileOpen($projectfolderr & "\" & $filename, 1)

			; Check if file opened for writing OK
			If $file = -1 Then
				MsgBox(0, "Error", "Unable to create new file. Maybe you do not have write access to this folder!")
				Return
			EndIf
			If GUICtrlRead($combo_newfile) = ".au3" Then
				FileWriteLine($file, ";" & $filename)
			EndIf

			If GUICtrlRead($combo_newfile) = ".isf" Then
				FileWriteLine($file, "#cs")
				FileWriteLine($file, "[gui]")
				FileWriteLine($file, "title=" & GUICtrlRead($newfile_filename))
				FileWriteLine($file, "breite=350")
				FileWriteLine($file, "hoehe=350")
				FileWriteLine($file, "style=-1")
				FileWriteLine($file, "exstyle=-1")
				FileWriteLine($file, "exstyle=-1")
				FileWriteLine($file, "bgcolour=0xF0F0F0")
				FileWriteLine($file, "bgimage=none")
				FileWriteLine($file, "handle=" & StringReplace(GUICtrlRead($newfile_filename), " ", "_"))
				FileWriteLine($file, "#ce")
			EndIf

			FileWriteLine($file, "")
			FileClose($file)
		Else ;Datei aus vorlage
			If IsArray($neue_Datei_erstellen_Vorlagendatei_combo_ARRAY) Then
				If GUICtrlRead($combo_newfile) = ".au3" Then
					;Ersetze Variablen
					Dim $aRecords
					_FileReadToArray($neue_Datei_erstellen_Vorlagendatei_combo_ARRAY[_GUICtrlComboBox_GetCurSel($neue_datei_vorlagen_datei_combo)], $aRecords)
					If IsArray($aRecords) Then
						For $x = 1 To $aRecords[0]
							;Alte Variablen (für Kompatibilität)
							$aRecords[$x] = StringReplace($aRecords[$x], "$FILENAME", $filename)
							$aRecords[$x] = StringReplace($aRecords[$x], "$AUTHOR", IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "author", ""))
							$aRecords[$x] = StringReplace($aRecords[$x], "$PROGRAMMVERSION", $Studioversion)
							$aRecords[$x] = StringReplace($aRecords[$x], "$STR30", _Get_langstr(30))
							$aRecords[$x] = StringReplace($aRecords[$x], "$COMMENT", IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "comment", ""))

							;Neue Variablen
							$aRecords[$x] = _Neue_Datei_erstellen_ersetze_Variablen($aRecords[$x], $filename, IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "author", ""), IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "comment", ""), IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "name", ""))
						Next
						_FileWriteFromArray($projectfolderr & "\" & $filename, $aRecords, 1)
					EndIf

				Else
					FileCopy($neue_Datei_erstellen_Vorlagendatei_combo_ARRAY[_GUICtrlComboBox_GetCurSel($neue_datei_vorlagen_datei_combo)], $projectfolderr & "\" & $filename, 9)
				EndIf


			EndIf
		EndIf
		$path = $projectfolderr

		$path = StringTrimLeft($projectfolderr, StringLen($Offenes_Projekt) + 1)
		$path = $path & "\"
		If $path = "\" Then $path = ""
		$path = $path & $filename
		_Write_log($filename & " " & _Get_langstr(161))
		_Update_Treeview()
		If GUICtrlRead($new_file_include_checkbox) = $GUI_CHECKED Then _Include_IT($path)
		If GUICtrlRead($new_file_open_checkbox) = $GUI_CHECKED Then Try_to_opten_file($projectfolderr & "\" & $filename)
	EndIf
EndFunc   ;==>_Make_New_File

Func _Include_IT($filepath)
	Try_to_opten_file($Offenes_Projekt & "\" & IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "mainfile", "#ERROR#"))
	Sleep(200)
	$wrapFind = False
	$pos = FindInTarget("#include", StringLen("#include"), SendMessage($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)], $SCI_GETLENGTH, 0, 0), 0)
	If $pos = -1 Then $pos = SendMessage($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)], $SCI_GETLENGTH, 0, 0)
	$line = Sci_GetLineFromPos($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)], $pos) + 1
	$posFind = -1
	If $pos = -1 Then Return
	Sci_AddLines($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)], '#include "' & $filepath & '"' & @CRLF, $line + 1)
EndFunc   ;==>_Include_IT

Func _Exclude_IT($file = "")
	If $file = "" Then Return
	Try_to_opten_file($Offenes_Projekt & "\" & IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "mainfile", "#ERROR#"))
	Sleep(200)

	For $x = 1 To Sci_GetLineCount($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)])
		$Zeilentext = Sci_GetLine($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)], $x)
		If StringInStr($Zeilentext, "#include") And StringInStr($Zeilentext, $file) Then
			$start = Sci_GetLineStartPos($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)], $x)
			$end = Sci_GetLineEndPos($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)], $x)
			Sci_SetSelection($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)], $start, $end)
			SendMessageString($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)], $SCI_REPLACESEL, 0, "")
			_Check_tabs_for_changes()
		EndIf
	Next
EndFunc   ;==>_Exclude_IT

Func _Directory_Is_Accessible($sPath)
    If Not StringInStr(FileGetAttrib($sPath), "D", 2) Then Return SetError(1, 0, 0)
    Local $iEnum = 0
    While FileExists($sPath & "\_test_" & $iEnum)
        $iEnum += 1
    WEnd
    Local $iSuccess = DirCreate($sPath & "\_test_" & $iEnum)
    Switch $iSuccess
        Case 1
            DirRemove($sPath & "\_test_" & $iEnum)
            Return True
        Case Else
            Return False
    EndSwitch
 EndFunc   ;==>_Directory_Is_Assesible

Func _Show_New_Filegui()
	GUICtrlSetData($newfile_filename, "")
	GUICtrlSetState($newfile_filename, $GUI_FOCUS)
	GUICtrlSetState($new_file_open_checkbox, $GUI_CHECKED)
	GUICtrlSetState($neue_datei_radio1, $GUI_CHECKED)
	_read_combo_new_file()
	_New_Filegui_Radio_event()
	GUISetState(@SW_DISABLE, $StudioFenster)
	GUISetState(@SW_SHOW, $New_file_GUI)
	WinActivate($New_file_GUI)
EndFunc   ;==>_Show_New_Filegui

Func _New_Filegui_Radio_event()
	If GUICtrlRead($neue_datei_radio1) = $GUI_CHECKED Then
		GUICtrlSetState($neue_datei_radiolabel1, $GUI_DISABLE)
		GUICtrlSetState($neue_datei_radiolabel2, $GUI_DISABLE)
		GUICtrlSetState($neue_datei_vorlagen_combo, $GUI_DISABLE)
		GUICtrlSetState($neue_datei_vorlagen_datei_combo, $GUI_DISABLE)
		GUICtrlSetData($neue_datei_vorlagen_combo, "", "")
		GUICtrlSetData($neue_datei_vorlagen_datei_combo, "", "")
	Else
		GUICtrlSetState($neue_datei_radiolabel1, $GUI_ENABLE)
		GUICtrlSetState($neue_datei_radiolabel2, $GUI_ENABLE)
		GUICtrlSetState($neue_datei_vorlagen_combo, $GUI_ENABLE)
		GUICtrlSetState($neue_datei_vorlagen_datei_combo, $GUI_ENABLE)
		ScanforTemplates_Combo()
		_Show_New_Filegui_Scan_for_files()
	EndIf
EndFunc   ;==>_New_Filegui_Radio_event

Func _Show_New_Filegui_Scan_for_files()
	If GUICtrlRead($neue_datei_radio1) = $GUI_CHECKED Then Return
	Local $array
	Local $first_item
	Local $files_string
	$array = _GetFileList($new_projectvorlage_combo_ARRAY[_GUICtrlComboBox_GetCurSel($neue_datei_vorlagen_combo) + 1], "*" & GUICtrlRead($combo_newfile))
	GUICtrlSetData($neue_datei_vorlagen_datei_combo, "", "")
	If Not IsArray($array) Then Return
	$files_string = ""
	$first_item = ""
	_ArrayDelete($array, 0)
	For $x = 0 To UBound($array) - 1
		If $x = 0 Then $first_item = StringTrimLeft($array[$x], StringInStr($array[$x], "\", 0, -1))
		$files_string = $files_string & StringTrimLeft($array[$x], StringInStr($array[$x], "\", 0, -1)) & "|"
	Next
	$neue_Datei_erstellen_Vorlagendatei_combo_ARRAY = $array
	GUICtrlSetData($neue_datei_vorlagen_datei_combo, $files_string, $first_item)
EndFunc   ;==>_Show_New_Filegui_Scan_for_files

;Suche nach Vrolagen

Func ScanforVorlagen_neue_Datei_erstellen($SourceFolder)
	Local $Search
	Local $file
	Local $FileAttributes
	Local $FullFilePath
	$Count = 0
	$Search = FileFindFirstFile($SourceFolder & "\*.*")
	_GUICtrlListView_DeleteAllItems(GUICtrlGetHandle($vorlagen_Listview_projectman))
	_GUICtrlListView_BeginUpdate($vorlagen_Listview_projectman)
	While 1
		If $Search = -1 Then
			ExitLoop
		EndIf
		$file = FileFindNextFile($Search)
		If @error Then ExitLoop
		$FullFilePath = $SourceFolder & "\" & $file
		$FileAttributes = FileGetAttrib($FullFilePath)
		If StringInStr($FileAttributes, "D") Then
			If FileExists($FullFilePath & "\project.isn") Then
				$Count = $Count + 1
				_GUICtrlListView_AddItem($vorlagen_Listview_projectman, IniRead($FullFilePath & "\project.isn", "ISNAUTOITSTUDIO", "name", "#ERROR#"), 10)
				$folder = StringTrimLeft($FullFilePath, StringInStr($FullFilePath, "\", 0, -1))
				_GUICtrlListView_AddSubItem($vorlagen_Listview_projectman, _GUICtrlListView_GetItemCount($vorlagen_Listview_projectman) - 1, IniRead($FullFilePath & "\project.isn", "ISNAUTOITSTUDIO", "author", ""), 1)
				_GUICtrlListView_AddSubItem($vorlagen_Listview_projectman, _GUICtrlListView_GetItemCount($vorlagen_Listview_projectman) - 1, $folder, 2)
			EndIf
		EndIf
	WEnd
	$Descending = False
	_GUICtrlListView_SimpleSort($vorlagen_Listview_projectman, $Descending, 0)
	_GUICtrlListView_SetItemSelected($vorlagen_Listview_projectman, -1, False, False)
	_GUICtrlListView_EndUpdate($vorlagen_Listview_projectman)
	GUICtrlSetData($Found_Vorlagen, $Count & " " & _Get_langstr(377))
EndFunc   ;==>ScanforVorlagen_neue_Datei_erstellen

Func _HIDE_New_Filegui()
	GUISetState(@SW_ENABLE, $StudioFenster)
	GUISetState(@SW_HIDE, $New_file_GUI)
EndFunc   ;==>_HIDE_New_Filegui

Func _read_combo_new_file()
	GUICtrlSetState($new_file_include_checkbox, $GUI_ENABLE)
	GUICtrlSetState($new_file_include_checkbox, $GUI_UNCHECKED)
	If GUICtrlRead($combo_newfile) = ".au3" Then
		_GUISetIcon($New_file_GUI, $smallIconsdll, 1788)
		GUICtrlSetData($combo_beschreibung, _Get_langstr(154))
		GUICtrlSetState($new_file_include_checkbox, $GUI_CHECKED)
	EndIf
	If GUICtrlRead($combo_newfile) = ".isf" Then
		_GUISetIcon($New_file_GUI, $smallIconsdll, 780)
		GUICtrlSetData($combo_beschreibung, _Get_langstr(153))
		GUICtrlSetState($new_file_include_checkbox, $GUI_CHECKED)
	EndIf
	If GUICtrlRead($combo_newfile) = ".ini" Then
		GUICtrlSetData($combo_beschreibung, _Get_langstr(155))
		_GUISetIcon($New_file_GUI, $smallIconsdll, 1176)
	EndIf

	If GUICtrlRead($combo_newfile) = ".txt" Then
		GUICtrlSetData($combo_beschreibung, _Get_langstr(156))
		_GUISetIcon($New_file_GUI, $smallIconsdll, 1176)
	EndIf
	GUICtrlSetData($combo_fileformat, GUICtrlRead($combo_newfile))
	If $Studiomodus = 2 Then
		GUICtrlSetState($new_file_include_checkbox, $GUI_UNCHECKED)
		GUICtrlSetState($new_file_include_checkbox, $GUI_DISABLE)
	EndIf
	_Show_New_Filegui_Scan_for_files()
EndFunc   ;==>_read_combo_new_file

Func _Show_new_Filgui_au3()
	GUICtrlSetData($combo_newfile, "")
	GUICtrlSetData($combo_newfile, ".au3|.isf|.ini|.txt", ".au3")
	_Show_New_Filegui()
EndFunc   ;==>_Show_new_Filgui_au3

Func _Show_new_Filgui_isf()
	GUICtrlSetData($combo_newfile, "")
	GUICtrlSetData($combo_newfile, ".au3|.isf|.ini|.txt", ".isf")
	_Show_New_Filegui()
EndFunc   ;==>_Show_new_Filgui_isf

Func _Show_new_Filgui_ini()
	GUICtrlSetData($combo_newfile, "")
	GUICtrlSetData($combo_newfile, ".au3|.isf|.ini|.txt", ".ini")
	_Show_New_Filegui()
EndFunc   ;==>_Show_new_Filgui_ini

Func _Show_new_Filgui_txt()
	GUICtrlSetData($combo_newfile, "")
	GUICtrlSetData($combo_newfile, ".au3|.isf|.ini|.txt", ".txt")
	_Show_New_Filegui()
EndFunc   ;==>_Show_new_Filgui_txt

Dim $Direction[7]

Func _HeaderSort(ByRef $GUIList, $column)

	If $Direction[$column] = 'Ascending' Then
		Dim $v_sort = False ;Dim $v_sort = _GUICtrlListView_GetColumnCount ($GUIList)
	Else
		Dim $v_sort = True ;Dim $v_sort[_GUICtrlListView_GetColumnCount ($GUIList) ]
	EndIf
	If $Direction[$column] = 'Ascending' Then
		$Direction[$column] = 'Decending'
	Else
		$Direction[$column] = 'Ascending'
	EndIf
	_GUICtrlListView_SimpleSort($GUIList, $v_sort, $column)

EndFunc   ;==>_HeaderSort




Func _datei_eigenschaften()
	If _GUICtrlTVExplorer_GetSelected($hWndTreeview) = $Offenes_Projekt Then
		_Zeige_Projekteinstellungen("projectproberties")
		Return
	EndIf
	_ShowFileProperties(_GUICtrlTVExplorer_GetSelected($hWndTreeview), "properties", $StudioFenster)
EndFunc   ;==>_datei_eigenschaften

Func _datei_eigenschaften_tab()
	If _GUICtrlTab_GetItemCount($htab) = 0 Then Return
	If $SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)] = 0 Then Return
	_ShowFileProperties($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], "properties", $StudioFenster)
EndFunc   ;==>_datei_eigenschaften_tab

Func _Show_Info()
	GUISetOnEvent($GUI_EVENT_PRIMARYDOWN, "_hide_Info", $Logo_PNG)
	GUISetOnEvent($GUI_EVENT_PRIMARYDOWN, "_hide_Info", $controlGui_ueber_GUI)
	GUICtrlSetData($ueber_txt, _Get_langstr(1) & " v. " & $Studioversion & @CRLF & _Get_langstr(179) & " " & $ERSTELLUNGSTAG & @CRLF & _Get_langstr(219) & " Christian Faderl (ISI360)" & @CRLF & @CRLF & _Get_langstr(180))
	SetBitmap($Logo_PNG, $hImagestartup, 255)
	GUISetState(@SW_DISABLE, $StudioFenster)
	GUISetState(@SW_SHOW, $Logo_PNG)
	GUISetState(@SW_SHOW, $controlGui_ueber_GUI)
EndFunc   ;==>_Show_Info

Func _hide_Info()
	SetBitmap($Logo_PNG, $hImagestartup, 0)
	GUISetState(@SW_ENABLE, $StudioFenster)
	GUISetState(@SW_HIDE, $Logo_PNG)
	GUISetState(@SW_HIDE, $controlGui_ueber_GUI)
EndFunc   ;==>_hide_Info

Func _close_func()
	GUISetState(@SW_ENABLE, $StudioFenster)
	GUISetState(@SW_HIDE, $Funclist_GUI)
	If _GUICtrlTab_GetItemCount($htab) > 0 Then WinSetState($Plugin_Handle[_GUICtrlTab_GetCurFocus($htab)], "", @SW_ENABLE)
	If _GUICtrlTab_GetItemCount($htab) > 0 Then _MailSlotWrite(String("\\.\mailslot\ISNPLUGIN_" & WinGetProcess($Plugin_Handle[_GUICtrlTab_GetCurFocus($htab)])), $Mailslot_Pfad & "|listfuncsok")
	_GUICtrlListView_DeleteAllItems(GUICtrlGetHandle($FuncListview))
EndFunc   ;==>_close_func

Func _func_select_ok()
	If GUICtrlRead($Funcinput) = "" Then Return
	GUISetState(@SW_ENABLE, $StudioFenster)
	GUISetState(@SW_HIDE, $Funclist_GUI)
	If _GUICtrlTab_GetItemCount($htab) > 0 Then WinSetState($Plugin_Handle[_GUICtrlTab_GetCurFocus($htab)], "", @SW_ENABLE)
	_MailSlotWrite(String("\\.\mailslot\ISNPLUGIN_" & WinGetProcess($Plugin_Handle[_GUICtrlTab_GetCurFocus($htab)])), $Mailslot_Pfad & "|listfuncsok|" & GUICtrlRead($Funcinput))
EndFunc   ;==>_func_select_ok

Func _List_Funcs()
	If $Studiomodus = 2 Then
		MsgBox(262144 + 16, _Get_langstr(25), _Get_langstr(670), 0, $studiofenster)
		If _GUICtrlTab_GetItemCount($htab) > 0 Then _MailSlotWrite(String("\\.\mailslot\ISNPLUGIN_" & WinGetProcess($Plugin_Handle[_GUICtrlTab_GetCurFocus($htab)])), $Mailslot_Pfad & "|listfuncsok")

		Return
	EndIf
	GUICtrlSetState($FuncListview, $GUI_DISABLE)
	_GUICtrlListView_DeleteAllItems(GUICtrlGetHandle($FuncListview))
	_GUICtrlListView_AddItem($FuncListview, _Get_langstr(1034), 0)
	_GUICtrlListView_AddItem($FuncListview, _Get_langstr(23), 1)
	GUICtrlSetData($FuncText, _Get_langstr(185))
	GUICtrlSetData($Funcinput, "")
	WinSetTitle($Funclist_GUI, "", _Get_langstr(185))
	GUISetState(@SW_DISABLE, $StudioFenster)
	WinSetState($Plugin_Handle[_GUICtrlTab_GetCurFocus($htab)], "", @SW_DISABLE)
	GUISetState(@SW_SHOW, $Funclist_GUI)
	WinSetOnTop($Funclist_GUI, "", 1)
	WinActivate($Funclist_GUI)
	;List all functions in the project
	Dim $ALL_CODE
	Dim $tmp_CODE
	Dim $aRecords
	Dim $str
	$files = _GetFileList($Offenes_Projekt, "*.au3")
	For $x = 0 To UBound($files) - 1
		If FileExists($files[$x]) Then
			$source = StringTrimLeft($files[$x], StringInStr($files[$x], "\", -1, -1))
			_FileReadToArray($files[$x], $tmp_CODE)
			$new = _ArrayToString($tmp_CODE, @CRLF)
			$str = $str & $new
		EndIf
	Next

	$aList = StringRegExp(StringRegExpReplace($str, '(?ims)#c[^#]+#c', ''), '(?ims)^\s*Func\s*([^(]*)', 3)
	If IsArray($aList) Then
		$aList = _ArrayUnique($aList)
		_ArrayDelete($aList, 0)
	EndIf
	If IsArray($aList) Then _ArraySort($aList)
	_GUICtrlListView_BeginUpdate($FuncListview)
	_GUICtrlListView_DeleteAllItems(GUICtrlGetHandle($FuncListview))
	For $i = 0 To UBound($aList) - 1
		_GUICtrlListView_AddItem($FuncListview, $aList[$i], _GUICtrlListView_GetItemCount($FuncListview) - 1)
	Next

	_GUICtrlListView_EndUpdate($FuncListview)
	GUICtrlSetState($FuncListview, $GUI_ENABLE)
EndFunc   ;==>_List_Funcs

Func _List_Guis()
	If $Studiomodus = 2 Then
		MsgBox(262144 + 16, _Get_langstr(25), _Get_langstr(670), 0, $studiofenster)
		_MailSlotWrite(String("\\.\mailslot\ISNPLUGIN_" & WinGetProcess($Plugin_Handle[_GUICtrlTab_GetCurFocus($htab)])), $Mailslot_Pfad & "|listguisok")
		Return
	EndIf

	GUICtrlSetState($FuncListview, $GUI_DISABLE)
	_GUICtrlListView_DeleteAllItems(GUICtrlGetHandle($FuncListview))
	_GUICtrlListView_AddItem($FuncListview, _Get_langstr(1034), 0)
	_GUICtrlListView_AddItem($FuncListview, _Get_langstr(23), 1)
	GUICtrlSetData($FuncText, _Get_langstr(400))
	GUICtrlSetData($Funcinput, "")
	WinSetTitle($Funclist_GUI, "", _Get_langstr(400))
	GUISetState(@SW_DISABLE, $StudioFenster)
	WinSetState($Plugin_Handle[_GUICtrlTab_GetCurFocus($htab)], "", @SW_DISABLE)
	GUISetState(@SW_SHOW, $Funclist_GUI)
	WinSetOnTop($Funclist_GUI, "", 1)
	WinActivate($Funclist_GUI)
	;List all functions in the project
	Dim $ALL_CODE
	Dim $tmp_CODE
	Dim $aRecords
	Dim $str
	Local $Fertiges_Array[1] = [0]

	$files = _GetFileList($Offenes_Projekt, "*.isf")
	$Array2 = _GetFileList($Offenes_Projekt, "*.au3")
	_ArrayConcatenate($files, $Array2)
	For $x = 0 To UBound($files) - 1
		If FileExists($files[$x]) Then
			$source = StringTrimLeft($files[$x], StringInStr($files[$x], "\", -1, -1))
			_FileReadToArray($files[$x], $tmp_CODE)
			If @error Then ContinueLoop
			$new = _ArrayToString($tmp_CODE, @CRLF)
			$str = $str & $new
		EndIf
	Next

	$aList = StringRegExp(StringRegExpReplace($str, '(?ims)#c[^#]+#c', ''), '(?ims)^\s*$\s*([^' & @CRLF & '|(]*)', 3)

	If IsArray($aList) Then
		For $i = 0 To UBound($aList) - 1
			$wert = $aList[$i]
			If Not StringInStr($wert, "guicreate") Then ContinueLoop
			If Not StringInStr($wert, "$") Then ContinueLoop
			$wert = StringTrimRight($wert, StringLen($wert) - StringInStr($wert, "=") + 1)
			$wert = StringReplace($wert, " ", "")
			_ArrayAdd($Fertiges_Array, StringStripWS($wert, 3))
		Next
	EndIf

	;Doppelte Einträge entfernen
	If IsArray($Fertiges_Array) Then _ArrayDelete($Fertiges_Array, 0)
	If IsArray($Fertiges_Array) Then
		$Fertiges_Array = _ArrayUnique($Fertiges_Array)
		_ArrayDelete($Fertiges_Array, 0)
	EndIf
	If IsArray($Fertiges_Array) Then _ArraySort($Fertiges_Array)
	_GUICtrlListView_BeginUpdate($FuncListview)
	_GUICtrlListView_DeleteAllItems(GUICtrlGetHandle($FuncListview))
	For $t = 0 To UBound($Fertiges_Array) - 1
		_GUICtrlListView_AddItem($FuncListview, $Fertiges_Array[$t], _GUICtrlListView_GetItemCount($FuncListview) - 1)
	Next
	_GUICtrlListView_EndUpdate($FuncListview)
	GUICtrlSetState($FuncListview, $GUI_ENABLE)
EndFunc   ;==>_List_Guis

Func _Select_folder_plugin()
	If $Studiomodus = 1 Then
		$result = _WinAPI_BrowseForFolderDlg($Offenes_Projekt, _Get_langstr(313), $BIF_RETURNONLYFSDIRS, 0, 0, $Studiofenster)
	Else
		$result = _WinAPI_BrowseForFolderDlg("", _Get_langstr(313), $BIF_RETURNONLYFSDIRS, 0, 0, $Studiofenster)
	EndIf
	If @error Or $result = "" Then
		_MailSlotWrite(String("\\.\mailslot\ISNPLUGIN_" & WinGetProcess($Plugin_Handle[_GUICtrlTab_GetCurFocus($htab)])), $Mailslot_Pfad & "|selectfolderok")
		Return
	EndIf
	_MailSlotWrite(String("\\.\mailslot\ISNPLUGIN_" & WinGetProcess($Plugin_Handle[_GUICtrlTab_GetCurFocus($htab)])), $Mailslot_Pfad & "|selectfolderok|" & $result)
EndFunc   ;==>_Select_folder_plugin

Func _Weitere_Dateien_zum_Kompilieren_waehlen_Abbrechen()
	GUISetState(@SW_ENABLE, $Studiofenster)
	GUISetState(@SW_HIDE, $Weitere_Dateien_Kompilieren_GUI)
	_GUICtrlTVExplorer_Destroy($Weitere_Dateien_Kompilieren_GUI_hTreeview, 1) ;Zerstöre Treeview
EndFunc   ;==>_Weitere_Dateien_zum_Kompilieren_waehlen_Abbrechen



Func _Weitere_Dateien_zum_Kompilieren_Lade_Treeview_aus_Listview()

	$Dateien = IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "additional_files_to_compile", "")
	$files_array = StringSplit($Dateien, "|", 2)

	;Hauptdatei sperren
	$Treeview_Checkboxen_Gesperrte_Elemente = $Offenes_Projekt & "\" & IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "mainfile", "")
	$handle = _GUICtrlTVExplorer_Expand($Weitere_Dateien_Kompilieren_GUI_hTreeview, $Offenes_Projekt & "\" & IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "mainfile", ""), 1, 1)
	MyCtrlSetItemState($Weitere_Dateien_Kompilieren_GUI_hTreeview, $handle, $GUI_CHECKED + $GUI_DISABLE)


	_GUICtrlListView_DeleteAllItems(GUICtrlGetHandle($Weitere_Dateien_Kompilieren_GUI_Listview))
	_GUICtrlListView_BeginUpdate($Weitere_Dateien_Kompilieren_GUI_Listview)
	_GUICtrlTreeview_BeginUpdate($Weitere_Dateien_Kompilieren_GUI_hTreeview)
	If IsArray($files_array) Then
		For $y = 0 To UBound($files_array) - 1
			If $files_array[$y] = "" Then ContinueLoop
			If $files_array[$y] = "|" Then ContinueLoop
			if not FileExists(_ISN_Variablen_aufloesen($files_array[$y])) then ContinueLoop
			_GUICtrlListView_AddItem($Weitere_Dateien_Kompilieren_GUI_Listview, $files_array[$y], 10)
			_GUICtrlTVExplorer_Expand($Weitere_Dateien_Kompilieren_GUI_hTreeview, _ISN_Variablen_aufloesen($files_array[$y]))
			If not BitAND( MyCtrlGetItemState($Weitere_Dateien_Kompilieren_GUI_hTreeview, _GUICtrlTreeView_GetSelection($Weitere_Dateien_Kompilieren_GUI_hTreeview)), $GUI_DISABLE) = $GUI_DISABLE Then
				MyCtrlSetItemState($Weitere_Dateien_Kompilieren_GUI_hTreeview, _GUICtrlTreeView_GetSelection($Weitere_Dateien_Kompilieren_GUI_hTreeview), $GUI_CHECKED)
			endif
		Next
	EndIf
	_GUICtrlListView_EndUpdate($Weitere_Dateien_Kompilieren_GUI_Listview)
	_GUICtrltreeview_EndUpdate($Weitere_Dateien_Kompilieren_GUI_hTreeview)
EndFunc   ;==>_Weitere_Dateien_zum_Kompilieren_Lade_Treeview_aus_Listview


Func _Weitere_Dateien_zum_Kompilieren_waehlen_OK()
	$Fertige_String = ""
	For $x = 0 To _GUICtrlListView_GetItemCount($Weitere_Dateien_Kompilieren_GUI_Listview) - 1
		$Datei = _GUICtrlListView_GetItemText($Weitere_Dateien_Kompilieren_GUI_Listview, $x)
		If $Datei = "" Then ContinueLoop
		$Fertige_String = $Fertige_String & $Datei & "|"
	Next
	If StringRight($Fertige_String, 1) = "|" Then $Fertige_String = StringTrimRight($Fertige_String, 1)
	IniWrite($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "additional_files_to_compile", $Fertige_String)
	_Weitere_Dateien_zum_Kompilieren_waehlen_Abbrechen() ;Hide
EndFunc   ;==>_Weitere_Dateien_zum_Kompilieren_waehlen_OK

Func _Weitere_Dateien_zum_Kompilieren_waehlen()
	$Filter = "*.au3"
	GUISetState(@SW_SHOW, $Weitere_Dateien_Kompilieren_GUI)
	GUISetState(@SW_DISABLE, $Studiofenster)
	local $AutoIt_Projekte_in_Projektbaum_anzeigen_backup = $AutoIt_Projekte_in_Projektbaum_anzeigen
	$AutoIt_Projekte_in_Projektbaum_anzeigen = "false"
	GUISwitch($Weitere_Dateien_Kompilieren_GUI)
	$Weitere_Dateien_Kompilieren_GUI_Treeview = _GUICtrlTVExplorer_Create($Offenes_Projekt, 10, 58, 318, 319, -1, $WS_EX_CLIENTEDGE, $TV_FLAG_SHOWFILESEXTENSION + $TV_FLAG_SHOWFILES + $TV_FLAG_SHOWFOLDERICON + $TV_FLAG_SHOWFILEICON + $TV_FLAG_SHOWLIKEEXPLORER, "_Projecttree_event", $Filter, 0, 1)
	LoadStateImage($Weitere_Dateien_Kompilieren_GUI_Treeview, @Scriptdir & "\Data\checkboxes.bmp") ;checkboxes.bmp in den Treeview laden (TristateTreeViewLib.au3)
	$Weitere_Dateien_Kompilieren_GUI_hTreeview = GUICtrlGetHandle($Weitere_Dateien_Kompilieren_GUI_Treeview)
	GUICtrlSetFont($Weitere_Dateien_Kompilieren_GUI_hTreeview, $treefont_size, 400, 0, $treefont_font) ;Schrift
	GUICtrlSetColor($Weitere_Dateien_Kompilieren_GUI_hTreeview, $treefont_colour) ;Farbe
	_GUICtrlTVExplorer_Expand($Weitere_Dateien_Kompilieren_GUI_hTreeview)
	_Weitere_Dateien_zum_Kompilieren_Lade_Treeview_aus_Listview()
	$AutoIt_Projekte_in_Projektbaum_anzeigen = $AutoIt_Projekte_in_Projektbaum_anzeigen_backup
	_Weitere_Dateien_Kompilieren_Treeview_Event()
EndFunc   ;==>_Weitere_Dateien_zum_Kompilieren_waehlen

Func _Weitere_Dateien_Kompilieren_Treeview_Event()

	$hSelected = _GUICtrlTreeView_GetSelection($Weitere_Dateien_Kompilieren_GUI_hTreeview)
	;Markiertes Element in Listview eintragen/austragen
	_GUICtrlListView_BeginUpdate($Weitere_Dateien_Kompilieren_GUI_Listview)
;~ 	_GUICtrlListView_DeleteAllItems(GUICtrlGetHandle($Weitere_Dateien_Kompilieren_GUI_Listview))
	_Weitere_Dateien_Kompilieren_Lade_Listview_aus_Treeview(_GUICtrlTreeView_GetFirstItem($Weitere_Dateien_Kompilieren_GUI_hTreeview), $Weitere_Dateien_Kompilieren_GUI_hTreeview)
	_GUICtrlListView_EndUpdate($Weitere_Dateien_Kompilieren_GUI_Listview)
EndFunc   ;==>_Weitere_Dateien_Kompilieren_Treeview_Event

Func _Weitere_Dateien_Kompilieren_Listview_aktualisieren($hinzufuegen = 1, $ItemText = "")
	if $hinzufuegen = 1 Then
		;Prüfen ob Element in der Liste ist. Wenn nein -> hinzufügen
		if _GUICtrlListView_FindText($Weitere_Dateien_Kompilieren_GUI_Listview, $ItemText) = -1 then _GUICtrlListView_AddItem($Weitere_Dateien_Kompilieren_GUI_Listview, $ItemText, 10)
	Else
		;Prüfen ob Element in der Liste ist. Wenn ja -> löschen
		$find_result = _GUICtrlListView_FindText($Weitere_Dateien_Kompilieren_GUI_Listview, $ItemText)
		if $find_result <> -1 then _GUICtrlListView_DeleteItem($Weitere_Dateien_Kompilieren_GUI_Listview, $find_result)
	endif
EndFunc   ;==>_Weitere_Dateien_Kompilieren_Listview_aktualisieren


func _Weitere_Dateien_Kompilieren_Eintrag_nach_unten_verschieben()

	if _GUICtrlListView_GetSelectionMark($Weitere_Dateien_Kompilieren_GUI_Listview) = -1 then return
	if _GUICtrlListView_GetItemCount($Weitere_Dateien_Kompilieren_GUI_Listview) = 0 then return
	_GUICtrlListView_MoveItems($Weitere_Dateien_Kompilieren_GUI_Listview, 1)
	_GUICtrlListView_EnsureVisible($Weitere_Dateien_Kompilieren_GUI_Listview, _GUICtrlListView_GetSelectionMark($Weitere_Dateien_Kompilieren_GUI_Listview))
	_GUICtrlListView_SetItemSelected($Weitere_Dateien_Kompilieren_GUI_Listview, _GUICtrlListView_GetSelectionMark($Weitere_Dateien_Kompilieren_GUI_Listview), True, true)
endfunc   ;==>_Weitere_Dateien_Kompilieren_Eintrag_nach_unten_verschieben

func _Weitere_Dateien_Kompilieren_Eintrag_nach_oben_verschieben()

	if _GUICtrlListView_GetSelectionMark($Weitere_Dateien_Kompilieren_GUI_Listview) = -1 then return
	if _GUICtrlListView_GetItemCount($Weitere_Dateien_Kompilieren_GUI_Listview) = 0 then return
	_GUICtrlListView_MoveItems($Weitere_Dateien_Kompilieren_GUI_Listview, -1)
	_GUICtrlListView_EnsureVisible($Weitere_Dateien_Kompilieren_GUI_Listview, _GUICtrlListView_GetSelectionMark($Weitere_Dateien_Kompilieren_GUI_Listview))
	_GUICtrlListView_SetItemSelected($Weitere_Dateien_Kompilieren_GUI_Listview, _GUICtrlListView_GetSelectionMark($Weitere_Dateien_Kompilieren_GUI_Listview), True, true)
endfunc   ;==>_Weitere_Dateien_Kompilieren_Eintrag_nach_oben_verschieben

Func _Weitere_Dateien_Kompilieren_Lade_Listview_aus_Treeview($hHandle, $Treeview = "")

	; Get the handle of the first child
	$hChild = _GUICtrlTreeView_GetFirstChild($Treeview, $hHandle)
	; If there is no child
	If $hChild = 0 Then
		Return
	EndIf

	; check the child
	if StringInStr(_GUICtrlTreeView_GetText($Treeview, $hChild), $Autoitextension) then
		If BitAND( MyCtrlGetItemState($Weitere_Dateien_Kompilieren_GUI_hTreeview, $hChild), $GUI_CHECKED) = $GUI_CHECKED Then
			_Weitere_Dateien_Kompilieren_Listview_aktualisieren(1, _ISN_Pfad_durch_Variablen_ersetzen(_GUICtrlTVExplorer_GetPathFromItem($Treeview, $hChild)))
		Else
			_Weitere_Dateien_Kompilieren_Listview_aktualisieren(0, _ISN_Pfad_durch_Variablen_ersetzen(_GUICtrlTVExplorer_GetPathFromItem($Treeview, $hChild)))
		EndIf
	endif

;~     _GUICtrlTreeView_SetChecked($Treeview, $hChild, False)

	; Check for children
	_Weitere_Dateien_Kompilieren_Lade_Listview_aus_Treeview($hChild, $Treeview)

	; Now look for all grandchildren
	While 1
		; Look for next child
		$hChild = _GUICtrlTreeView_GetNextChild($Treeview, $hChild)
		; Exit the loop if none found
		If $hChild = 0 Then
			ExitLoop
		EndIf
		; check the child
		if StringInStr(_GUICtrlTreeView_GetText($Treeview, $hChild), $Autoitextension) then
			If BitAND( MyCtrlGetItemState($Weitere_Dateien_Kompilieren_GUI_hTreeview, $hChild), $GUI_CHECKED) = $GUI_CHECKED Then
				_Weitere_Dateien_Kompilieren_Listview_aktualisieren(1, _ISN_Pfad_durch_Variablen_ersetzen(_GUICtrlTVExplorer_GetPathFromItem($Treeview, $hChild)))
			Else
				_Weitere_Dateien_Kompilieren_Listview_aktualisieren(0, _ISN_Pfad_durch_Variablen_ersetzen(_GUICtrlTVExplorer_GetPathFromItem($Treeview, $hChild)))
			EndIf
		Endif

		; Check for children
		_Weitere_Dateien_Kompilieren_Lade_Listview_aus_Treeview($hChild, $Treeview)
		; And then look for the next child
	WEnd

EndFunc   ;==>_Weitere_Dateien_Kompilieren_Lade_Listview_aus_Treeview

Func _Treeview_Check_Parents($hHandle, $Treeview = "")

	; Get the handle of the parent
	$hParent = _GUICtrlTreeView_GetParentHandle($Treeview, $hHandle)
	; If there is no parent
	If $hParent = 0 Then
		Return
	EndIf
	; Check the parent
	_GUICtrlTreeView_SetChecked($Treeview, $hParent)

	; And look for the grandparent and so on
	_Treeview_Check_Parents($hParent, $Treeview)
EndFunc   ;==>_Treeview_Check_Parents


Func _Treeview_Uncheck_Children($hHandle, $Treeview = "")

	; Get the handle of the first child
	$hChild = _GUICtrlTreeView_GetFirstChild($Treeview, $hHandle)
	; If there is no child
	If $hChild = 0 Then
		Return
	EndIf
	; Uncheck the child
	_GUICtrlTreeView_SetChecked($Treeview, $hChild, False)

	; Check for children
	_Treeview_Uncheck_Children($hChild, $Treeview)

	; Now look for all grandchildren
	While 1
		; Look for next child
		$hChild = _GUICtrlTreeView_GetNextChild($Treeview, $hChild)
		; Exit the loop if none found
		If $hChild = 0 Then
			ExitLoop
		EndIf
		; Uncheck the child
		_GUICtrlTreeView_SetChecked($Treeview, $hChild, False)

		; Check for children
		_Treeview_Uncheck_Children($hChild, $Treeview)
		; And then look for the next child
	WEnd

EndFunc   ;==>_Treeview_Uncheck_Children


Func _Choose_File($Filter = "")
	$FilechooseFilter = $Filter
	Local $root = ""
	GUISetState(@SW_DISABLE, $StudioFenster)
	GUICtrlSetState($Choose_File_GUI_Mehr, $GUI_SHOW)
	GUICtrlSetOnEvent($Choose_File_GUI_OK, "_Choose_File_OK")
	GUICtrlSetOnEvent($Choose_File_GUI_Abbrechen, "_close_Choose_File")
	GUISetOnEvent($GUI_EVENT_CLOSE, "_close_Choose_File", $Choose_File_GUI)
	GUICtrlSetData($Choose_File_GUI_Label, _Get_langstr(187) & " (" & StringReplace(StringReplace($Filter, ";", ","), "*.", "") & ")")
	If _GUICtrlTab_GetItemCount($htab) > 0 Then WinSetState($Plugin_Handle[_GUICtrlTab_GetCurFocus($htab)], "", @SW_DISABLE)
	GUISwitch($Choose_File_GUI)
	local $AutoIt_Projekte_in_Projektbaum_anzeigen_backup = $AutoIt_Projekte_in_Projektbaum_anzeigen
	$AutoIt_Projekte_in_Projektbaum_anzeigen = "false"
	If $Studiomodus = 1 Then
		Global $Choose_File_Treeview = _GUICtrlTVExplorer_Create($Offenes_Projekt, 10, 40, 480, 355, -1, $WS_EX_CLIENTEDGE, $TV_FLAG_SHOWFILESEXTENSION + $TV_FLAG_SHOWFILES + $TV_FLAG_SHOWFOLDERICON + $TV_FLAG_SHOWFILEICON + $TV_FLAG_SHOWLIKEEXPLORER, "_Projecttree_event", $Filter)
	Else
		Global $Choose_File_Treeview = _GUICtrlTVExplorer_Create("", 10, 40, 480, 355, -1, $WS_EX_CLIENTEDGE, $TV_FLAG_SHOWFILESEXTENSION + $TV_FLAG_SHOWFILES + $TV_FLAG_SHOWFOLDERICON + $TV_FLAG_SHOWFILEICON + $TV_FLAG_SHOWLIKEEXPLORER, "_Projecttree_event", $Filter)
	EndIf
	$AutoIt_Projekte_in_Projektbaum_anzeigen = $AutoIt_Projekte_in_Projektbaum_anzeigen_backup
	Global $Choose_File_hTreeview = GUICtrlGetHandle($Choose_File_Treeview)
	GUICtrlSetFont($Choose_File_Treeview, $treefont_size, 400, 0, $treefont_font) ;Schrift
	GUICtrlSetColor($Choose_File_Treeview, $treefont_colour) ;Farbe
	_GUICtrlTVExplorer_Expand($Choose_File_hTreeview)
	GUISetState(@SW_SHOW, $Choose_File_GUI)
	WinSetOnTop($Choose_File_GUI, "", 1)
EndFunc   ;==>_Choose_File

Func _Choose_external_file()
	$Datei = FileOpenDialog(_Get_langstr(969), $Offenes_Projekt, "Files (" & $FilechooseFilter & ")", 3, "", $Choose_File_GUI)
	FileChangeDir(@ScriptDir)
	If @error Then Return
	If $Datei = "" Then Return
	GUISetState(@SW_ENABLE, $StudioFenster)
	GUISetState(@SW_HIDE, $Choose_File_GUI)
	If _GUICtrlTab_GetItemCount($htab) > 0 Then WinSetState($Plugin_Handle[_GUICtrlTab_GetCurFocus($htab)], "", @SW_ENABLE)
	$gelesener_pfad = $Datei
	If $Studiomodus = 1 Then ;Relative Pfade im Projektmodus
		$gelesener_pfad = StringReplace($gelesener_pfad, $Offenes_Projekt & "\", "")
	EndIf
	If _GUICtrlTab_GetItemCount($htab) > 0 Then _MailSlotWrite(String("\\.\mailslot\ISNPLUGIN_" & WinGetProcess($Plugin_Handle[_GUICtrlTab_GetCurFocus($htab)])), $Mailslot_Pfad & "|listpicturesok|" & $gelesener_pfad)
	_GUICtrlTVExplorer_Destroy($Choose_File_hTreeview, 1) ;Zerstöre Treeview
EndFunc   ;==>_Choose_external_file


Func _close_Choose_File()
	GUISetState(@SW_ENABLE, $StudioFenster)
	GUISetState(@SW_HIDE, $Choose_File_GUI)
	If _GUICtrlTab_GetItemCount($htab) > 0 Then WinSetState($Plugin_Handle[_GUICtrlTab_GetCurFocus($htab)], "", @SW_ENABLE)
	If _GUICtrlTab_GetItemCount($htab) > 0 Then _MailSlotWrite(String("\\.\mailslot\ISNPLUGIN_" & WinGetProcess($Plugin_Handle[_GUICtrlTab_GetCurFocus($htab)])), $Mailslot_Pfad & "|listpicturesok")
	_GUICtrlTVExplorer_Destroy($Choose_File_hTreeview, 1) ;Zerstöre Treeview
EndFunc   ;==>_close_Choose_File

Func _Choose_File_OK()
	Local $gelesener_pfad
	If _GUICtrlTreeView_GetSelection($Choose_File_Treeview) = 0 Then Return
	If StringInStr(_GUICtrlTreeView_GetTree($Choose_File_Treeview, _GUICtrlTreeView_GetSelection($Choose_File_Treeview)), ".", 1, -1) = 0 Then Return
	GUISetState(@SW_ENABLE, $StudioFenster)
	GUISetState(@SW_HIDE, $Choose_File_GUI)
	If _GUICtrlTab_GetItemCount($htab) > 0 Then WinSetState($Plugin_Handle[_GUICtrlTab_GetCurFocus($htab)], "", @SW_ENABLE)
	$gelesener_pfad = _GUICtrlTVExplorer_GetSelected($Choose_File_Treeview)
;~ 	$data = _GUICtrlTreeView_GetTree($Choose_File_Treeview, _GUICtrlTreeView_GetSelection($Choose_File_Treeview))
;~ 	$data = stringtrimleft($data, stringlen($Offenes_Projekt_name) + 1)
;~ 	$data = stringreplace($data, "|", "\")
	If $Studiomodus = 1 Then ;Relative Pfade im Projektmodus
		$gelesener_pfad = StringReplace($gelesener_pfad, $Offenes_Projekt & "\", "")
	EndIf
	If _GUICtrlTab_GetItemCount($htab) > 0 Then _MailSlotWrite(String("\\.\mailslot\ISNPLUGIN_" & WinGetProcess($Plugin_Handle[_GUICtrlTab_GetCurFocus($htab)])), $Mailslot_Pfad & "|listpicturesok|" & $gelesener_pfad)
	_GUICtrlTVExplorer_Destroy($Choose_File_hTreeview, 1) ;Zerstöre Treeview
EndFunc   ;==>_Choose_File_OK

;===============================================================================
;
; Description:      Verknüpft Dateierweiterung mit Anwendung
; Parameter(s):     $sFileType    = Dateierweiterung
;                   $sDescription = Beschreibung für die Datei
;                   (optional) $sAppName = Anwendung für die Registriert werden
;                                          soll, wird keine Anwendung angegeben
;                                          wird die aktuelle Anwendung eingetragen
; Requirement(s):   keine
; Return Value(s):  bei Erfolg: 1
;                   bei Fehler: 0 und @error = 1
; Author(s):        bernd670
;
;===============================================================================

Func _RegisterFileType($sFileType, $sDescription, $sAppName = "", $pIcon = "")
	Dim $sTypeName
	If $pIcon = "" Then
		$icon = @ScriptDir & "\autoitstudioicon.ico"
	Else
		$icon = $pIcon
	EndIf
	If $sFileType = "" Or $sDescription = "" Then
		SetError(1)
		Return 0
	EndIf

	If $sAppName = "" Then $sAppName = @ScriptFullPath

	$sFileType = StringLower($sFileType)

	If StringLeft($sFileType, 1) <> "." Then
		$sTypeName = $sFileType
		$sFileType = "." & $sFileType
	Else
		$sTypeName = StringRight($sFileType, StringLen($sFileType) - 1)
	EndIf

	$sTypeName = $sTypeName & "file"

	;Lösche alte Methode mit AllUsers
	RegDelete("HKEY_CLASSES_ROOT\" & $sFileType)
	RegDelete("HKEY_CLASSES_ROOT\" & $sTypeName)

	RegWrite("HKEY_CURRENT_USER\SOFTWARE\Classes\" & $sFileType, "", "REG_SZ", $sTypeName)
	RegWrite("HKEY_CURRENT_USER\SOFTWARE\Classes\" & $sTypeName, "", "REG_SZ", $sDescription)
	RegWrite("HKEY_CURRENT_USER\SOFTWARE\Classes\" & $sTypeName & "\shell\open\command", "", "REG_SZ", $sAppName & " %1")
	RegWrite("HKEY_CURRENT_USER\SOFTWARE\Classes\" & $sTypeName & "\DefaultIcon", "", "REG_SZ", $icon & ",0")

;~ 	RegWrite("HKCR\" & $sFileType, "", "REG_SZ", $sTypeName)
;~ 	RegWrite("HKCR\" & $sTypeName, "", "REG_SZ", $sDescription)
;~ 	RegWrite("HKCR\" & $sTypeName & "\shell\open\command", "", "REG_SZ", $sAppName & " %1")
;~ 	RegWrite("HKCR\" & $sTypeName & "\DefaultIcon", "", "REG_SZ", $icon & ",0")

	SetError(0)
	Return 1
EndFunc   ;==>_RegisterFileType

;===============================================================================
;
; Description:      Hebt Verknüpfung einer Dateierweiterung mit Anwendung auf
; Parameter(s):     $sFileType    = Dateierweiterung
; Requirement(s):   keine
; Return Value(s):  bei Erfolg: 1
;                   bei Fehler: 0 und @error = 1
; Author(s):        bernd670
;
;===============================================================================

Func _UnRegisterFileType($sFileType)
	Dim $sTypeName

	If $sFileType = "" Then
		SetError(1)
		Return 0
	EndIf

	$sFileType = StringLower($sFileType)

	If StringLeft($sFileType, 1) <> "." Then
		$sTypeName = $sFileType
		$sFileType = "." & $sFileType
	Else
		$sTypeName = StringRight($sFileType, StringLen($sFileType) - 1)
	EndIf

	$sTypeName = $sTypeName & "file"

	RegDelete("HKEY_CLASSES_ROOT\" & $sFileType)
	RegDelete("HKEY_CURRENT_USER\SOFTWARE\Classes\" & $sFileType)
	RegDelete("HKEY_CLASSES_ROOT\" & $sTypeName)
	RegDelete("HKEY_CURRENT_USER\SOFTWARE\Classes\" & $sTypeName)

	SetError(0)
	Return 1
EndFunc   ;==>_UnRegisterFileType

Func ShowLineNumbers()
	If _GUICtrlTab_GetItemCount($htab) > 0 Then
		If $showlines = "false" Then
			SendMessage($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)], $SCI_SETMARGINWIDTHN, 0, 0)
		Else
			$pixelWidth = SendMessageString($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)], $SCI_TEXTWIDTH, $STYLE_LINENUMBER, "99999")
			SendMessage($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)], $SCI_SETMARGINWIDTHN, 0, $pixelWidth) ;
		EndIf
	EndIf
EndFunc   ;==>ShowLineNumbers

;===============================================================================
; Function Name:   _FileDeleteAfterXDays($sPath, $iDays[, $bForceDel][, $bRek][, $bDirDel][, $bLog])
; Description::    löscht Dateien in einem ausgewähltem Verzeichnis (rekursiv)
;                  nach einer angegebenen Anzahl von Tagen
; Parameter(s):    $sPath = Verzeichnis, aus dem die Dateien gelöscht werden sollen.
;                  $iDays = Dateien, die älter als $iDays (in Tagen) sind, löschen.
;                  $bForceDel = wenn "True" werden auch Dateien/Verzeichnisse gelöscht,
;                               die gegen löschen geschützt sind ("R"-Attribut)
;                  $bRek = wenn "True" wird das Verzeichnis rekursiv (inkl. Unter-
;                          verzeichnisse) durchsucht.
;                  $bDirDel = wenn "True" wird das Unterverzeichnis gelöscht, wenn
;                             es (aufgrund der Löschaktion) leer ist.
;                  $bLog = wenn "True" wird das Ergebnis der Löschaktion in die
;                          Console geschrieben.
; Requirement(s):  AutoIt-Version min. v3.3.2.0
;                  #include <Date.au3>
; Return Value(s): bei Erfolg Rückgabe = 1
;                  bei Fehler Rückgabe = 0
;                  und @error:
;                  1 = $iDays ist keine oder eine negative Zahl
;                  2 = Das übergebene Verzeichnis existiert nicht oder ist leer.
; Author(s):       Oscar (www.autoit.de)
;                  Micha_he (www.autoit.de)
;===============================================================================

Func _FileDeleteAfterXDays($sPath, $iDays, $bForceDel = False, $bRek = True, $bDirDel = True, $bLog = False)
	Local $hSearchm, $hEmpty, $sFile, $sDate, $iRet
	;   If (Not IsNumber($iDays)) Or ($iDays < 0) Then Return SetError(1, 0, 0)
	If StringRight($sPath, 1) <> '\' Then $sPath &= '\'
	$hSearch = FileFindFirstFile($sPath & '*.*')
	If @error Then Return SetError(2, 0, 0)
	While 1
		$sFile = FileFindNextFile($hSearch)
		If @error Then ExitLoop
		If @extended Then
			If $bRek Then
				_FileDeleteAfterXDays($sPath & $sFile, $iDays, $bForceDel, $bRek, $bDirDel, $bLog)
				If $bDirDel Then
					$hEmpty = FileFindFirstFile($sPath & $sFile & '\*.*')
					If @error Then
						If $bForceDel Then FileSetAttrib($sPath & $sFile, '-R')
						$iRet = DirRemove($sPath & $sFile)
						If $bLog Then ConsoleWrite('Delete Folder "' & $sPath & $sFile & '" = ' & StringMid('No Yes', $iRet * 3 + 1, 3) & @CR)
					EndIf
					FileClose($hEmpty)
				EndIf
			EndIf
		Else
			$sDate = StringRegExpReplace(FileGetTime($sPath & $sFile, 0, 1), '(\d{4})(\d{2})(\d{2})(.*)', '$1/$2/$3')
			If _DateDiff('D', $sDate, _NowCalc()) > $iDays Then
				If $bForceDel Then FileSetAttrib($sPath & $sFile, '-R')
				$iRet = FileDelete($sPath & $sFile)
				If $bLog Then ConsoleWrite('Delete File "' & $sPath & $sFile & '" = ' & StringMid('No Yes', $iRet * 3 + 1, 3) & @CR)
			EndIf
		EndIf
	WEnd
	FileClose($hSearch)
	Return 1
EndFunc   ;==>_FileDeleteAfterXDays

; #FUNCTION# ====================================================================================================================
; Name...........: _ReduceMemory
; Author ........: w_Outer, Rajesh V R, Prog@ndy
; ===============================================================================================================================

Func _ReduceMemory($iPid = -1)
	If $iPid = -1 Or ProcessExists($iPid) = 0 Then
		Local $ai_GetCurrentProcess = DllCall('kernel32.dll', 'ptr', 'GetCurrentProcess')
		Local $ai_Return = DllCall("psapi.dll", 'int', 'EmptyWorkingSet', 'ptr', $ai_GetCurrentProcess[0])
		Return $ai_Return[0]
	EndIf

	Local $ai_Handle = DllCall("kernel32.dll", 'ptr', 'OpenProcess', 'int', 0x1F0FFF, 'int', False, 'int', $iPid)
	Local $ai_Return = DllCall("psapi.dll", 'int', 'EmptyWorkingSet', 'ptr', $ai_Handle[0])
	DllCall('kernel32.dll', 'int', 'CloseHandle', 'ptr', $ai_Handle[0])
	Return $ai_Return[0]
EndFunc   ;==>_ReduceMemory

Func _Load_Compiler_settings()
	GUICtrlSetData($compile_compression_combo, "")
	$readen_compress = IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "compile_compression", "normal")
	If $readen_compress = "lowest" Then $tmp = _Get_langstr(565)
	If $readen_compress = "low" Then $tmp = _Get_langstr(566)
	If $readen_compress = "normal" Then $tmp = _Get_langstr(567)
	If $readen_compress = "high" Then $tmp = _Get_langstr(568)
	If $readen_compress = "highest" Then $tmp = _Get_langstr(569)
	GUICtrlSetData($compile_compression_combo, _Get_langstr(569) & "|" & _Get_langstr(568) & "|" & _Get_langstr(567) & "|" & _Get_langstr(566) & "|" & _Get_langstr(565), $tmp)

	$mainfile = IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "mainfile", "file")
	$Default_Name = StringTrimRight($mainfile, StringLen($mainfile) - StringInStr($mainfile, ".", 0, -1) + 1)
	GUICtrlSetData($Compile_filenameinput, IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "compile_exename", $Default_Name))

	GUICtrlSetData($Compile_Iconpath, IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "compile_exeicon", "%isnstudiodir%\autoitstudioicon.ico"))
	GUICtrlSetImage($Compile_vorschauicon, _ISN_Variablen_aufloesen(GUICtrlRead($Compile_Iconpath)))

	If IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "compile_mode", "2") = "1" Then
		GUICtrlSetState($Kompilieren_Einstellungen_direktimProjektordnerKompilieren_Checkbox, $GUI_CHECKED)
		GUICtrlSetState($Kompilieren_Einstellungen_Projekt_in_Ordner_Bereitstellen_Checkbox, $GUI_UNCHECKED)
	Else
		GUICtrlSetState($Kompilieren_Einstellungen_direktimProjektordnerKompilieren_Checkbox, $GUI_UNCHECKED)
		GUICtrlSetState($Kompilieren_Einstellungen_Projekt_in_Ordner_Bereitstellen_Checkbox, $GUI_CHECKED)
	EndIf


	If IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "compile_runaftercompile", "false") = "true" Then
		GUICtrlSetState($compile_chckboxrun, $GUI_CHECKED)
	Else
		GUICtrlSetState($compile_chckboxrun, $GUI_UNCHECKED)
	EndIf

	If IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "compile_openaftercompile", "true") = "true" Then
		GUICtrlSetState($compile_chckboxopen, $GUI_CHECKED)
	Else
		GUICtrlSetState($compile_chckboxopen, $GUI_UNCHECKED)
	EndIf

	If IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "compile_x64", "false") = "true" Then
		GUICtrlSetState($compile_x64_checkbox, $GUI_CHECKED)
	Else
		GUICtrlSetState($compile_x64_checkbox, $GUI_UNCHECKED)
	EndIf

	If IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "compile_source", "false") = "true" Then
		GUICtrlSetState($compile_source, $GUI_CHECKED)
	Else
		GUICtrlSetState($compile_source, $GUI_UNCHECKED)
	EndIf

	If IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "compile_useupx", "true") = "true" Then
		GUICtrlSetState($compile_upx_checkbox, $GUI_CHECKED)
	Else
		GUICtrlSetState($compile_upx_checkbox, $GUI_UNCHECKED)
	EndIf

	If IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "compile_console", "false") = "true" Then
		GUICtrlSetState($compile_chckboxconsole, $GUI_CHECKED)
	Else
		GUICtrlSetState($compile_chckboxconsole, $GUI_UNCHECKED)
	EndIf

	_Kompilieren_Einstellungen_Radio_Events()
EndFunc   ;==>_Load_Compiler_settings

Func _Kompilieren_Einstellungen_Radio_Events()

	If GUICtrlRead($Kompilieren_Einstellungen_direktimProjektordnerKompilieren_Checkbox) = $GUI_CHECKED Then
		GUICtrlSetState($compile_source, $GUI_DISABLE)
		GUICtrlSetState($compile_chckboxopen, $GUI_DISABLE)
		GUICtrlSetState($projekteinstellungen_kompilieren_Ordnerpfad_button, $GUI_DISABLE)
		GUICtrlSetState($projekteinstellungen_kompilieren_Ordnerpfad_input, $GUI_DISABLE)
		GUICtrlSetState($projekteinstellungen_kompilieren_Ordnerpfad_vorschau_label, $GUI_DISABLE)
		GUICtrlSetState($projekteinstellungen_kompilieren_Ordnerpfad_label, $GUI_DISABLE)
	Else
		GUICtrlSetState($compile_source, $GUI_ENABLE)
		GUICtrlSetState($compile_chckboxopen, $GUI_ENABLE)
		GUICtrlSetState($projekteinstellungen_kompilieren_Ordnerpfad_button, $GUI_ENABLE)
		GUICtrlSetState($projekteinstellungen_kompilieren_Ordnerpfad_input, $GUI_ENABLE)
		GUICtrlSetState($projekteinstellungen_kompilieren_Ordnerpfad_vorschau_label, $GUI_ENABLE)
		GUICtrlSetState($projekteinstellungen_kompilieren_Ordnerpfad_label, $GUI_ENABLE)
	EndIf

EndFunc   ;==>_Kompilieren_Einstellungen_Radio_Events

Func _save_Compiler_settings()
	IniWrite($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "compile_exeicon", GUICtrlRead($Compile_Iconpath))

	$exename = GUICtrlRead($Compile_filenameinput)
	$exename = StringReplace($exename, ".exe", "")
	$exename = StringReplace($exename, "<", "")
	$exename = StringReplace($exename, ">", "")
	$exename = StringReplace($exename, "?", "")
	$exename = StringReplace($exename, "!", "")
	$exename = StringReplace($exename, "\", "")
	$exename = StringReplace($exename, "/", "")
	$exename = StringReplace($exename, "*", "")
	$exename = StringReplace($exename, "|", "")
	$exename = StringReplace($exename, '"', "")
	$exename = StringReplace($exename, ':', "")
	IniWrite($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "compile_exename", $exename)

	If GUICtrlRead($Kompilieren_Einstellungen_direktimProjektordnerKompilieren_Checkbox) = $GUI_CHECKED Then
		IniWrite($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "compile_mode", "1")
	Else
		IniWrite($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "compile_mode", "2")
	EndIf


	If GUICtrlRead($compile_source) = $GUI_CHECKED Then
		IniWrite($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "compile_source", "true")
	Else
		IniWrite($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "compile_source", "false")
	EndIf

	If GUICtrlRead($compile_x64_checkbox) = $GUI_CHECKED Then
		IniWrite($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "compile_x64", "true")
	Else
		IniWrite($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "compile_x64", "false")
	EndIf

	If GUICtrlRead($compile_chckboxopen) = $GUI_CHECKED Then
		IniWrite($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "compile_openaftercompile", "true")
	Else
		IniWrite($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "compile_openaftercompile", "false")
	EndIf

	If GUICtrlRead($compile_chckboxrun) = $GUI_CHECKED Then
		IniWrite($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "compile_runaftercompile", "true")
	Else
		IniWrite($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "compile_runaftercompile", "false")
	EndIf

	If GUICtrlRead($compile_upx_checkbox) = $GUI_CHECKED Then
		IniWrite($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "compile_useupx", "true")
	Else
		IniWrite($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "compile_useupx", "false")
	EndIf

	If GUICtrlRead($compile_chckboxconsole) = $GUI_CHECKED Then
		IniWrite($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "compile_console", "true")
	Else
		IniWrite($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "compile_console", "false")
	EndIf

	$tmp = GUICtrlRead($compile_compression_combo)
	If $tmp = _Get_langstr(565) Then $readen_compress = "lowest"
	If $tmp = _Get_langstr(566) Then $readen_compress = "low"
	If $tmp = _Get_langstr(567) Then $readen_compress = "normal"
	If $tmp = _Get_langstr(568) Then $readen_compress = "high"
	If $tmp = _Get_langstr(569) Then $readen_compress = "highest"
	IniWrite($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "compile_compression", $readen_compress)

EndFunc   ;==>_save_Compiler_settings

Func _Show_Compile()
	If _Pruefe_auf_Type3_Plugin($Plugin_Platzhalter_KompilierenEinstellungen) <> -1 then return ;Platzhalter für Plugin
	If $Studiomodus = 2 Then
		_Zeige_AutoIt3Wrapper_GUI()
		Return
	EndIf

	If FileExists($autoit2exe) = 0 Then
		MsgBox(262144 + 16, _Get_langstr(25), _Get_langstr(299), 0, $studiofenster)
		Return
	EndIf

_Zeige_Projekteinstellungen("compile")
EndFunc   ;==>_Show_Compile



Func _GetShortName($sPath)
	If FileExists($sPath) Then Return FileGetShortName($sPath, 1)

	Local $RetPath = ""
	Local $TailingSlashs = StringRegExpReplace($sPath, '(?i)^.*[^\\]', '')

	If StringInStr($sPath, "\") Then
		Local $sPathArr = StringSplit($sPath, "\")
		For $i = 1 To UBound($sPathArr) - 1
			If StringLen($sPathArr[$i]) > 8 Then
				$RetPath &= StringLeft(StringStripWS($sPathArr[$i], 8), 6) & "~1\"
			Else
				$RetPath &= $sPathArr[$i] & "\"
			EndIf
		Next
		$RetPath = StringRegExpReplace($RetPath, '\\+\z', '')
		$RetPath &= $TailingSlashs
	Else
		If StringLen($sPath) > 8 Then
			$RetPath = StringLeft(StringStripWS($sPath, 8), 6) & "~1"
		Else
			$RetPath = $sPath
		EndIf
	EndIf
	Return StringUpper($RetPath)
EndFunc   ;==>_GetShortName

Func _Start_Compiling()
	If _Pruefe_auf_Type3_Plugin($Plugin_Platzhalter_ProjektKompilieren) <> -1 then return ;Platzhalter für Plugin
	If $Studiomodus = 2 Then
		_Kompilieren_Editormodus()
		Return
	EndIf

	_Load_Compiler_settings()

	If $Templatemode = 1 Then
		MsgBox(262144 + 16, _Get_langstr(25), _Get_langstr(386), 0, $studiofenster)
		Return
	EndIf

	If FileExists($autoit2exe) = 0 Then
		MsgBox(262144 + 16, _Get_langstr(25), _Get_langstr(299), 0, $studiofenster)
		Return
	EndIf

	If Not FileExists(_ISN_Variablen_aufloesen(GUICtrlRead($Compile_Iconpath))) Then
		MsgBox(262144 + 16, _Get_langstr(25), _Get_langstr(664), 0, $studiofenster)
		Return
	EndIf

	If Not FileExists(@ScriptDir & "\Data\AutoIt3Wrapper.exe") Then
		MsgBox(262144 + 16, _Get_langstr(25), _Get_langstr(1032), 0, $studiofenster)
		Return
	EndIf

	GUICtrlSetData($Statuscompile, _Get_langstr(244))
	GUISetState(@SW_SHOW, $compilingGUI)
	GUISetState(@SW_DISABLE, $StudioFenster)
	_Save_All_tabs() ;Speichern (alle Tabs)
	Sleep(500)



	$Compile_Mode = IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "compile_mode", "2")

	If $Compile_Mode = "2" Then
		;Projekt in neuem Ordner bereitstellen
		GUICtrlSetData($Statuscompile, _Get_langstr(243))

		If $releasemode = 1 Then
			If $releasefolder = $Standardordner_Release Then $releasefolder = $Arbeitsverzeichnis & "\" & $Standardordner_Release
			$zielpfad = $releasefolder
			DirCreate($zielpfad)
			DirRemove($zielpfad & "\" & _ISN_Variablen_aufloesen(_ProjectISN_Config_Read("compile_finished_project_dir", "%projectname%")), 1)
			DirCreate($zielpfad & "\" & _ISN_Variablen_aufloesen(_ProjectISN_Config_Read("compile_finished_project_dir", "%projectname%")))
			$zielpfad = $zielpfad & "\" & _ISN_Variablen_aufloesen(_ProjectISN_Config_Read("compile_finished_project_dir", "%projectname%"))
		EndIf

		If $releasemode = 2 Then
			DirRemove($Arbeitsverzeichnis & "\data\cache\tempcompile", 1)
			$directory = _ProjectISN_Config_Read("compile_finished_project_dir", "%projectname%")
			$directory = StringReplace($directory,"%projectname%","")
			$directory = StringReplace($directory,"\\","")
			if stringleft($directory,1) = "\" then $directory = StringTrimLeft($directory,1)
			$directory = _ISN_Variablen_aufloesen($directory)
			if $directory <> "" then $directory = "\"&$directory
			$zielpfad = $Offenes_Projekt & "\" & $releasefolder & $directory
			DirCreate($zielpfad)
			DirRemove($zielpfad, 1)
			DirCreate($zielpfad)
			$zielpfad = $Arbeitsverzeichnis & "\data\cache\tempcompile"
			DirCreate($zielpfad)
		EndIf
	Else
		;Projekt in Projektordner Kompilieren
		$zielpfad = $Offenes_Projekt
	 EndIf



	Sleep(500)


	$mainfile = IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "mainfile", "")
	$Default_Name = StringTrimRight($mainfile, StringLen($mainfile) - StringInStr($mainfile, ".", 0, -1) + 1)

	$exename = IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "compile_exename", $Default_Name)
	$exename = StringReplace($exename, "?", "")
	$exename = StringReplace($exename, "=", "")
	$exename = StringReplace($exename, ",", "")
	$exename = StringReplace($exename, "\", "")
	$exename = StringReplace($exename, "/", "")
	$exename = StringReplace($exename, '"', "")
	$exename = StringReplace($exename, "<", "")
	$exename = StringReplace($exename, ">", "")
	$exename = StringReplace($exename, "*", "")
	$exename = StringReplace($exename, "|", "")
	$exename = $exename & ".exe"
	_Clear_Debuglog()


	$Adittional_Prams = ""
	If GUICtrlRead($compile_x64_checkbox) = $GUI_CHECKED Then $Adittional_Prams = $Adittional_Prams & "/x64 "
	If GUICtrlRead($compile_upx_checkbox) = $GUI_UNCHECKED Then $Adittional_Prams = $Adittional_Prams & "/nopack "
;~ 	if GuiCtrlRead($compile_compression_combo) = $GUI_UNCHECKED Then $Adittional_Prams = $Adittional_Prams & "/nopack "
	If GUICtrlRead($compile_chckboxconsole) = $GUI_CHECKED Then $Adittional_Prams = $Adittional_Prams & "/console "
	$readen_compress = IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "compile_compression", "normal")
	If $readen_compress = "lowest" Then $Adittional_Prams = $Adittional_Prams & "/comp 0 "
	If $readen_compress = "low" Then $Adittional_Prams = $Adittional_Prams & "/comp 1 "
	If $readen_compress = "normal" Then $Adittional_Prams = $Adittional_Prams & "/comp 2 "
	If $readen_compress = "high" Then $Adittional_Prams = $Adittional_Prams & "/comp 3 "
	If $readen_compress = "highest" Then $Adittional_Prams = $Adittional_Prams & "/comp 4 "

	$iconpath = _ISN_Variablen_aufloesen(GUICtrlRead($Compile_Iconpath))
	$iconpath = _ISN_Variablen_aufloesen($iconpath)


	;Zusätzliche Dateien & Hauptdatei kompilieren
	$Dateien = IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "additional_files_to_compile", "")
	if not stringinstr($Dateien, _ISN_Pfad_durch_Variablen_ersetzen($Offenes_Projekt & "\" & IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "mainfile", ""))) then $Dateien = _ISN_Pfad_durch_Variablen_ersetzen($Offenes_Projekt & "\" & IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "mainfile", "")) & "|" & $Dateien
	if StringRight($Dateien, 1) = "|" then $Dateien = StringTrimRight($Dateien, 1)
	$additional_files_array = StringSplit($Dateien, "|", 2)
	If IsArray($additional_files_array) Then
		For $y = 0 To UBound($additional_files_array) - 1
			If $additional_files_array[$y] = "" Then ContinueLoop
			If $additional_files_array[$y] = "|" Then ContinueLoop
			if not FileExists(_ISN_Variablen_aufloesen($additional_files_array[$y])) then ContinueLoop
			if _ISN_Variablen_aufloesen($additional_files_array[$y]) = $Offenes_Projekt & "\" & $mainfile Then
				;Hauptdatei


;~ 				$Console_Bluemode = 1
				GUICtrlSetData($Statuscompile, _Get_langstr(245))
				$Zuletzt_Kompilierte_Datei_Pfad_au3 = $Offenes_Projekt & "\" & IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "mainfile", "") ;Dateipfad der zuletzt kompilierten Datei (.au3 Datei)
				$data = _RunReadStd(FileGetShortName(@ScriptDir & "\Data\AutoIt3Wrapper.exe") & ' /in "' & $Offenes_Projekt & "\" & IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "mainfile", "") & '" /out "' & $zielpfad & "\" & $exename & '" ' & $Adittional_Prams & ' /icon "' & $iconpath & '"', 0, $Offenes_Projekt, @SW_HIDE, 1)
				$Zuletzt_Kompilierte_Datei_Pfad_exe = $zielpfad & "\" & $exename ;Dateipfad der zuletzt kompilierten Datei (.exe Datei)
				Dim $szDrive, $szDir, $szFName, $szExt
				$path = _PathSplit(IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "mainfile", ""), $szDrive, $szDir, $szFName, $szExt)
				If FileExists($Offenes_Projekt & "\" & _GetShortName($szFName) & "_Obfuscated" & $szExt) Then FileDelete($Offenes_Projekt & "\" & _GetShortName($szFName) & "_Obfuscated" & $szExt)
				If FileExists($Offenes_Projekt & "\" & _GetShortName($szFName) & "_stripped" & $szExt) Then FileDelete($Offenes_Projekt & "\" & _GetShortName($szFName) & "_stripped" & $szExt)
				If FileExists($Offenes_Projekt & "\" & $szFName & "_Obfuscated" & $szExt) Then FileDelete($Offenes_Projekt & "\" & $szFName & "_Obfuscated" & $szExt)
				If FileExists($Offenes_Projekt & "\" & $szFName & "_stripped" & $szExt) Then FileDelete($Offenes_Projekt & "\" & $szFName & "_stripped" & $szExt)
				If FileExists($Offenes_Projekt & "\" & _GetShortName(IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "mainfile", "")) & ".tbl") Then FileDelete($Offenes_Projekt & "\" & _GetShortName(IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "mainfile", "")) & ".tbl")
				If FileExists($Offenes_Projekt & "\" & IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "mainfile", "") & ".tbl") Then FileDelete($Offenes_Projekt & "\" & IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "mainfile", "") & ".tbl")
;~ 				$Console_Bluemode = 0
				Sleep(500)




			Else
				GUICtrlSetData($Statuscompile, StringReplace(_Get_langstr(1069), "%1", $additional_files_array[$y]))
				_AU3_aus_Projektbaum_Direkt_Kompilieren(_ISN_Variablen_aufloesen($additional_files_array[$y]), 1)
			Endif
		Next
	EndIf






	Sleep(500)
	If $Compile_Mode = "2" Then
		;Projekt in neuem Ordner bereitstellen
		GUICtrlSetData($Statuscompile, _Get_langstr(246))
		_FileOperationProgress($Offenes_Projekt & "\*.*", $zielpfad, 1, $FO_COPY, $FOF_SIMPLEPROGRESS + $FOF_NOCONFIRMATION)
		DirRemove($zielpfad&"\"&$releasefolder,1) ;Damit der Relase Ordner nicht nochmals im Release Ordner landet

		If GUICtrlRead($compile_source) = $GUI_UNCHECKED Then
			_File_Delete_Wild($zielpfad, ".isn")
			_File_Delete_Wild($zielpfad, ".au3")
			_File_Delete_Wild($zielpfad, ".isf")
		EndIf
	EndIf


	Sleep(1000)
	GUICtrlSetData($Statuscompile, _Get_langstr(247))

	If $Compile_Mode = "2" Then
		;Projekt in neuem Ordner bereitstellen

		;Leere Ordner löschen
		_delEmpty($zielpfad)
		If $releasemode = 2 Then
		   $directory = _ProjectISN_Config_Read("compile_finished_project_dir", "%projectname%")
			$directory = StringReplace($directory,"%projectname%","")
			$directory = StringReplace($directory,"\\","")
			if stringleft($directory,1) = "\" then $directory = StringTrimLeft($directory,1)
			$directory = _ISN_Variablen_aufloesen($directory)
			if $directory <> "" then $directory = "\"&$directory
			_FileOperationProgress($Arbeitsverzeichnis & "\data\cache\tempcompile\*.*", $Offenes_Projekt & "\" & $releasefolder&$directory, 1, $FO_MOVE, $FOF_SIMPLEPROGRESS + $FOF_NOCONFIRMATION)
			$zielpfad = $Offenes_Projekt & "\" & $releasefolder
		EndIf
	EndIf
















	GUICtrlSetData($Statuscompile, _Get_langstr(879))
	_run_rule($Section_Trigger2)

	Sleep(500)
	GUISetState(@SW_ENABLE, $StudioFenster)
	GUISetState(@SW_HIDE, $compilingGUI)
	_WinFlash($Studiofenster)
	_Earn_trophy(4, 1)

	If GUICtrlRead($compile_chckboxopen) = $GUI_CHECKED And $Compile_Mode = "2" Then ShellExecute("explorer.exe", FileGetShortName($zielpfad))
	If GUICtrlRead($compile_chckboxrun) = $GUI_CHECKED Then
		Run(FileGetShortName($zielpfad & "\" & $exename))
	EndIf

	If _Pruefe_ob_Datei_geoeffnet($Offenes_Projekt & "\" & $mainfile) = "true" Then ;Lese Mainfile neu ein
		$tabpage = _GUICtrlTab_FindTab($htab, StringTrimLeft($Offenes_Projekt & "\" & $mainfile, StringInStr($Offenes_Projekt & "\" & $mainfile, "\", 0, -1)))
		If $tabpage <> -1 Then
			$res = _ArraySearch($Datei_pfad, $Offenes_Projekt & "\" & $mainfile)
			If $res <> -1 Then
				$tabpage = $res
			Else
				$tabpage = -1
			EndIf
		EndIf
		LoadEditorFile($SCE_EDITOR[$tabpage], $Offenes_Projekt & "\" & $mainfile)
		$FILE_CACHE[$tabpage] = Sci_GetLines($SCE_EDITOR[$tabpage])
		_Editor_Restore_Fold()
	EndIf
	_Update_Treeview() ;Zum Abschluss noch den Projektbaum aktualisieren
EndFunc   ;==>_Start_Compiling

Func _WinFlash($hgui = "")
	If $hgui = "" Then Return
	If Not WinActive($hgui) Then WinFlash($hgui)
EndFunc   ;==>_WinFlash

Func _delEmpty($dir)
	$folderList = _FileListToArray($dir, "*", 2)
	If @error <> 4 Then
		For $i = 1 To $folderList[0]
			_delEmpty($dir & "\" & $folderList[$i])
		Next
	EndIf
	$filelist = _FileListToArray($dir, -1, 0)
	If @error = 4 Then DirRemove($dir)
EndFunc   ;==>_delEmpty

Func _File_Delete_Wild($path, $filetype)
	$Search = FileFindFirstFile($path & "\*.*")
	If $Search <> -1 Then
		While 1
			$file = FileFindNextFile($Search)
			If @error Then ExitLoop
			If FileGetAttrib($path & "\" & $file) = "D" Then
				_File_Delete_Wild($path & "\" & $file, $filetype)
			Else
				If StringInStr($path & "\" & $file, $filetype) Then FileDelete($path & "\" & $file)
			EndIf
		WEnd
	EndIf
	FileClose($Search)

EndFunc   ;==>_File_Delete_Wild

Func _runhelp()
	If FileExists($helpfile) = 0 Then
		MsgBox(262144 + 16, _Get_langstr(25), _Get_langstr(301), 0, $studiofenster)
		Return
	EndIf
	ShellExecute($helpfile)

EndFunc   ;==>_runhelp

Func _ProcessProperties($Process = "")
	If $showdebuggui = "false" Then Return

	Local $aCounterVals = _PDH_ProcessObjectUpdateCounters($poCounter)
	If @error Then
		If @error = 32 Then $bProcessGone = True
	EndIf

	#cs

		$readram = ProcessGetStats ($pid,0)
		$ram = $readram[0]
		If $ram >= 1048576 Then
		$ram = StringFormat('%.3f', Round($ram / 1048576, 3)) & ' MB'
		Else
		$ram = StringFormat('%.1f', Round($ram/ 1024, 0)) & ' KB'
		EndIf

	#ce

	If IsArray($aCounterVals) Then
		$ram = StringFormat('%.3f', Round(($aCounterVals[1] / 1024) / 1000, 3)) & ' KB'
		$ram = StringReplace($ram, ".", ",")
		Return(_Get_langstr(307) & " " & Round($aCounterVals[0] / $_PDH_iCPUCount) & "%" & "      " & _Get_langstr(308) & " " & $ram)
	EndIf

	#cs
		$wmi = ObjGet("winmgmts:\\.\root\cimv2")
		Local $refresher = ObjCreate("WbemScripting.SWbemRefresher")
		$cols = $refresher.AddEnum($wmi, "Win32_PerfFormattedData_PerfProc_Process" ).ObjectSet
		Sleep(200)
		$refresher.Refresh
		For $proc In $cols
		If ($proc.IDProcess = $pid ) Then
		$ram = $proc.PrivateBytes
		$cpu = $proc.PercentProcessorTime

		If $ram >= 1048576 Then
		$ram = StringFormat('%.3f', Round($ram / 1048576, 3)) & ' MB'
		Else
		$ram = StringFormat('%.1f', Round($ram/ 1024, 1)) & ' KB'
		EndIf
		return (_Get_langstr(307)&" "&$cpu&"%"&"      "&_Get_langstr(308)&" "&$ram)
		EndIf
		Next
		return (_Get_langstr(23))
	#ce
EndFunc   ;==>_ProcessProperties

Func _Show_Warning($warningID, $icon, $titel = "", $text = "", $bt1_text = "", $bt2_text = "")
	If IniRead($Configfile, "warnings", $warningID, "0") = 1 Then Return 1
	While 1
		If _IsPressed("01", $user32) = 0 Then ExitLoop
		Sleep(50)
	WEnd
	$text = StringReplace($text, "[BREAK]", @CRLF)
	GUICtrlSetImage($Warnmeldung_ico, $bigiconsdll, $icon)
	GUICtrlSetData($Warnmeldung_titel, $titel)
	GUICtrlSetData($Warnmeldung_text, $text)
	WinSetTitle($warn, "", $titel)
	GUICtrlSetData($Warnmeldung_Button1, $bt1_text)
	GUICtrlSetData($Warnmeldung_Button2, $bt2_text)
	GUICtrlSetState($Warnmeldung_checkbox, $GUI_UNCHECKED)
	If $bt2_text = "" Then
		GUICtrlSetState($Warnmeldung_Button2, $GUI_HIDE)
	Else
		GUICtrlSetState($Warnmeldung_Button2, $GUI_SHOW)
	EndIf
	$return = 0
	GUISetState(@SW_SHOW, $warn)
	GUISetState(@SW_DISABLE, $StudioFenster)
	WinSetOnTop($warn, "", 1)
	While 1
		Sleep(50)
		If _IsPressed("20", $user32) Or _IsPressed("0D", $user32) Then
			$return = 1
			ExitLoop
		EndIf

		$a = GUIGetCursorInfo($warn)
		If Not IsArray($a) Then Return
		If $a[2] = 1 Then
			If $a[4] = $Warnmeldung_Button1 Then
				$return = 1
				ExitLoop
			EndIf
			If $a[4] = $Warnmeldung_Button2 Then
				$return = 2
				ExitLoop
			EndIf
		EndIf
	WEnd
	GUISetState(@SW_ENABLE, $StudioFenster)
	GUISetState(@SW_HIDE, $warn)
	If GUICtrlRead($Warnmeldung_checkbox) = $GUI_CHECKED Then IniWrite($Configfile, "warnings", $warningID, "1")
	Return $return
EndFunc   ;==>_Show_Warning

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Func _KeyProc($nCode, $wParam, $lParam)
	Local $tKEYHOOKS, $keyCode
	$tKEYHOOKS = DllStructCreate($tagKBDLLHOOKSTRUCT, $lParam)
	If $nCode < 0 Then
		Return _WinAPI_CallNextHookEx($hHook, $nCode, $wParam, $lParam)
	EndIf
	If WinActive($Studiofenster) Then
;~ 		If $wParam = $WM_KEYUP then
		If $wParam = 0x0101 Then
			Local $keyCode = DllStructGetData($tKEYHOOKS, "vkCode")
			;ConsoleWrite($keyCode&@crlf)
			_Check_tabs_for_changes()

		EndIf
	EndIf
	Return _WinAPI_CallNextHookEx($hHook, $nCode, $wParam, $lParam)
EndFunc   ;==>_KeyProc

Func _Reset_Search()
	GUICtrlSetColor($hTreeview2_searchinput, 0xB7B7B7)
	GUICtrlSetBkColor($hTreeview2_searchinput, 0xFFFFFF)
	GUICtrlSetFont($hTreeview2_searchinput, 9, 400, 2)
	GUICtrlSetData($hTreeview2_searchinput, _Get_langstr(443))
EndFunc   ;==>_Reset_Search

;Eine der wichtigsten Funktionen
;Ohne diese würden Kontextmenüs, Toolbarbuttons und weitere Dinge ohne Funktion bleiben

Func _InputCheck($hWndGUI, $MsgID, $wParam, $LParam)
	$nID = BitAND($wParam, 0x0000FFFF)
	;-----

	If WinActive($New_file_GUI) And _IsPressed("0D", $user32) And $wParam = 1 Then _Make_New_File() ;enter in new file
	If WinActive($New_file_GUI) And _IsPressed("1B", $user32) And $wParam = 2 Then _HIDE_New_Filegui() ;esc in new file

	If $nID = $hTreeview2_searchinput Then
		If GUICtrlRead($hTreeview2_searchinput) = "" Then GUICtrlSetBkColor($hTreeview2_searchinput, 0xFFFFFF)
	EndIf

	$Class = ControlGetFocus($Studiofenster)
	If ControlGetHandle($Studiofenster, "", "[CLASSNN:" & $Class & "]") = GUICtrlGetHandle($hTreeview2_searchinput) And $wParam = 1 Then
		If GUICtrlRead($hTreeview2_searchinput) <> "" Then _search_in_Scripttree()
		Return
	EndIf

	Switch $nID

		Case $SCI_EDITOR_CONTEXT_speichern
			_try_to_save_file(_GUICtrlTab_GetCurFocus($htab))
		Case $Skriptbaum_SetupMenu_Skriptbaum_konfigrieren
			_Zeige_Skriptbaum_Einstellungen()
		Case $Skriptbaum_SetupMenu_Filter
			_Zeige_Skriptbaum_FilterGUI()
		Case $SCI_EDITOR_CONTEXT_oeffneHilfe
			_open_helpfile_keyword()
		Case $SCI_EDITOR_CONTEXT_rueckgaengig
			_try_undo()
		Case $SCI_EDITOR_CONTEXT_wiederholen
			_try_redo()
		Case $SCI_EDITOR_CONTEXT_kopieren
			_trytocopy()
		Case $SCI_EDITOR_CONTEXT_einfuegen
			_trytopaste()
		Case $SCI_EDITOR_CONTEXT_loeschen
			_trytodelete()
		Case $SCI_EDITOR_CONTEXT_suche
			_Show_Search()
		Case $SCI_EDITOR_CONTEXT_Auskommentieren
			_comment_out()
		Case $SCI_EDITOR_CONTEXT_ausschneiden
			_trytocut()
		Case $HelpMenu_spenden
			_ISN_AutoIt_Studio_Spenden()
		Case $TabContextMenu_Item1
			_try_to_save_file(_GUICtrlTab_GetCurFocus($htab))
		Case $id10
			_try_to_save_file(_GUICtrlTab_GetCurFocus($htab))
		Case $Dateimenue_Oeffnen
			_Try_to_open_external_file()
		Case $id23
			_open_windowinfotool()
		Case $SCI_EDITOR_CONTEXT_debugtoMsgBox
			_Debug_to_msgbox()
		Case $SCI_EDITOR_CONTEXT_debugtoConsole
			_Debug_to_console()
		Case $Tools_menu_debugging_debugtoMsgBox
			_Debug_to_msgbox()
		Case $Tools_menu_debugging_debugtoconsole
			_Debug_to_console()
		Case $Tools_menu_item2
			_open_windowinfotool()
		Case $FileMenu_zuletzt_verwendete_Dateien_Slot1
			Call("_Oeffne_Zuletzt_Verwendete_Dateie", 0) ;Call muss verwendet werden da direkter aufruf einen Fehler in der GUI erzeugt (Fenster wird verschoben?!?=
		Case $FileMenu_zuletzt_verwendete_Dateien_Slot2
			Call("_Oeffne_Zuletzt_Verwendete_Dateie", 1)
		Case $FileMenu_zuletzt_verwendete_Dateien_Slot3
			Call("_Oeffne_Zuletzt_Verwendete_Dateie", 2)
		Case $FileMenu_zuletzt_verwendete_Dateien_Slot4
			Call("_Oeffne_Zuletzt_Verwendete_Dateie", 3)
		Case $FileMenu_zuletzt_verwendete_Dateien_Slot4
			Call("_Oeffne_Zuletzt_Verwendete_Dateie", 3)
		Case $FileMenu_zuletzt_verwendete_Dateien_Slot5
			Call("_Oeffne_Zuletzt_Verwendete_Dateie", 4)
		Case $FileMenu_zuletzt_verwendete_Dateien_Slot6
			Call("_Oeffne_Zuletzt_Verwendete_Dateie", 5)
		Case $FileMenu_zuletzt_verwendete_Dateien_Slot7
			Call("_Oeffne_Zuletzt_Verwendete_Dateie", 6)
		Case $FileMenu_zuletzt_verwendete_Dateien_Slot8
			Call("_Oeffne_Zuletzt_Verwendete_Dateie", 7)
		Case $FileMenu_zuletzt_verwendete_Dateien_Slot9
			Call("_Oeffne_Zuletzt_Verwendete_Dateie", 8)
		Case $FileMenu_zuletzt_verwendete_Dateien_Slot10
			Call("_Oeffne_Zuletzt_Verwendete_Dateie", 9)
		Case $FileMenu_item1
			_try_to_save_file(_GUICtrlTab_GetCurFocus($htab))
		Case $FileMenu_item1c
			_Speichern_unter()
		Case $TreeviewContextMenu_makroslot1
			If $TreeviewContextMenu_makroslot1 <> "" Then
				If _run_rule($Section_Trigger12) = 0 Then MsgBox(262144 + 64, _Get_langstr(61), _Get_langstr(618), 0, $studiofenster)
			EndIf
		Case $TreeviewContextMenu_makroslot2
			If $TreeviewContextMenu_makroslot2 <> "" Then
				If _run_rule($Section_Trigger13) = 0 Then MsgBox(262144 + 64, _Get_langstr(61), _Get_langstr(618), 0, $studiofenster)
			EndIf
		Case $TreeviewContextMenu_makroslot3
			If $TreeviewContextMenu_makroslot3 <> "" Then
				If _run_rule($Section_Trigger14) = 0 Then MsgBox(262144 + 64, _Get_langstr(61), _Get_langstr(618), 0, $studiofenster)
			EndIf
		Case $TreeviewContextMenu_makroslot4
			If $TreeviewContextMenu_makroslot4 <> "" Then
				If _run_rule($Section_Trigger15) = 0 Then MsgBox(262144 + 64, _Get_langstr(61), _Get_langstr(618), 0, $studiofenster)
			EndIf
		Case $TreeviewContextMenu_makroslot5
			If $TreeviewContextMenu_makroslot5 <> "" Then
				If _run_rule($Section_Trigger16) = 0 Then MsgBox(262144 + 64, _Get_langstr(61), _Get_langstr(618), 0, $studiofenster)
			EndIf
		Case $TreeviewContextMenu_makroslot6
			If $TreeviewContextMenu_makroslot6 <> "" Then
				If _run_rule($Section_Trigger17) = 0 Then MsgBox(262144 + 64, _Get_langstr(61), _Get_langstr(618), 0, $studiofenster)
			EndIf
		Case $TreeviewContextMenu_makroslot7
			If $TreeviewContextMenu_makroslot7 <> "" Then
				If _run_rule($Section_Trigger18) = 0 Then MsgBox(262144 + 64, _Get_langstr(61), _Get_langstr(618), 0, $studiofenster)
			EndIf
		Case $id24
			If _run_rule($Section_Trigger12) = 0 Then MsgBox(262144 + 64, _Get_langstr(61), _Get_langstr(618), 0, $studiofenster)
		Case $id25
			If _run_rule($Section_Trigger13) = 0 Then MsgBox(262144 + 64, _Get_langstr(61), _Get_langstr(618), 0, $studiofenster)
		Case $id26
			If _run_rule($Section_Trigger14) = 0 Then MsgBox(262144 + 64, _Get_langstr(61), _Get_langstr(618), 0, $studiofenster)
		Case $id27
			If _run_rule($Section_Trigger15) = 0 Then MsgBox(262144 + 64, _Get_langstr(61), _Get_langstr(618), 0, $studiofenster)
		Case $id28
			If _run_rule($Section_Trigger16) = 0 Then MsgBox(262144 + 64, _Get_langstr(61), _Get_langstr(618), 0, $studiofenster)
		Case $Toolbar_makroslot6
			If _run_rule($Section_Trigger17) = 0 Then MsgBox(262144 + 64, _Get_langstr(61), _Get_langstr(618), 0, $studiofenster)
		Case $Toolbar_makroslot7
			If _run_rule($Section_Trigger18) = 0 Then MsgBox(262144 + 64, _Get_langstr(61), _Get_langstr(618), 0, $studiofenster)
		Case $Tools_menu_item3
			If _run_rule($Section_Trigger12) = 0 Then MsgBox(262144 + 64, _Get_langstr(61), _Get_langstr(618), 0, $studiofenster)
		Case $Tools_menu_item4
			If _run_rule($Section_Trigger13) = 0 Then MsgBox(262144 + 64, _Get_langstr(61), _Get_langstr(618), 0, $studiofenster)
		Case $Tools_menu_item5
			If _run_rule($Section_Trigger14) = 0 Then MsgBox(262144 + 64, _Get_langstr(61), _Get_langstr(618), 0, $studiofenster)
		Case $Tools_menu_item6
			If _run_rule($Section_Trigger15) = 0 Then MsgBox(262144 + 64, _Get_langstr(61), _Get_langstr(618), 0, $studiofenster)
		Case $Tools_menu_item7
			If _run_rule($Section_Trigger16) = 0 Then MsgBox(262144 + 64, _Get_langstr(61), _Get_langstr(618), 0, $studiofenster)
		Case $Tools_menu_item9
			If _run_rule($Section_Trigger17) = 0 Then MsgBox(262144 + 64, _Get_langstr(61), _Get_langstr(618), 0, $studiofenster)
		Case $Tools_menu_item10
			If _run_rule($Section_Trigger18) = 0 Then MsgBox(262144 + 64, _Get_langstr(61), _Get_langstr(618), 0, $studiofenster)
		Case $HelpMenu_item2
			_Oeffne_ISN_hilfe()
		Case $HelpMenu_item1
			_runhelp()
		Case $id29
			_Save_All_tabs()
		Case $FileMenu_item1b
			_Save_All_tabs()
		Case $AnsichtMenu_fenster_links_umschalten
			_Toggle_hide_leftbar()
		Case $AnsichtMenu_fenster_rechts_umschalten
			_Toggle_hide_rightbar()
		Case $AnsichtMenu_fenstergroessen_zuruecksetzen
			_Fenstergroessen_zuruecksetzen()
		Case $AnsichtMenu_fenster_unten_umschalten
			_Toggle_Fenster_unten()
		Case $HelpMenu_item3
			_Showtrophies()
		Case $Tools_menu_item1
			_Toggle_msgboxcreator()
		Case $HelpMenu_item4
			_Show_Credits()
		Case $HelpMenu_item5
			_Show_Info()
		Case $HelpMenu_Forum
			_Open_Forum()
		Case $HelpMenu_item6
			_Show_Bugtracker()
			Return
		Case $HelpMenu_item7
			_Show_Update_GUI()
		Case $ProjectMenu_item11a
			_Start_Compiling()
		Case $ProjectMenu_item11b
			_Show_Compile()
		Case $ProjectMenu_item1
			If MsgBox(262144 + 48 + 4, _Get_langstr(394), _Get_langstr(393), 0, $Studiofenster) = 6 Then
				_Close_Project()
				_Show_NEw_Project()
			EndIf
		Case $Toolbarmenu_closeproject
			_Close_Project()
		Case $ProjectMenu_item3
			_Close_Project()
	    case $ProjectMenu_Kompilieren_Daten_auswaehlen
			_Weitere_Dateien_zum_Kompilieren_waehlen()
		Case $EditMenu_item1
			_try_undo()
		Case $EditMenu_item2
			_try_redo()
		Case $id11
			_try_undo()
		Case $id12
			_try_redo()
		Case $EditMenu_zeile_duplizieren
			_Zeile_Duplizieren()
		Case $Toolbarmenu_pluginslot1
			If $Toolbarmenu_pluginslot1 <> "" Then
				If $Can_open_new_tab = 0 Then Return
				$Can_open_new_tab = 0
				Call("_open_plugintab", $Tools_menu_pluginitem1_exe, $Tools_menu_pluginitem1_exe, 1)
			EndIf

		Case $Toolbarmenu_pluginslot2
			If $Toolbarmenu_pluginslot2 <> "" Then
				If $Can_open_new_tab = 0 Then Return
				$Can_open_new_tab = 0
				Call("_open_plugintab", $Tools_menu_pluginitem2_exe, $Tools_menu_pluginitem2_exe, 1)
			EndIf

		Case $Toolbarmenu_pluginslot3
			If $Toolbarmenu_pluginslot3 <> "" Then
				If $Can_open_new_tab = 0 Then Return
				$Can_open_new_tab = 0
				Call("_open_plugintab", $Tools_menu_pluginitem3_exe, $Tools_menu_pluginitem3_exe, 1)
			EndIf

		Case $Toolbarmenu_pluginslot4
			If $Toolbarmenu_pluginslot4 <> "" Then
				If $Can_open_new_tab = 0 Then Return
				$Can_open_new_tab = 0
				Call("_open_plugintab", $Tools_menu_pluginitem4_exe, $Tools_menu_pluginitem4_exe, 1)
			EndIf

		Case $Toolbarmenu_pluginslot5
			If $Toolbarmenu_pluginslot5 <> "" Then
				If $Can_open_new_tab = 0 Then Return
				$Can_open_new_tab = 0
				Call("_open_plugintab", $Tools_menu_pluginitem5_exe, $Tools_menu_pluginitem5_exe, 1)
			EndIf

		Case $Toolbarmenu_pluginslot6
			If $Toolbarmenu_pluginslot6 <> "" Then
				If $Can_open_new_tab = 0 Then Return
				$Can_open_new_tab = 0
				Call("_open_plugintab", $Tools_menu_pluginitem6_exe, $Tools_menu_pluginitem6_exe, 1)
			EndIf

		Case $Toolbarmenu_pluginslot7
			If $Toolbarmenu_pluginslot7 <> "" Then
				If $Can_open_new_tab = 0 Then Return
				$Can_open_new_tab = 0
				Call("_open_plugintab", $Tools_menu_pluginitem7_exe, $Tools_menu_pluginitem7_exe, 1)
			EndIf

		Case $Toolbarmenu_pluginslot8
			If $Toolbarmenu_pluginslot8 <> "" Then
				If $Can_open_new_tab = 0 Then Return
				$Can_open_new_tab = 0
				Call("_open_plugintab", $Tools_menu_pluginitem8_exe, $Tools_menu_pluginitem8_exe, 1)
			EndIf

		Case $Toolbarmenu_pluginslot9
			If $Toolbarmenu_pluginslot9 <> "" Then
				If $Can_open_new_tab = 0 Then Return
				$Can_open_new_tab = 0
				Call("_open_plugintab", $Tools_menu_pluginitem9_exe, $Tools_menu_pluginitem9_exe, 1)
			EndIf

		Case $Toolbarmenu_pluginslot10
			If $Toolbarmenu_pluginslot10 <> "" Then
				If $Can_open_new_tab = 0 Then Return
				$Can_open_new_tab = 0
				Call("_open_plugintab", $Tools_menu_pluginitem10_exe, $Tools_menu_pluginitem10_exe, 1)
			EndIf

		Case $Tools_menu_pluginitem1
			If $Tools_menu_pluginitem1 <> "" Then
				If $Can_open_new_tab = 0 Then Return
				$Can_open_new_tab = 0
				Call("_open_plugintab", $Tools_menu_pluginitem1_exe, $Tools_menu_pluginitem1_exe, 1)
			EndIf

		Case $Tools_menu_pluginitem2
			If $Tools_menu_pluginitem2 <> "" Then
				If $Can_open_new_tab = 0 Then Return
				$Can_open_new_tab = 0
				Call("_open_plugintab", $Tools_menu_pluginitem2_exe, $Tools_menu_pluginitem2_exe, 1)
			EndIf

		Case $Tools_menu_pluginitem3
			If $Tools_menu_pluginitem3 <> "" Then
				If $Can_open_new_tab = 0 Then Return
				$Can_open_new_tab = 0
				Call("_open_plugintab", $Tools_menu_pluginitem3_exe, $Tools_menu_pluginitem3_exe, 1)
			EndIf

		Case $Tools_menu_pluginitem4
			If $Tools_menu_pluginitem4 <> "" Then
				If $Can_open_new_tab = 0 Then Return
				$Can_open_new_tab = 0
				Call("_open_plugintab", $Tools_menu_pluginitem4_exe, $Tools_menu_pluginitem4_exe, 1)
			EndIf

		Case $Tools_menu_pluginitem5
			If $Tools_menu_pluginitem5 <> "" Then
				If $Can_open_new_tab = 0 Then Return
				$Can_open_new_tab = 0
				Call("_open_plugintab", $Tools_menu_pluginitem5_exe, $Tools_menu_pluginitem5_exe, 1)
			EndIf

		Case $Tools_menu_pluginitem6
			If $Tools_menu_pluginitem6 <> "" Then
				If $Can_open_new_tab = 0 Then Return
				$Can_open_new_tab = 0
				Call("_open_plugintab", $Tools_menu_pluginitem6_exe, $Tools_menu_pluginitem6_exe, 1)
			EndIf

		Case $Tools_menu_pluginitem7
			If $Tools_menu_pluginitem7 <> "" Then
				If $Can_open_new_tab = 0 Then Return
				$Can_open_new_tab = 0
				Call("_open_plugintab", $Tools_menu_pluginitem7_exe, $Tools_menu_pluginitem7_exe, 1)
			EndIf

		Case $Tools_menu_pluginitem8
			If $Tools_menu_pluginitem8 <> "" Then
				If $Can_open_new_tab = 0 Then Return
				$Can_open_new_tab = 0
				Call("_open_plugintab", $Tools_menu_pluginitem8_exe, $Tools_menu_pluginitem8_exe, 1)
			EndIf

		Case $Tools_menu_pluginitem9
			If $Tools_menu_pluginitem9 <> "" Then
				If $Can_open_new_tab = 0 Then Return
				$Can_open_new_tab = 0
				Call("_open_plugintab", $Tools_menu_pluginitem9_exe, $Tools_menu_pluginitem9_exe, 1)
			EndIf

		Case $Tools_menu_pluginitem10
			If $Tools_menu_pluginitem10 <> "" Then
				If $Can_open_new_tab = 0 Then Return
				$Can_open_new_tab = 0
				Call("_open_plugintab", $Tools_menu_pluginitem10_exe, $Tools_menu_pluginitem10_exe, 1)
			EndIf

		Case $id6
			_Update_Treeview()
		Case $ProjectMenu_item12
			_Update_Treeview()
		Case $id3
			_Try_to_import_file()
		Case $id5
			_Show_Delete_file_GUI()
		Case $id16
			_Show_Search()
		Case $EditMenu_item7
			_Show_Search()
		Case $FileMenu_item11
			_Toggle_Fulscreen()
		Case $FileMenu_item12
			_exit()
		Case $FileMenu_item13
			_Close_Project()
		Case $id15
			_STOPSCRIPT()
		Case $Tools_menu_bitrechner
			_Toggle_Bitoperation_rechner()
		Case $Tools_menu_ParameterEditor
			_Parameter_Editor_Contextmenue()
		Case $id14
			If IsArray($Datei_pfad) Then _Testscript($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)])
		Case $id17
			If IsArray($Datei_pfad) Then _Syntaxcheck($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)])
		Case $EditMenu_item8
			If IsArray($Datei_pfad) Then _Syntaxcheck($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)])
		Case $ProjectMenu_item8a
			If $Studiomodus = 1 Then
				_Testscript($Offenes_Projekt & "\" & IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "mainfile", "#ERROR#"))
			Else
				If _GUICtrlTab_GetItemCount($htab) = 0 Then Return
				If StringTrimLeft($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], StringInStr($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], ".", 0, -1)) = $Autoitextension Then _Testscript($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)])
			EndIf
		Case $ProjectMenu_item8b
			If $Studiomodus = 1 Then
				_Testscript($Offenes_Projekt & "\" & IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "mainfile", "#ERROR#"), 1)
			Else
				If _GUICtrlTab_GetItemCount($htab) = 0 Then Return
				If StringTrimLeft($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], StringInStr($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], ".", 0, -1)) = $Autoitextension Then _Testscript($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], 1)
			EndIf
		Case $ProjectMenu_backup_durchfuehren
			_Backup_Files()
		Case $EditMenu_item3
			_trytocut()
		Case $EditMenu_item4
			_trytocopy()
		Case $EditMenu_item5
			_trytopaste()
		Case $EditMenu_item6
			_trytodelete()
		Case $FileMenu_item7
			_Show_Delete_file_GUI()
		Case $FileMenu_item4
			_Try_to_import_file()
		Case $Tools_menu_AutoIt3Wrapper_GUI
			_Zeige_AutoIt3Wrapper_GUI()
		Case $Tools_menu_createUDFheader
			_Erstelle_UDF_Header()
		Case $FileMenu_item5
			_Try_to_import_folder()
		Case $id19
			_Try_to_import_folder()
		Case $id20
			_Toggle_Fulscreen()
		Case $ProjectMenu_item10
			_STOPSCRIPT()
		Case $ProjectMenu_item9
			_Testscript($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)])
		Case $EditMenu_item9
			GoToLine()
		Case $TreeviewContextMenu_Item1
			Try_to_opten_file(_GUICtrlTVExplorer_GetSelected($hWndTreeview))
		Case $TreeviewContextMenu_Item10
			_Erstelle_kopie_von_markierter_datei()
		Case $FileMenu_item14
			_Erstelle_kopie_von_markierter_datei()
		Case $TreeviewContextMenu_Item9
			_tryotopeninexplorer(_GUICtrlTVExplorer_GetSelected($hWndTreeview))
		Case $TreeviewContextMenu_Item2
			_Rename_File()
		Case $FileMenu_item8
			_Rename_File()
		Case $TreeviewContextMenu_Item3
			_Show_Delete_file_GUI()
		Case $TreeviewContextMenu_Item4
			_Try_to_move_file()
		Case $FileMenu_item9
			_Try_to_move_file()
		Case $FileMenu_item10
			_Show_Configgui()
		Case $Toolbarmenu_programmeinstellungen
			_Show_Configgui()
		Case $ProjectMenu_item13
			_Show_Ruleeditor()
		Case $id22
			_Show_Ruleeditor()
		Case $FileMenu_item6
			_Export_File()
		Case $id4
			_Export_File()
		Case $TreeviewContextMenu_Item7
			_Export_File()
		Case $TreeviewContextMenu_Item6
			_Try_to_import_file()
		Case $FileMenu_item1d
			_Close_All_Tabs()
		Case $TabContextMenu_Item5
			_Close_All_Tabs()
		Case $TreeviewContextMenu_Item6a
			_Try_to_import_folder()
		Case $FileMenu_item3
			_New_Folder()
		Case $EditMenu_item12
			_SCI_Toggle_fold()
		Case $Tools_menu_debugging_erweitertes_debugging_aktivieren
			_Erweitertes_Debugging_aktivieren()
		Case $Tools_menu_debugging_erweitertes_debugging_deaktivieren
			_Erweitertes_Debugging_deaktivieren()
		Case $id2
			_New_Folder()
		Case $TreeviewContextMenu_Item8_Item2
			_New_Folder()
		Case $ProjectMenu_item4
			_Zeige_Projekteinstellungen("projectproberties")
		 case $Toolbarmenu_projekteinstellungen
			_Zeige_Projekteinstellungen()
		 Case $ProjectMenu_projekteinstellungen
			_Zeige_Projekteinstellungen()
		Case $id9
			_Zeige_Projekteinstellungen("projectproberties")
		 Case $FileMenu_TabSchliessen
			try_to_Close_Tab(_GUICtrlTab_GetCurFocus($htab))
		Case $id13
			try_to_Close_Tab(_GUICtrlTab_GetCurFocus($htab))
		Case $TabContextMenu_Item2
			try_to_Close_Tab(_GUICtrlTab_GetCurFocus($htab))
		Case $TabContextMenu_Item3
			If _GUICtrlTab_GetItemCount($htab) = 0 Then Return
			If $SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)] = 0 Then Return
			_tryotopeninexplorer($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)])
		Case $TabContextMenu_Item4
			_datei_eigenschaften_tab()
		Case $TreeviewContextMenu_Item5
			If $Offenes_Projekt = $Projectfolder & "\" & _GUICtrlTreeView_GetTree($hTreeview, _GUICtrlTreeView_GetSelection($hTreeview)) Then
				_Zeige_Projekteinstellungen("projectproberties")
			Else
				_datei_eigenschaften()
			EndIf
		Case $ProjectMenu_aenderungsprotokolle
			_Zeige_changelogmanager()
		Case $TreeviewContextMenu_Item_Makro_kompilieren_bestehend
			_AU3_aus_Projektbaum_mit_vorhandenen_Makro_kompilieren()
		Case $TreeviewContextMenu_Item_Makro_kompilieren_neu
			_AU3_aus_Projektbaum_mit_neuem_Makro_kompilieren()
		Case $TreeviewContextMenu_Item_Jetzt_Kompilieren
			_AU3_aus_Projektbaum_Direkt_Kompilieren()
		Case $Toolbarmenu_aenderungsprotokoll
			_Zeige_changelogmanager()
;~ 		Case $Tools_menu_organizeincludes
;~ 			_Zeige_Organize_Includes()
		Case $TreeviewContextMenu_Item8_Item1
			_Show_New_Filegui()
		Case $FileMenu_item2a
			_Show_new_Filgui_au3()
		Case $FileMenu_Neue_Datei_temp_au3file
			_erstelle_neues_temporaeres_skript()
	   Case $TreeviewContextMenu_temp_au3_file
			_erstelle_neues_temporaeres_skript()
		Case $Dateimenue_Drucken
			_Drucke_Datei($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)])
		Case $FileMenu_item2b
			_Show_new_Filgui_isf()
		Case $FileMenu_item2c
			_Show_new_Filgui_ini()
		Case $FileMenu_item2d
			_Show_new_Filgui_txt()
		Case $TreeviewContextMenu_Item8_a
			_Show_new_Filgui_au3()
		Case $TreeviewContextMenu_Item8_b
			_Show_new_Filgui_isf()
		Case $TreeviewContextMenu_Item8_c
			_Show_new_Filgui_ini()
		Case $TreeviewContextMenu_Item8_d
			_Show_new_Filgui_txt()
		Case $Tools_menu_item8
			_Toggle_colourpicker()
		Case $Toolbarmenu_Farbtoolbox
			_Toggle_colourpicker()

;~ 	case $FileMenu_item2
;~ 		_Show_New_Filegui()
;~ 	case $TbarMenu
;~ 		_Show_New_Filegui()
		Case $id18
			_Tidy($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)])
		Case $EditMenu_item10
			_Tidy($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)])
		Case $EditMenu_item11
			_comment_out()
		Case $id21
			_comment_out()
		Case $ProjectMenu_item8c
			_Show_Parameterconfig()
		Case $Scripttree_includemenu_menu3
			_SCI_Zeige_Code_Schnipsel()
		Case $Scripttree_includemenu_menu0
			$str = StringTrimLeft(_GUICtrlTreeView_GetTree($hTreeview2, _GUICtrlTreeView_GetSelection($hTreeview2)), StringInStr(_GUICtrlTreeView_GetTree($hTreeview2, _GUICtrlTreeView_GetSelection($hTreeview2)), "|", Default, -1))
			_Try_to_open_include($str)
		Case $Scripttree_includemenu_menu1
			_Scripttree_show_comment()
		Case $Scripttree_includemenu_menu2
			_Scripttree_DB_Klick()
		Case $SCI_EDITOR_CONTEXT_oeffneInclude
			$str = Sci_GetLine($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)], Sci_GetCurrentLine($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)]) - 1)
			_Try_to_open_include($str)
		Case $SCI_EDITOR_CONTEXT_ParameterEditor
			_Parameter_Editor_Contextmenue()
		Case $ProjectMenu_item2
			If $Can_open_new_tab = 0 Then Return
			If MsgBox(262144 + 48 + 4, _Get_langstr(394), _Get_langstr(393), 0, $Studiofenster) = 6 Then
				_Close_Project()
				_Show_Projectman()

			EndIf

		Case($new_projectname Or $new_projectstammordner_checkbox)
			_New_Project_inteliwrite()

	EndSwitch

EndFunc   ;==>_InputCheck

Func _Oeffne_ISN_hilfe()
	If $Languagefile = "german.lng" Then
		ShellExecute(@ScriptDir & "\Data\ISNhelp_ger.chm")
		Return
	EndIf

	If $Languagefile = "english.lng" Then
		ShellExecute(@ScriptDir & "\Data\ISNhelp_en.chm")
		Return
	EndIf


	;Für alle anderen Fallback auf english
	ShellExecute(@ScriptDir & "\Data\ISNhelp_en.chm")
EndFunc   ;==>_Oeffne_ISN_hilfe


Func _Projekt_Eigenschaften_Oeffnen_Projektverwaltung()
	If MsgBox(262144 + 48 + 4, _Get_langstr(394), _Get_langstr(393), 0, $Projekteinstellungen_GUI) = 6 Then
		_Hide_Projectproberties()
		_Close_Project("false")
		_Show_Projectman()
	EndIf
EndFunc   ;==>_Projekt_Eigenschaften_Oeffnen_Projektverwaltung


Func _New_Project_inteliwrite()
	If GUICtrlRead($new_projectstammordner_checkbox) = $GUI_UNCHECKED Then
		$str = StringReplace(GUICtrlRead($new_projectname), " ", "_")
		$str = StringReplace($str, ".", "_")
		$str = StringReplace($str, "?", "")
		$str = StringReplace($str, ",", "")
		$str = StringReplace($str, '"', "")
		$str = StringReplace($str, "'", "")
		$str = StringReplace($str, "*", "")
		$str = StringReplace($str, "^", "")
		$str = StringReplace($str, ":", "")
		$str = StringReplace($str, "/", "")
		$str = StringReplace($str, "\", "")
		$str = StringReplace($str, "|", "")
		$a = ControlGetFocus($NEW_PROJECT_GUI)
		If $a = "Edit1" Then GUICtrlSetData($new_projectmainfile, $str & "." & $Autoitextension)
		If GUICtrlRead($new_projectname) <> "" Then GUICtrlSetData($new_projectmainfile_create_in_folder, $Projectfolder & "\" & GUICtrlRead($new_projectname))
	Else
		GUICtrlSetData($new_projectmainfile_create_in_folder, "")
		If GUICtrlRead($new_projectusefollowingmainfile_input) <> "" Then GUICtrlSetData($new_projectmainfile_create_in_folder, StringTrimRight(GUICtrlRead($new_projectusefollowingmainfile_input), StringLen(GUICtrlRead($new_projectusefollowingmainfile_input)) - StringInStr(GUICtrlRead($new_projectusefollowingmainfile_input), "\", 0, -1) + 1))
	EndIf
EndFunc   ;==>_New_Project_inteliwrite

Func _MIDDLEdown()
	If $Can_open_new_tab = 1 Then
		If _GUICtrlTab_GetItemCount($htab) = 0 Then Return
		$tPOINT = _WinAPI_GetMousePos(True, $Studiofenster)
		Local $iX = DllStructGetData($tPOINT, "X")
		Local $iY = DllStructGetData($tPOINT, "Y")
		Local $aPos = ControlGetPos($Studiofenster, "", $htab)
		Local $aHit = _GUICtrlTab_HitTest($htab, $iX - $aPos[0], $iY - $aPos[1])
		If $aHit[0] <> -1 Then
			If $aHit[0] <> _GUICtrlTab_GetCurFocus($htab) Then _GUICtrlTab_ActivateTabX($htab, $aHit[0], 0)
			try_to_Close_Tab($aHit[0])
		EndIf
	EndIf
EndFunc   ;==>_MIDDLEdown

Func _projectfolder_std()
	GUICtrlSetData($Input_Projekte_Pfad, $Standardordner_Projects)
EndFunc   ;==>_projectfolder_std

Func _backupfolder_std()
	GUICtrlSetData($Input_Backup_Pfad, $Standardordner_Backups)
EndFunc   ;==>_backupfolder_std

Func _releasefolder_std()
	GUICtrlSetData($Input_Release_Pfad, $Standardordner_Release)
EndFunc   ;==>_releasefolder_std

Func _templatefolder_std()
	GUICtrlSetData($Input_template_Pfad, $Standardordner_Templates)
EndFunc   ;==>_templatefolder_std

Func _pluginfolder_std()
	GUICtrlSetData($Einstellungen_Pfade_Pluginpfad_input, $Standardordner_Plugins)
EndFunc   ;==>_pluginfolder_std

Func _erkenne_au3exe()
	Local $RegKey = 'HKEY_LOCAL_MACHINE64\SOFTWARE\'
	If @OSArch <> 'X86' Then $RegKey &= 'Wow6432Node\'
	Local $InstallPath = RegRead($RegKey & 'AutoIt v3\AutoIt', 'InstallDir')

	GUICtrlSetData($Input_config_au3exe, "")
	;Search AutoIt3.exe
	If DriveStatus("c:\") = "READY" Then
		If FileExists("C:\Programme\AutoIt3\AutoIt3.exe") Then GUICtrlSetData($Input_config_au3exe, "C:\Programme\AutoIt3\AutoIt3.exe")
		If FileExists("C:\Program Files\AutoIt3\AutoIt3.exe") Then GUICtrlSetData($Input_config_au3exe, "C:\Program Files\AutoIt3\AutoIt3.exe")
		If FileExists("C:\Program Files (x86)\AutoIt3\AutoIt3.exe") Then GUICtrlSetData($Input_config_au3exe, "C:\Program Files (x86)\AutoIt3\AutoIt3.exe")
	EndIf

	If DriveStatus("D:\") = "READY" Then
		If FileExists("D:\Programme\AutoIt3\AutoIt3.exe") Then GUICtrlSetData($Input_config_au3exe, "D:\Programme\AutoIt3\AutoIt3.exe")
		If FileExists("D:\Program Files\AutoIt3\AutoIt3.exe") Then GUICtrlSetData($Input_config_au3exe, "D:\Program Files\AutoIt3\AutoIt3.exe")
		If FileExists("D:\Program Files (x86)\AutoIt3\AutoIt3.exe") Then GUICtrlSetData($Input_config_au3exe, "D:\Program Files (x86)\AutoIt3\AutoIt3.exe")
	EndIf
	If FileExists($InstallPath & "\AutoIt3.exe") Then GUICtrlSetData($Input_config_au3exe, $InstallPath & "\AutoIt3.exe")
	If FileExists(@ScriptDir & "\portable.dat") And FileExists(@ScriptDir & "\autoit\AutoIt3.exe") Then GUICtrlSetData($Input_config_au3exe, @ScriptDir & "\AutoIt\AutoIt3.exe")
EndFunc   ;==>_erkenne_au3exe

Func _erkenne_au32exe()
	Local $RegKey = 'HKEY_LOCAL_MACHINE64\SOFTWARE\'
	If @OSArch <> 'X86' Then $RegKey &= 'Wow6432Node\'
	Local $InstallPath = RegRead($RegKey & 'AutoIt v3\AutoIt', 'InstallDir')
	GUICtrlSetData($Input_config_au2exe, "")
	If DriveStatus("c:\") = "READY" Then
		If FileExists("C:\Programme\AutoIt3\Aut2Exe\Aut2exe.exe") Then GUICtrlSetData($Input_config_au2exe, "C:\Programme\AutoIt3\Aut2Exe\Aut2exe.exe")
		If FileExists("C:\Program Files\AutoIt3\Aut2Exe\Aut2exe.exe") Then GUICtrlSetData($Input_config_au2exe, "C:\Program Files\AutoIt3\Aut2Exe\Aut2exe.exe")
		If FileExists("C:\Program Files (x86)\AutoIt3\Aut2Exe\Aut2exe.exe") Then GUICtrlSetData($Input_config_au2exe, "C:\Program Files (x86)\AutoIt3\Aut2Exe\Aut2exe.exe")
	EndIf
	If DriveStatus("D:\") = "READY" Then
		If FileExists("D:\Programme\AutoIt3\Aut2Exe\Aut2exe.exe") Then GUICtrlSetData($Input_config_au2exe, "D:\Programme\AutoIt3\Aut2Exe\Aut2exe.exe")
		If FileExists("D:\Program Files\AutoIt3\Aut2Exe\Aut2exe.exe") Then GUICtrlSetData($Input_config_au2exe, "D:\Program Files\AutoIt3\Aut2Exe\Aut2exe.exe")
		If FileExists("D:\Program Files (x86)\AutoIt3\Aut2Exe\Aut2exe.exe") Then GUICtrlSetData($Input_config_au2exe, "D:\Program Files (x86)\AutoIt3\Aut2Exe\Aut2exe.exe")
	EndIf
	If FileExists($InstallPath & "\Aut2Exe\Aut2exe.exe") Then GUICtrlSetData($Input_config_au2exe, $InstallPath & "\Aut2Exe\Aut2exe.exe")
	If FileExists(@ScriptDir & "\portable.dat") And FileExists(@ScriptDir & "\autoit\Aut2Exe\Aut2exe.exe") Then GUICtrlSetData($Input_config_au2exe, @ScriptDir & "\AutoIt\Aut2Exe\Aut2exe.exe")
EndFunc   ;==>_erkenne_au32exe

Func _erkenne_helpfile()
	Local $RegKey = 'HKEY_LOCAL_MACHINE64\SOFTWARE\'
	If @OSArch <> 'X86' Then $RegKey &= 'Wow6432Node\'
	Local $InstallPath = RegRead($RegKey & 'AutoIt v3\AutoIt', 'InstallDir')
	GUICtrlSetData($Input_config_helpfile, "")
	If DriveStatus("c:\") = "READY" Then
		If FileExists("C:\Programme\AutoIt3\AutoIt3Help.exe") Then GUICtrlSetData($Input_config_helpfile, "C:\Programme\AutoIt3\AutoIt3Help.exe")
		If FileExists("C:\Program Files\AutoIt3\AutoIt3Help.exe") Then GUICtrlSetData($Input_config_helpfile, "C:\Program Files\AutoIt3\AutoIt3Help.exe")
		If FileExists("C:\Program Files (x86)\AutoIt3\AutoIt3Help.exe") Then GUICtrlSetData($Input_config_helpfile, "C:\Program Files (x86)\AutoIt3\AutoIt3Help.exe")
	EndIf
	If DriveStatus("D:\") = "READY" Then
		If FileExists("D:\Programme\AutoIt3\AutoIt3Help.exe") Then GUICtrlSetData($Input_config_helpfile, "D:\Programme\AutoIt3\AutoIt3Help.exe")
		If FileExists("D:\Program Files\AutoIt3\AutoIt3Help.exe") Then GUICtrlSetData($Input_config_helpfile, "D:\Program Files\AutoIt3\AutoIt3Help.exe")
		If FileExists("D:\Program Files (x86)\AutoIt3\AutoIt3Help.exe") Then GUICtrlSetData($Input_config_helpfile, "D:\Program Files (x86)\AutoIt3\AutoIt3Help.exe")
	EndIf
	If FileExists($InstallPath & "\AutoIt3Help.exe") Then GUICtrlSetData($Input_config_helpfile, $InstallPath & "\AutoIt3Help.exe")
	If FileExists(@ScriptDir & "\portable.dat") And FileExists(@ScriptDir & "\autoit\AutoIt3Help.exe") Then GUICtrlSetData($Input_config_helpfile, @ScriptDir & "\AutoIt\AutoIt3Help.exe")
EndFunc   ;==>_erkenne_helpfile

Func _Automatische_Suche_der_AutoIt_Ordner()
	;Automatische Suche der Pfade FALLS die in der config.ini nicht existieren sollten
	If Not FileExists($autoitexe) Then
		_erkenne_au3exe()
		If GUICtrlRead($Input_config_au3exe) <> "" Then
			_Write_in_Config("autoitexe", GUICtrlRead($Input_config_au3exe))
			$autoitexe = GUICtrlRead($Input_config_au3exe)
		EndIf
	EndIf

	If Not FileExists($autoit2exe) Then
		_erkenne_au32exe()
		If GUICtrlRead($Input_config_au2exe) <> "" Then
			_Write_in_Config("autoit2exe", GUICtrlRead($Input_config_au2exe))
			$autoit2exe = GUICtrlRead($Input_config_au2exe)
		EndIf
	EndIf

	If Not FileExists($helpfile) Then
		_erkenne_helpfile()
		If GUICtrlRead($Input_config_helpfile) <> "" Then
			_Write_in_Config("helpfileexe", GUICtrlRead($Input_config_helpfile))
			$helpfile = GUICtrlRead($Input_config_helpfile)
		EndIf
	EndIf

EndFunc   ;==>_Automatische_Suche_der_AutoIt_Ordner


Func _Choose_projectfolder()
	$var = _WinAPI_BrowseForFolderDlg("", _Get_langstr(298), $BIF_RETURNONLYFSDIRS, 0, 0, $Config_GUI)
	FileChangeDir(@ScriptDir)
	If $var = "" Then Return
	GUICtrlSetData($Input_Projekte_Pfad, $var)
EndFunc   ;==>_Choose_projectfolder

Func _Choose_backupfolder()
	$var = _WinAPI_BrowseForFolderDlg("", _Get_langstr(298), $BIF_RETURNONLYFSDIRS, 0, 0, $Config_GUI)
	FileChangeDir(@ScriptDir)
	If $var = "" Then Return
	GUICtrlSetData($Input_Backup_Pfad, $var)
EndFunc   ;==>_Choose_backupfolder

Func _Choose_releasefolder()
	$var = _WinAPI_BrowseForFolderDlg("", _Get_langstr(298), $BIF_RETURNONLYFSDIRS, 0, 0, $Config_GUI)
	FileChangeDir(@ScriptDir)
	If $var = "" Then Return
	GUICtrlSetData($Input_Release_Pfad, $var)
EndFunc   ;==>_Choose_releasefolder

Func _Choose_Templatefolder()
	$var = _WinAPI_BrowseForFolderDlg("", _Get_langstr(298), $BIF_RETURNONLYFSDIRS, 0, 0, $Config_GUI)
	FileChangeDir(@ScriptDir)
	If $var = "" Then Return
	GUICtrlSetData($Input_template_Pfad, $var)
EndFunc   ;==>_Choose_Templatefolder

Func _Choose_pluginfolder()
	$var = _WinAPI_BrowseForFolderDlg("", _Get_langstr(298), $BIF_RETURNONLYFSDIRS, 0, 0, $Config_GUI)
	FileChangeDir(@ScriptDir)
	If $var = "" Then Return
	GUICtrlSetData($Einstellungen_Pfade_Pluginpfad_input, $var)
EndFunc   ;==>_Choose_pluginfolder

Func _check_fonts()
	If FileExists(@WindowsDir & "\fonts\segoeui.ttf") = 0 Then
		$i = MsgBox(262144 + 32 + 4, _Get_langstr(48), _Get_langstr(304), 0, $Sprache_Ersteinrichtung_GUI)
		If $i = 6 Then _install_fonts()
	EndIf

EndFunc   ;==>_check_fonts

Func _install_fonts()
	installfont(@ScriptDir & "\Data\Fonts\segoeui.ttf")
	installfont(@ScriptDir & "\Data\Fonts\segoeuib.ttf")
	installfont(@ScriptDir & "\Data\Fonts\segoeuii.ttf")
	installfont(@ScriptDir & "\Data\Fonts\segoeuil.ttf")
	installfont(@ScriptDir & "\Data\Fonts\segoeuiz.ttf")
	installfont(@ScriptDir & "\Data\Fonts\seguisb.ttf")
	MsgBox(262144 + 64, _Get_langstr(61), _Get_langstr(305), 0, $Sprache_Ersteinrichtung_GUI)
EndFunc   ;==>_install_fonts

Func installfont($file)
	If FileCopy($file, @WindowsDir & '\Fonts', 1) Then
		DllCall('gdi32', 'long', "AddFontResourceA", 'String', @WindowsDir & '\Fonts\' & $file)
	EndIf
EndFunc   ;==>installfont

Func _Choose_Compileicon()
	$var = FileOpenDialog(_Get_langstr(187), $Offenes_Projekt, "Icon (*.ico)", 1 + 2 + 4, "", $Projekteinstellungen_GUI)
	FileChangeDir(@ScriptDir)
	If @error Then Return
	If $var = "" Then Return
	GUICtrlSetImage($Compile_vorschauicon, $var)
	$var = _ISN_Pfad_durch_Variablen_ersetzen($var)
	GUICtrlSetData($Compile_Iconpath, $var)
EndFunc   ;==>_Choose_Compileicon

Func _MOVE_TO_CENTER()
	$w = WinGetPos($Studiofenster, "")
	If $w[1] < -10 Then
		WinMove($Studiofenster, "", Default, 0)
	EndIf
	_WINDOW_REBUILD()
EndFunc   ;==>_MOVE_TO_CENTER

Func _Hauptfenster_Refresh()
	DllCall("user32.dll", "int", "RedrawWindow", "hwnd", $Studiofenster, "int", 0, "int", 0, "int", 0x1)
	_WINDOW_REBUILD()
EndFunc   ;==>_Hauptfenster_Refresh

Func _Show_NEw_Project()
	GUICtrlSetData($new_projectname, "")
	GUICtrlSetData($new_projectusefollowingmainfile_input, "")
	GUICtrlSetData($new_projectauthor, @UserName)
	GUICtrlSetData($new_projectcomment, "")
	GUICtrlSetData($new_projectversion, "1.0")
	GUICtrlSetData($new_projectmainfile, "." & $Autoitextension)
	GUICtrlSetData($new_projectmainfile_create_in_folder, "")
	GUICtrlSetState($new_projectvorlage_radio1, $GUI_CHECKED)
	GUICtrlSetState($new_projectstammordner_checkbox, $GUI_UNCHECKED)
	GUICtrlSetState($new_project_aenderungsprotokolle_checkbox, $GUI_UNCHECKED)

	$state = WinGetState($projectmanager, "")
	If BitAND($state, 2) Then
		GUISetState(@SW_SHOW, $NEW_PROJECT_GUI)
		GUISetState(@SW_DISABLE, $projectmanager)
	Else
		GUISetState(@SW_SHOW, $NEW_PROJECT_GUI)
		GUISetState(@SW_HIDE, $Welcome_GUI)
	EndIf

	ScanforTemplates_Combo()
	_Toggle_New_Projectmode()
EndFunc   ;==>_Show_NEw_Project

Func _Search_for_mainfile()
	$var = FileOpenDialog(_Get_langstr(187), "::{20D04FE0-3AEA-1069-A2D8-08002B30309D}", "AutoIt 3 Skript (*.au3)", 1 + 2 + 4, "", $NEW_PROJECT_GUI)
	FileChangeDir(@ScriptDir)
	If @error Then Return
	If $var = "" Then Return
	GUICtrlSetData($new_projectusefollowingmainfile_input, $var)
EndFunc   ;==>_Search_for_mainfile

Func _Toggle_New_Projectmode()
	If GUICtrlRead($new_projectvorlage_radio0) = $GUI_CHECKED Then
		GUICtrlSetState($new_projectvorlage_label, $GUI_DISABLE)
		GUICtrlSetState($new_projectmainfile_label, $GUI_ENABLE)
		GUICtrlSetState($new_projectvorlage_combo, $GUI_DISABLE)
		GUICtrlSetState($new_projectmainfile, $GUI_ENABLE)

		GUICtrlSetState($new_projectusefollowingmainfile_label, $GUI_DISABLE)
		GUICtrlSetState($new_projectusefollowingmainfile_input, $GUI_DISABLE)
		GUICtrlSetState($new_projectusefollowingmainfile_search, $GUI_DISABLE)
		GUICtrlSetState($new_projectstammordner_checkbox, $GUI_DISABLE)
		GUICtrlSetState($new_projectstammordner_checkbox, $GUI_UNCHECKED)
	EndIf

	If GUICtrlRead($new_projectvorlage_radio1) = $GUI_CHECKED Then
		GUICtrlSetState($new_projectvorlage_label, $GUI_ENABLE)
		GUICtrlSetState($new_projectmainfile_label, $GUI_ENABLE)
		GUICtrlSetState($new_projectvorlage_combo, $GUI_ENABLE)
		GUICtrlSetState($new_projectmainfile, $GUI_ENABLE)

		GUICtrlSetState($new_projectusefollowingmainfile_label, $GUI_DISABLE)
		GUICtrlSetState($new_projectusefollowingmainfile_input, $GUI_DISABLE)
		GUICtrlSetState($new_projectusefollowingmainfile_search, $GUI_DISABLE)
		GUICtrlSetState($new_projectstammordner_checkbox, $GUI_DISABLE)
		GUICtrlSetState($new_projectstammordner_checkbox, $GUI_UNCHECKED)
	EndIf

	If GUICtrlRead($new_projectvorlage_radio2) = $GUI_CHECKED Then
		GUICtrlSetState($new_projectvorlage_label, $GUI_DISABLE)
		GUICtrlSetState($new_projectmainfile_label, $GUI_DISABLE)
		GUICtrlSetState($new_projectvorlage_combo, $GUI_DISABLE)
		GUICtrlSetState($new_projectmainfile, $GUI_DISABLE)

		GUICtrlSetState($new_projectusefollowingmainfile_label, $GUI_ENABLE)
		GUICtrlSetState($new_projectusefollowingmainfile_input, $GUI_ENABLE)
		GUICtrlSetState($new_projectusefollowingmainfile_search, $GUI_ENABLE)
		GUICtrlSetState($new_projectstammordner_checkbox, $GUI_ENABLE)
	EndIf
	_New_Project_inteliwrite()
EndFunc   ;==>_Toggle_New_Projectmode

Func _hide_NEW_Project()
	$state = WinGetState($projectmanager, "")
	If BitAND($state, 2) Then
		GUISetState(@SW_ENABLE, $projectmanager)
		GUISetState(@SW_HIDE, $NEW_PROJECT_GUI)
	Else
		GUISetState(@SW_SHOW, $Welcome_GUI)
		GUISetState(@SW_HIDE, $NEW_PROJECT_GUI)
	EndIf
EndFunc   ;==>_hide_NEW_Project

Func ScanforTemplates_Combo()
	GUICtrlSetData($new_projectvorlage_combo, "", "")
	GUICtrlSetData($neue_datei_vorlagen_combo, "", "")
	Local $Search
	Local $file
	Local $FileAttributes
	Local $FullFilePath
	$Count = 0
	$Search = FileFindFirstFile($templatefolder & "\*.*")
	$Combostring = ""
	While 1
		If $Search = -1 Then
			ExitLoop
		EndIf
		$file = FileFindNextFile($Search)
		If @error Then ExitLoop
		$FullFilePath = $templatefolder & "\" & $file
		$FileAttributes = FileGetAttrib($FullFilePath)
		If StringInStr($FileAttributes, "D") Then
			If FileExists($FullFilePath & "\project.isn") Then
				$Count = $Count + 1
				$folder = $FullFilePath
				$new_projectvorlage_combo_ARRAY[$Count] = $folder
				$Combostring = $Combostring & IniRead($FullFilePath & "\project.isn", "ISNAUTOITSTUDIO", "name", "#ERROR#") & "|"
			EndIf
		EndIf
	WEnd
	GUICtrlSetData($new_projectvorlage_combo, $Combostring, "Default Template")
	GUICtrlSetData($neue_datei_vorlagen_combo, $Combostring, "Default Template")
EndFunc   ;==>ScanforTemplates_Combo

Func _tryotopeninexplorer($file)
	If $file = $Offenes_Projekt & "\" & IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "name", "#ERROR#") Then
		Run("explorer.exe /e,/select, " & FileGetShortName($Offenes_Projekt))
	Else
		Run("explorer.exe /e,/select, " & FileGetShortName($file))
	EndIf
EndFunc   ;==>_tryotopeninexplorer

Func _Make_Temp_project()
	$Tempmode = 1
	$randommode = Int(Random(0, 400, 1))
	DirCreate($Projectfolder & "\temp" & $randommode)
	IniWrite($Projectfolder & "\temp" & $randommode & "\project.isn", "ISNAUTOITSTUDIO", "name", "temp")
	IniWrite($Projectfolder & "\temp" & $randommode & "\project.isn", "ISNAUTOITSTUDIO", "author", "")
	IniWrite($Projectfolder & "\temp" & $randommode & "\project.isn", "ISNAUTOITSTUDIO", "mainfile", "temp.au3")
	_FileCreate($Projectfolder & "\temp" & $randommode & "\temp.au3")
	_Load_Project_by_Foldername($Projectfolder & "\temp" & $randommode)
	Sleep(200)
	_Show_Warning("confirmtempproject", 513, _Get_langstr(394), _Get_langstr(399), _Get_langstr(7))
EndFunc   ;==>_Make_Temp_project

Func _Run_Beforstart()
	WinSetTitle($waiter_GUI, "", _Get_langstr(403))
	GUICtrlSetData($waiter_GUI_str1, _Get_langstr(403))
	GUICtrlSetData($waiter_GUI_str2, _Get_langstr(404))
	GUISetState(@SW_SHOW, $waiter_GUI)
	RunWait($runbefore)
	GUISetState(@SW_HIDE, $waiter_GUI)
EndFunc   ;==>_Run_Beforstart

Func _Run_Beforexit()
	WinSetTitle($waiter_GUI, "", _Get_langstr(405))
	GUICtrlSetData($waiter_GUI_str1, _Get_langstr(405))
	GUICtrlSetData($waiter_GUI_str2, _Get_langstr(406))
	GUISetState(@SW_SHOW, $waiter_GUI)
	RunWait($runafter)
	GUISetState(@SW_HIDE, $waiter_GUI)
EndFunc   ;==>_Run_Beforexit

Func _select_settingscategory()
	AdlibUnRegister("_select_settingscategory")
	$mark = _GUICtrlTreeView_GetText($config_selectorlist, _GUICtrlTreeView_GetSelection($config_selectorlist))
;~ 	ConsoleWrite($mark&@crlf)
;~ 	ConsoleWrite(_GUICtrlTab_GetCurSel($config_tab)&@crlf)
	If $mark = "" Then Return
	If $mark = _Get_langstr(125) Then
		If _GUICtrlTab_GetCurSel($config_tab) <> 0 Then GUICtrlSetState($config_Sheet1, $GUI_SHOW)
	EndIf

	If $mark = _Get_langstr(883) Then
		If _GUICtrlTab_GetCurSel($config_tab) <> 1 Then GUICtrlSetState($config_Sheet2, $GUI_SHOW)
	EndIf

	If $mark = _Get_langstr(196) Then
		If _GUICtrlTab_GetCurSel($config_tab) <> 2 Then GUICtrlSetState($config_Sheet3, $GUI_SHOW)
	EndIf

	If $mark = _Get_langstr(469) Then
		If _GUICtrlTab_GetCurSel($config_tab) <> 3 Then GUICtrlSetState($config_Sheet_Skriptbaum, $GUI_SHOW)
	EndIf

	If $mark = _Get_langstr(447) Then
		If _GUICtrlTab_GetCurSel($config_tab) <> 4 Then GUICtrlSetState($config_Sheet_Darstellung, $GUI_SHOW)
	EndIf

	If $mark = _Get_langstr(884) Then
		If _GUICtrlTab_GetCurSel($config_tab) <> 5 Then GUICtrlSetState($config_Sheet_Farben, $GUI_SHOW)
	EndIf

	If $mark = _Get_langstr(676) Then
		If _GUICtrlTab_GetCurSel($config_tab) <> 6 Then GUICtrlSetState($config_Sheet_hotkeys, $GUI_SHOW)
	EndIf

	If $mark = _Get_langstr(130) Then
		If _GUICtrlTab_GetCurSel($config_tab) <> 7 Then GUICtrlSetState($config_Sheet_sprache, $GUI_SHOW)
	EndIf

	If $mark = _Get_langstr(206) Then
		If _GUICtrlTab_GetCurSel($config_tab) <> 8 Then GUICtrlSetState($config_Sheet_Backup, $GUI_SHOW)
	EndIf

	If $mark = _Get_langstr(260) Then
		If _GUICtrlTab_GetCurSel($config_tab) <> 9 Then GUICtrlSetState($config_Sheet_Programmpfade, $GUI_SHOW)
	EndIf

	If $mark = _Get_langstr(482) Then
		If _GUICtrlTab_GetCurSel($config_tab) <> 10 Then GUICtrlSetState($config_Sheet_Skins, $GUI_SHOW)
	EndIf

	If $mark = _Get_langstr(138) Then
		If _GUICtrlTab_GetCurSel($config_tab) <> 11 Then GUICtrlSetState($config_Sheet_Plugins, $GUI_SHOW)
	EndIf

	If $mark = _Get_langstr(493) Then
		If _GUICtrlTab_GetCurSel($config_tab) <> 12 Then GUICtrlSetState($config_Sheet_Erweitert, $GUI_SHOW)
	EndIf

	If $mark = _Get_langstr(261) Then
		If _GUICtrlTab_GetCurSel($config_tab) <> 13 Then GUICtrlSetState($config_Sheet_Trophys, $GUI_SHOW)
	EndIf

	If $mark = _Get_langstr(952) Then
		If _GUICtrlTab_GetCurSel($config_tab) <> 14 Then GUICtrlSetState($config_Sheet_Toolbar, $GUI_SHOW)
	EndIf

	If $mark = _Get_langstr(327) Then
		If _GUICtrlTab_GetCurSel($config_tab) <> 15 Then GUICtrlSetState($config_Sheet_Tidy, $GUI_SHOW)
	EndIf

	If $mark = _Get_langstr(1074) Then
		If _GUICtrlTab_GetCurSel($config_tab) <> 16 Then GUICtrlSetState($config_Sheet_Include, $GUI_SHOW)
		EndIf

    If $mark = _Get_langstr(1085) Then
		If _GUICtrlTab_GetCurSel($config_tab) <> 17 Then GUICtrlSetState($config_Sheet_AutoSave, $GUI_SHOW)
	EndIf
EndFunc   ;==>_select_settingscategory

Func _Select_next_tab()
	If _GUICtrlTab_GetItemCount($htab) = 0 Then Return
	$to_select = _GUICtrlTab_GetCurFocus($htab) + 1
	If $to_select > _GUICtrlTab_GetItemCount($htab) - 1 Then $to_select = 0
	_GUICtrlTab_ActivateTabX($htab, $to_select)
	_Show_Tab($to_select)
EndFunc   ;==>_Select_next_tab

Func _Select_previous_tab()
	If _GUICtrlTab_GetItemCount($htab) = 0 Then Return
	$to_select = _GUICtrlTab_GetCurFocus($htab) - 1
	If $to_select < 0 Then $to_select = _GUICtrlTab_GetItemCount($htab) - 1
	_GUICtrlTab_ActivateTabX($htab, $to_select)
	_Show_Tab($to_select)
EndFunc   ;==>_Select_previous_tab

Func _minimize_studio()
	GUISetState(@SW_MINIMIZE, $Studiofenster)
EndFunc   ;==>_minimize_studio

Func _Toggle_Fulscreen()
	If $Fulscreen_Mode = 0 Then
		$Fulscreen_Mode = 1
		GUISetStyle($WS_POPUP, -1, $Studiofenster)
		_MaxOnMonitor($Studiofenster, "", $Runonmonitor)
	Else
		$Fulscreen_Mode = 0
		GUISetStyle(BitOR($WS_MINIMIZEBOX, $WS_MAXIMIZEBOX, $WS_SYSMENU, $WS_CAPTION, $WS_SIZEBOX), -1, $Studiofenster)
		_CenterOnMonitor($Studiofenster, "", $Runonmonitor)
		WinSetState($Studiofenster, "", @SW_MAXIMIZE)
	EndIf
	WinSetOnTop($Studiofenster, "", 1)
	WinSetOnTop($Studiofenster, "", 0)
	_GUICtrlStatusBar_Resize($Status_bar)
	_Rezize()
	If _GUICtrlTab_GetItemCount($htab) > 0 Then
		_Show_Tab(_GUICtrlTab_GetCurFocus($htab))
		_MailSlotWrite(String("\\.\mailslot\ISNPLUGIN_" & WinGetProcess($Plugin_Handle[_GUICtrlTab_GetCurFocus($htab)])), $Mailslot_Pfad & "|resize")
	EndIf
	DllCall("user32.dll", "int", "RedrawWindow", "hwnd", $Studiofenster, "int", 0, "int", 0, "int", 0x1)
EndFunc   ;==>_Toggle_Fulscreen

;==================================================================================================
; Function Name:   _ShowMonitorInfo()
; Description::    Show the info in $__MonitorList in a msgbox (line 0 is entire screen)
; Parameter(s):    n/a
; Return Value(s): n/a
; Author(s):       xrxca (autoit@forums.xrx.ca)
;==================================================================================================

Func _ShowMonitorInfo()
	If $__MonitorList[0][0] == 0 Then
		_GetMonitors()
	EndIf
	Local $msg = ""
	Local $i = 0
	For $i = 0 To $__MonitorList[0][0]
		$msg &= $i & " - L:" & $__MonitorList[$i][1] & ", T:" & $__MonitorList[$i][2]
		$msg &= ", R:" & $__MonitorList[$i][3] & ", B:" & $__MonitorList[$i][4]
		If $i < $__MonitorList[0][0] Then $msg &= @CRLF
	Next
	MsgBox(0, $__MonitorList[0][0] & " Monitors: ", $msg)
EndFunc   ;==>_ShowMonitorInfo

;==================================================================================================
; Function Name:   _MaxOnMonitor($Title[, $Text = ''[, $Monitor = -1]])
; Description::    Maximize a window on a specific monitor (or the monitor the mouse is on)
; Parameter(s):    $Title   The title of the window to Move/Maximize
;     optional:    $Text    The text of the window to Move/Maximize
;     optional:    $Monitor The monitor to move to (1..NumMonitors) defaults to monitor mouse is on
; Note:            Should probably have specified return/error codes but haven't put them in yet
; Author(s):       xrxca (autoit@forums.xrx.ca)
;==================================================================================================

Func _MaxOnMonitor($Title, $text = '', $Monitor = -1)
	_CenterOnMonitor($Title, $text, $Monitor)
	WinSetState($Title, $text, @SW_MAXIMIZE)
EndFunc   ;==>_MaxOnMonitor

;==================================================================================================
; Function Name:   _CenterOnMonitor($Title[, $Text = ''[, $Monitor = -1]])
; Description::    Center a window on a specific monitor (or the monitor the mouse is on)
; Parameter(s):    $Title   The title of the window to Move/Maximize
;     optional:    $Text    The text of the window to Move/Maximize
;     optional:    $Monitor The monitor to move to (1..NumMonitors) defaults to monitor mouse is on
;					$Ignore_primary Ist nur 1 wenn Monitore Identifiziert werden (dadurch wird _get_primary_monitor() übersprungen)
; Note:            Should probably have specified return/error codes but haven't put them in yet
; Author(s):       xrxca (autoit@forums.xrx.ca)
;==================================================================================================

Func _CenterOnMonitor($Title, $text = '', $Monitor = -1, $Ignore_primary = 0)
	If $Monitor = -1 Then $Monitor = $Runonmonitor
	If $Immer_am_primaeren_monitor_starten = "true" And $Ignore_primary = 0 Then $Monitor = _get_primary_monitor()
	$hWindow = WinGetHandle($Title, $text)
	If $Monitor > $__MonitorList[0][0] Then $Monitor = 1
	If Not @error Then
		If $Monitor == -1 Then
			$Monitor = _GetMonitorFromPoint()
		ElseIf $__MonitorList[0][0] == 0 Then
			_GetMonitors()
		EndIf
		If($Monitor > 0) And($Monitor <= $__MonitorList[0][0]) Then
			; Restore the window if necessary
			Local $WinState = WinGetState($hWindow)
			If BitAND($WinState, 16) Or BitAND($WinState, 32) Then
				WinSetState($hWindow, '', @SW_RESTORE)
			EndIf
			Local $WinSize = WinGetPos($hWindow)
			Local $x = Int(($__MonitorList[$Monitor][3] - $__MonitorList[$Monitor][1] - $WinSize[2]) / 2) + $__MonitorList[$Monitor][1]
			Local $y = Int(($__MonitorList[$Monitor][4] - $__MonitorList[$Monitor][2] - $WinSize[3]) / 2) + $__MonitorList[$Monitor][2]
			WinMove($hWindow, '', $x, $y)
		EndIf
	EndIf
EndFunc   ;==>_CenterOnMonitor




Func _Get_Monitor_Resolution($Monitor = -1)
	Local $array[2]
	If $Immer_am_primaeren_monitor_starten = "true" Then $Monitor = _get_primary_monitor()
	If $Monitor = -1 Then Return
	If $Monitor > $__MonitorList[0][0] Then $Monitor = 1
	If Not @error Then
		If $Monitor == -1 Then
			$Monitor = _GetMonitorFromPoint()
		ElseIf $__MonitorList[0][0] == 0 Then
			_GetMonitors()
		EndIf
		If($Monitor > 0) And($Monitor <= $__MonitorList[0][0]) Then
			Local $width = Int(($__MonitorList[$Monitor][3] - $__MonitorList[$Monitor][1]) / 2) * 2
			Local $height = Int(($__MonitorList[$Monitor][4] - $__MonitorList[$Monitor][2])) + $__MonitorList[$Monitor][2]
			$array[0] = $width
			$array[1] = $height
			Return $array
		EndIf
	EndIf
EndFunc   ;==>_Get_Monitor_Resolution



;==================================================================================================
; Function Name:   _GetMonitorFromPoint([$XorPoint = -654321[, $Y = 0]])
; Description::    Get a monitor number from an x/y pos or the current mouse position
; Parameter(s):
;     optional:    $XorPoint X Position or Array with X/Y as items 0,1 (ie from MouseGetPos())
;     optional:    $Y        Y Position
; Note:            Should probably have specified return/error codes but haven't put them in yet,
;                  and better checking should be done on passed variables.
;                  Used to use MonitorFromPoint DLL call, but it didn't seem to always work.
; Author(s):       xrxca (autoit@forums.xrx.ca)
;==================================================================================================

Func _GetMonitorFromPoint($XorPoint = 0, $y = 0)
	If @NumParams = 0 Then
		Local $MousePos = MouseGetPos()
		Local $myX = $MousePos[0]
		Local $myY = $MousePos[1]
	ElseIf(@NumParams = 1) And IsArray($XorPoint) Then
		Local $myX = $XorPoint[0]
		Local $myY = $XorPoint[1]
	Else
		Local $myX = $XorPoint
		Local $myY = $y
	EndIf
	If $__MonitorList[0][0] == 0 Then
		_GetMonitors()
	EndIf
	Local $i = 0
	Local $Monitor = 0
	For $i = 1 To $__MonitorList[0][0]
		If($myX >= $__MonitorList[$i][1]) _
				And($myX < $__MonitorList[$i][3]) _
				And($myY >= $__MonitorList[$i][2]) _
				And($myY < $__MonitorList[$i][4]) Then $Monitor = $i
	Next
	Return $Monitor
EndFunc   ;==>_GetMonitorFromPoint

;==================================================================================================
; Function Name:   _GetMonitors()
; Description::    Load monitor positions
; Parameter(s):    n/a
; Return Value(s): 2D Array of Monitors
;                       [0][0] = Number of Monitors
;                       [i][0] = HMONITOR handle of this monitor.
;                       [i][1] = Left Position of Monitor
;                       [i][2] = Top Position of Monitor
;                       [i][3] = Right Position of Monitor
;                       [i][4] = Bottom Position of Monitor
; Note:            [0][1..4] are set to Left,Top,Right,Bottom of entire screen
;                  hMonitor is returned in [i][0], but no longer used by these routines.
;                  Also sets $__MonitorList global variable (for other subs to use)
; Author(s):       xrxca (autoit@forums.xrx.ca)
;==================================================================================================

Func _GetMonitors()
	$__MonitorList[0][0] = 0 ;  Added so that the global array is reset if this is called multiple times
	Local $handle = DllCallbackRegister("_MonitorEnumProc", "int", "hwnd;hwnd;ptr;lparam")
	DllCall("user32.dll", "int", "EnumDisplayMonitors", "hwnd", 0, "ptr", 0, "ptr", DllCallbackGetPtr($handle), "lparam", 0)
	DllCallbackFree($handle)
	Local $i = 0
	For $i = 1 To $__MonitorList[0][0]
		If $__MonitorList[$i][1] < $__MonitorList[0][1] Then $__MonitorList[0][1] = $__MonitorList[$i][1]
		If $__MonitorList[$i][2] < $__MonitorList[0][2] Then $__MonitorList[0][2] = $__MonitorList[$i][2]
		If $__MonitorList[$i][3] > $__MonitorList[0][3] Then $__MonitorList[0][3] = $__MonitorList[$i][3]
		If $__MonitorList[$i][4] > $__MonitorList[0][4] Then $__MonitorList[0][4] = $__MonitorList[$i][4]
	Next
	Return $__MonitorList
EndFunc   ;==>_GetMonitors


;============================================================================================== _NumberAndNameMonitors
; Function Name:    _NumberAndNameMonitors ()
; Description:   Provides the first key elements of a multimonitor system, included the Regedit Keys
; Parameter(s):   None
; Return Value(s):   $NumberAndName [][]
;~        [0][0] total number of video devices
;;       [x][1] name of the device
;;       [x][2] name of the adapter
;;       [x][3] monitor flags (value is returned in Hex str -convert in DEC before use with Bitand)
;;       [x][4] registry key of the device
; Remarks:   the flag value [x][3] can be one of the following
;;       DISPLAY_DEVICE_ATTACHED_TO_DESKTOP  0x00000001
;;             DISPLAY_DEVICE_MULTI_DRIVER       0x00000002
;;            DISPLAY_DEVICE_PRIMARY_DEVICE    0x00000004
;;            DISPLAY_DEVICE_VGA               0x00000010
;;        DISPLAY_MIRROR_DEVICE  0X00000008
;;        DISPLAY_REMOVABLE  0X00000020
;
; Author(s):        Hermano
;===========================================================================================================================
Func _get_primary_monitor()
	Local $dev = -1, $id = 0, $msg_ = "", $EnumDisplays, $StateFlag
	Dim $NumberAndName[2][6]
	Local $DISPLAY_DEVICE = DllStructCreate("int;char[32];char[128];int;char[128];char[128]")
	DllStructSetData($DISPLAY_DEVICE, 1, DllStructGetSize($DISPLAY_DEVICE))
	Dim $dll = "user32.dll"
	Do
		$dev += 1
		$EnumDisplays = DllCall($dll, "int", "EnumDisplayDevices", "ptr", 0, "int", $dev, "ptr", DllStructGetPtr($DISPLAY_DEVICE), "int", 1)
		If $EnumDisplays[0] <> 0 Then
			ReDim $NumberAndName[$dev + 2][6]
			$NumberAndName[$dev + 1][1] = DllStructGetData($DISPLAY_DEVICE, 2) ;device Name
			$NumberAndName[$dev + 1][2] = DllStructGetData($DISPLAY_DEVICE, 3) ;device or display description
			$NumberAndName[$dev + 1][3] = Hex(DllStructGetData($DISPLAY_DEVICE, 4)) ;all flags (value in HEX)
			$NumberAndName[$dev + 1][4] = DllStructGetData($DISPLAY_DEVICE, 6) ;registry key of the device
			$NumberAndName[$dev + 1][5] = DllStructGetData($DISPLAY_DEVICE, 5) ;hardware interface name
		EndIf
	Until $EnumDisplays[0] = 0
	$NumberAndName[0][0] += $dev

	For $x = 0 To $NumberAndName[0][0]
		If BitAND($NumberAndName[$x][3], 0x00000004) Then
			Return $x
		EndIf
	Next

	Return 1
EndFunc   ;==>_get_primary_monitor


;==================================================================================================
; Function Name:   _MonitorEnumProc($hMonitor, $hDC, $lRect, $lParam)
; Description::    Enum Callback Function for EnumDisplayMonitors in _GetMonitors
; Author(s):       xrxca (autoit@forums.xrx.ca)
;==================================================================================================

Func _MonitorEnumProc($hMonitor, $hDC, $lRect, $lParam)
	Local $Rect = DllStructCreate("int left;int top;int right;int bottom", $lRect)
	$__MonitorList[0][0] += 1
	ReDim $__MonitorList[$__MonitorList[0][0] + 1][5]
	$__MonitorList[$__MonitorList[0][0]][0] = $hMonitor
	$__MonitorList[$__MonitorList[0][0]][1] = DllStructGetData($Rect, "left")
	$__MonitorList[$__MonitorList[0][0]][2] = DllStructGetData($Rect, "top")
	$__MonitorList[$__MonitorList[0][0]][3] = DllStructGetData($Rect, "right")
	$__MonitorList[$__MonitorList[0][0]][4] = DllStructGetData($Rect, "bottom")
	Return 1 ; Return 1 to continue enumeration
EndFunc   ;==>_MonitorEnumProc

Func _monitore_identifizieren()
	GUICtrlSetState($darstellung_identify, $GUI_DISABLE)
	Global $identifizieren_Guis[20]
	For $Count = 1 To $__MonitorList[0][0]
		$identifizieren_Guis[$Count] = GUICreate("", 800, 700, -1, -1, $WS_POPUP, $WS_EX_LAYERED + $WS_EX_TOPMOST + $WS_EX_TOOLWINDOW)
		_CenterOnMonitor($identifizieren_Guis[$Count], "", $Count, 1)
		GUICtrlCreateLabel($Count, 0, 0, 800, 800, $SS_CENTER)
		GUICtrlSetBkColor(-1, -2)
		GUICtrlSetFont(-1, 400, 400, 0, "Arial")
		GUISetBkColor(0xABCDEF, $identifizieren_Guis[$Count])
		_WinAPI_SetLayeredWindowAttributes($identifizieren_Guis[$Count], 0xABCDEF, 255)
		GUISetState(@SW_SHOW, $identifizieren_Guis[$Count])
	Next
	Sleep(2500) ;wait 2,5 secounds
	For $Count = 1 To $__MonitorList[0][0]
		GUIDelete($identifizieren_Guis[$Count])
	Next
	GUICtrlSetState($darstellung_identify, $GUI_ENABLE)
EndFunc   ;==>_monitore_identifizieren

Func _ColourInvert($code)
	Return "0x" & Hex(0xFFFFFF - $code, 6)
EndFunc   ;==>_ColourInvert

Func _Drag_and_drop_import_file($Count, $files)
	If $Studiomodus = 1 Then
		$res = _WinAPI_BrowseForFolderDlg($Offenes_Projekt, _Get_langstr(59), $BIF_RETURNONLYFSDIRS, 0, 0, $Studiofenster)
	Else
		$res = _WinAPI_BrowseForFolderDlg("", _Get_langstr(59), $BIF_RETURNONLYFSDIRS, 0, 0, $Studiofenster)
	EndIf
	If @error Or $res = "" Then
		Return
	Else
		For $x = 0 To $Count - 1
			_FileOperationProgress($files[$x], $res, 1, $FO_COPY, $FOF_SIMPLEPROGRESS + $FOF_NOCONFIRMATION)
			If @extended == 1 Then ;ERROR
				Return
			EndIf
			_Write_log($files[$x] & " " & _Get_langstr(63))
		Next
		FileChangeDir(@ScriptDir)
		_Update_Treeview()
		MsgBox(262144 + 64, _Get_langstr(61), _Get_langstr(60), 0, $Studiofenster)
		If $Count > 14 Then _Earn_trophy(7, 2)
	EndIf
EndFunc   ;==>_Drag_and_drop_import_file

Func _GetToolbarButtonScreenPos($hWnd, $hTb, $iCmdID, $iOffset = 0, $iIndex = 0, $hRbar = -1)
	; Author: rover 04/08/2008
	; this UDF integrates _WinAPI_ClientToScreen() from WinAPI.au3 include.
	; _GUICtrlMenu_TrackPopupMenu() uses screen coordinates to place dropdown menu.
	; button client coordinates must be converted to screen coordinates.
	; $hRbar and $iIndex is for optional Rebar hwnd and band index
	; $iOffset sets menu Y position below button
	; Update: 06/27/2009 added offset for menu position below button, corrected left off-screen menu positioning.
	; Update: 07/13/2009 added compensation for CCS_NORESIZE and RBS_BANDBORDERS style alignment problems. cleaned up error handling.
	Local $aBorders, $aBandRect, $aRect, $tPOINT, $pPoint, $aRet[2]
	Local $aRect = _GUICtrlToolbar_GetButtonRect($hTb, $iCmdID)
	If @error Then Return SetError(@error, 0, $aRet)
	$tPOINT = DllStructCreate("int X;int Y")
	DllStructSetData($tPOINT, "X", $aRect[0])
	DllStructSetData($tPOINT, "Y", $aRect[3])
	$pPoint = DllStructGetPtr($tPOINT)
	DllCall("User32.dll", "int", "ClientToScreen", "hwnd", $hWnd, "ptr", $pPoint)
	If @error Then Return SetError(@error, 0, $aRet)
	; X screen coordinate of dropdown button left corner
	$aRet[0] = DllStructGetData($tPOINT, "X")
	;limit X coordinate to 0 if button partially off-screen
;~         If $aRet[0] < 0 Then $aRet[0] = 0 ;bugfix for MultiMonitor Support
	; Y screen coordinate of dropdown button left corner
	$aRet[1] = DllStructGetData($tPOINT, "Y") + Number($iOffset)
	;#cs  comment out if not using rebars
	If $hRbar <> -1 And IsHWnd($hRbar) And IsNumber($iIndex) Then
		If BitAND(_SendMessage($hTb, $TB_GETSTYLE), $CCS_NORESIZE) = $CCS_NORESIZE Then
			$aBorders = _GUICtrlRebar_GetBandBorders($hRbar, $iIndex)
			If @error Then Return SetError(@error, 0, $aRet)
			$aBandRect = _GUICtrlRebar_GetBandRect($hRbar, $iIndex)
			If @error Then Return SetError(@error, 0, $aRet)
			; X screen coordinate of dropdown button left corner
			; add or subtract 2 pixel border of bounding rectangle for band in rebar control
			If BitAND(_WinAPI_GetWindowLong($hReBar, $GWL_STYLE), $RBS_BANDBORDERS) = 0 Then $aBandRect[0] = -$aBandRect[0]
			If $aRet[0] <> 0 Then $aRet[0] += ($aBorders[0] - $aBandRect[0])
		EndIf
	EndIf
	;#ce
	Return $aRet ; return X,Y screen coordinates of toolbar dropdown button lower left corner
EndFunc   ;==>_GetToolbarButtonScreenPos

Func _WinAPI_ShellExtractIcons($icon, $Index, $width, $height)
	Local $Ret = DllCall('shell32.dll', 'int', 'SHExtractIconsW', 'wstr', $icon, 'int', $Index, 'int', $width, 'int', $height, 'ptr*', 0, 'ptr*', 0, 'int', 1, 'int', 0)
	If @error Or $Ret[0] = 0 Or $Ret[5] = Ptr(0) Then Return SetError(1, 0, 0)
	Return $Ret[5]
EndFunc   ;==>_WinAPI_ShellExtractIcons

Func WM_DROPFILES_FUNC($hWnd, $msgID, $wParam, $lParam)
	Local $nSize, $pFileName
	Local $nAmt = DllCall("shell32.dll", "int", "DragQueryFile", "hwnd", $wParam, "int", 0xFFFFFFFF, "ptr", 0, "int", 255)
	For $i = 0 To $nAmt[0] - 1
		$nSize = DllCall("shell32.dll", "int", "DragQueryFile", "hwnd", $wParam, "int", $i, "ptr", 0, "int", 0)
		$nSize = $nSize[0] + 1
		$pFileName = DllStructCreate("char[" & $nSize & "]")
		DllCall("shell32.dll", "int", "DragQueryFile", "hwnd", $wParam, "int", $i, "ptr", DllStructGetPtr($pFileName), "int", $nSize)
		ReDim $gaDropFiles[$i + 1]
		$gaDropFiles[$i] = DllStructGetData($pFileName, 1)
		$pFileName = 0
	Next
	_Drag_and_drop_import_file($nAmt[0], $gaDropFiles)
EndFunc   ;==>WM_DROPFILES_FUNC

Func _Fadeout_logo()
	If $enablelogo = "true" Then
		$alpha = 255
		GUISetState(@SW_HIDE, $controlGui_startup)
		While 1
			$alpha = $alpha - 13
			If $alpha < 0 Then $alpha = 0
			If $alpha = 0 Then ExitLoop
			SetBitmap($Logo_PNG, $hImagestartup, $alpha)
		WEnd
		SetBitmap($Logo_PNG, $hImagestartup, 0)
		GUISetState(@SW_HIDE, $Logo_PNG)
	EndIf
EndFunc   ;==>_Fadeout_logo

Func _Show_Parameterconfig()
	Local $array_params
	$Params = _IniReadRaw($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "testparam", "")
	GUICtrlSetData($startparameter_input, StringReplace($Params, "#BREAK#", @CRLF))
	GUISetState(@SW_SHOW, $parameter_GUI)
	GUISetState(@SW_DISABLE, $Studiofenster)
	_GUICtrlEdit_SetSel($startparameter_input, -1, -1)
EndFunc   ;==>_Show_Parameterconfig

Func _HIDE_Parameterconfig()
	$Param_String = GUICtrlRead($startparameter_input)
	$Param_String = StringReplace($Param_String, @CRLF, "#BREAK#")
	IniWrite($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "testparam", $Param_String)
	GUISetState(@SW_ENABLE, $Studiofenster)
	GUISetState(@SW_HIDE, $parameter_GUI)
EndFunc   ;==>_HIDE_Parameterconfig

Func _HIDE_Parameterconfig_without_save()
	GUISetState(@SW_ENABLE, $Studiofenster)
	GUISetState(@SW_HIDE, $parameter_GUI)
EndFunc   ;==>_HIDE_Parameterconfig_without_save

Func _Open_Homepage()
	ShellExecute("http://www.isnetwork.at")
EndFunc   ;==>_Open_Homepage

Func _Open_Weitere_Plugins_Downloaden()
	ShellExecute("http://www.isnetwork.at/index.php/2011-10-17-08-51-43/plugins")
EndFunc   ;==>_Open_Weitere_Plugins_Downloaden

Func _Open_Forum()
	ShellExecute("http://www.isnetwork.at/forum")
EndFunc   ;==>_Open_Forum

Func _ISN_AutoIt_Studio_Spenden()
	ShellExecute("https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=S94VE64V6HYP2&lc=AT&item_name=Spende%20fuer%20ISN%20AutoIt%20Studio&currency_code=EUR&bn=PP%2dDonationsBF%3abtn_donateCC_LG%2egif%3aNonHosted")
EndFunc   ;==>_ISN_AutoIt_Studio_Spenden

Func _WillkommenGUI_Wechsle_Nich_mehr_anzeigen_Checkbox()
	If GUICtrlRead($Willkommen_autoloadcheckbox) = $GUI_UNCHECKED Then
		GUICtrlSetState($Willkommen_autoloadcheckbox, $GUI_CHECKED)
	Else
		GUICtrlSetState($Willkommen_autoloadcheckbox, $GUI_UNCHECKED)
	EndIf
	_toggle_Willkommen_Autoload()
EndFunc   ;==>_WillkommenGUI_Wechsle_Nich_mehr_anzeigen_Checkbox

Func _IniReadRaw($inifile, $header, $key, $defval = "")
	Local $arr = IniReadSection($inifile, $header)
	If @error Or Not IsArray($arr) Then Return SetError(1, 0, $defval)

	For $i = 1 To $arr[0][0]
		If $arr[$i][0] == $key Then Return $arr[$i][1]
	Next

	Return SetError(1, 1, $defval)
EndFunc   ;==>_IniReadRaw


Func _Resize_Elements_to_Window()

	$size_new_resize = WinGetClientSize($Studiofenster, "")
	If Not IsArray($size_before_resize) Then Return
	If Not IsArray($size_new_resize) Then Return
	If $size_new_resize[0] < 0 Then Return
	If $size_new_resize[1] < 0 Then Return
	$dif0 = $size_before_resize[0] - $size_new_resize[0]
	$dif1 = $size_before_resize[1] - $size_new_resize[1]
	If $dif0 = 0 And $dif1 = 0 Then Return
	$dif0 = $dif0 / 2
	$dif1 = $dif1 / 2
;~ 	ConsoleWrite($dif0&@crlf)
;~ 	ConsoleWrite($dif1&@crlf)

	$c_pos = ControlGetPos($Studiofenster, "", $VSplitter_2)
	$new_pos_x = $c_pos[0] - $dif0
	If $new_pos_x > $size_new_resize[0] - 100 Then $new_pos_x = $size_new_resize[0] - 100
	If $new_pos_x < $size_new_resize[0] - 250 Then $new_pos_x = $size_new_resize[0] - 250
	If $IS_HIDDEN_RECHTS = 1 Then $new_pos_x = $size_new_resize[0] - 2
;~ 	if $Toggle_rightside = 1 then _Toggle_hide_rightbar()
	If $new_pos_x < 1 Then $new_pos_x = $size_new_resize[0] - 250
;~ 	ConsoleWrite("Set VSplitter_2 to x:"&$new_pos_x&" y:"&25&@crlf)
	If $new_pos_x < 0 Then Return ;bug ?!
	GUICtrlSetPos($VSplitter_2, $new_pos_x, 25, $Splitter_Breite, $size_new_resize[1] - 50)
	If $hidefunctionstree = "false" And $IS_HIDDEN_RECHTS = 0 And $Toggle_rightside = 0 Then _Write_in_Config("VSplitter2X", $new_pos_x)

	$c_pos = ControlGetPos($Studiofenster, "", $VSplitter_1)
	$new_pos_x = $c_pos[0] - $dif0
	If $new_pos_x < 100 Then $new_pos_x = 100
	If $new_pos_x > 250 Then $new_pos_x = 250
	If $Toggle_Leftside = 0 Then
;~ 		ConsoleWrite("Set VSplitter_1 to x:"&$new_pos_x&" y:"&25&@crlf)
		GUICtrlSetPos($VSplitter_1, $new_pos_x, 25, $Splitter_Breite, $size_new_resize[1] - 50)
	EndIf
	If $Toggle_Leftside = 0 Then _Write_in_Config("VSplitter1X", $new_pos_x)

	$c_pos = ControlGetPos($Studiofenster, "", $HSplitter_1)
	$new_pos_y = $c_pos[1] - $dif1
	If $new_pos_y > $size_new_resize[1] Then $new_pos_y = $size_new_resize[1] - 100
	If $new_pos_y < 100 Then $new_pos_y = $size_new_resize[1] - 100
	If $IS_HIDDEN_UNTEN = 0 And $hidedebug = "false" Then
;~ 		ConsoleWrite("Set HSplitter1 to x:"&268&" y:"&$new_pos_y&@crlf)
		If $new_pos_y < 0 Then Return ;bug ?!
		GUICtrlSetPos($HSplitter_1, 268, $new_pos_y, 200, $Splitter_Breite)
	EndIf
	If $IS_HIDDEN_UNTEN = 0 And $hidedebug = "false" Then _Write_in_Config("HSplitter1Y", $new_pos_y)

	$c_pos = ControlGetPos($Studiofenster, "", $HSplitter_2)
	$new_pos_y = $c_pos[1] - $dif1
	If $new_pos_y > $size_new_resize[1] Then $new_pos_y = $size_new_resize[1] - 200
	If $new_pos_y < 100 Then $new_pos_y = $size_new_resize[1] - 200
	If $hideprogramlog = "false" Then
;~ 		ConsoleWrite("Set HSplitter2 to x:"&2&" y:"&$new_pos_y&@crlf)
		If $new_pos_y < 0 Then Return ;bug ?!
		GUICtrlSetPos($HSplitter_2, 2, $new_pos_y, 200, $Splitter_Breite)
	EndIf
	If $hideprogramlog = "false" Then _Write_in_Config("HSplitter2Y", $new_pos_y)
;~ 	ConsoleWrite(@crlf)
	_Show_Tab(_GUICtrlTab_GetCurFocus($htab))
EndFunc   ;==>_Resize_Elements_to_Window

Func _Try_to_open_external_file()
	Local $Dateipfad = FileOpenDialog(_Get_langstr(509), "::{20D04FE0-3AEA-1069-A2D8-08002B30309D}", _Get_langstr(58) & " (*.*)", 1 + 2, "", $Studiofenster)
	FileChangeDir(@ScriptDir)
	WinActivate($Studiofenster)
	GUISwitch($Studiofenster)
	If $Dateipfad = "" Then Return
	If @error Then
		Return
	Else

		Try_to_opten_file($Dateipfad)
	EndIf
EndFunc   ;==>_Try_to_open_external_file

Func _GUISetIcon($hHandle, $sFile, $iName)
	;Edit by isi360
	Return _SendMessage($hHandle, $WM_SETICON, 1, _WinAPI_ShellExtractIcon($sFile, $iName, 16, 16))
EndFunc   ;==>_GUISetIcon



Func _open_windowinfotool()
	If ProcessExists("Au3Info.exe") Then
		ProcessClose("Au3Info.exe")
	Else
		Run(@ScriptDir & "\data\Au3Info.exe")
	EndIf
EndFunc   ;==>_open_windowinfotool

Func _Toggle_msgboxcreator()
	If _Pruefe_auf_Type3_Plugin($Plugin_Platzhalter_MSGBoxGenerator) <> -1 then return ;Platzhalter für Plugin
	$state = WinGetState($msgboxcreator, "")
	If BitAND($state, 2) Then
		GUISetState(@SW_HIDE, $msgboxcreator)
	Else
		If _GUICtrlTab_GetItemCount($htab) = 0 Then Return
		If $Plugin_Handle[_GUICtrlTab_GetCurFocus($htab)] <> -1 Then Return
		If $Offenes_Projekt = "" Then Return
		GUISetState(@SW_SHOW, $msgboxcreator)
	EndIf
	_Msgbox_generator_set_state()
EndFunc   ;==>_Toggle_msgboxcreator

Func _Msgbox_generator_set_state()
	$buttons = 0

	If GUICtrlRead($msgbox_creator_radio_buttons1) = $GUI_CHECKED Then $buttons = 0
	If GUICtrlRead($msgbox_creator_radio_buttons2) = $GUI_CHECKED Then $buttons = 2
	If GUICtrlRead($msgbox_creator_radio_buttons3) = $GUI_CHECKED Then $buttons = 2
	If GUICtrlRead($msgbox_creator_radio_buttons4) = $GUI_CHECKED Then $buttons = 3
	If GUICtrlRead($msgbox_creator_radio_buttons5) = $GUI_CHECKED Then $buttons = 3
	If GUICtrlRead($msgbox_creator_radio_buttons6) = $GUI_CHECKED Then $buttons = 2
	If GUICtrlRead($msgbox_creator_radio_buttons7) = $GUI_CHECKED Then $buttons = 3

	GUICtrlSetState($msgbox_creator_radio_defbutton1, $GUI_CHECKED)
	GUICtrlSetState($msgbox_creator_radio_defbutton1, $GUI_DISABLE)
	GUICtrlSetState($msgbox_creator_radio_defbutton2, $GUI_DISABLE)
	GUICtrlSetState($msgbox_creator_radio_defbutton3, $GUI_DISABLE)
	If $buttons > 0.9 Then GUICtrlSetState($msgbox_creator_radio_defbutton1, $GUI_ENABLE)
	If $buttons > 1.9 Then GUICtrlSetState($msgbox_creator_radio_defbutton2, $GUI_ENABLE)
	If $buttons > 2.9 Then GUICtrlSetState($msgbox_creator_radio_defbutton3, $GUI_ENABLE)
EndFunc   ;==>_Msgbox_generator_set_state

Func _Insert_msgboxcode()
	If $Offenes_Projekt = "" Then Return
	If GUICtrlRead($msgbox_creator_handle) = "" Then
		_Input_Error_FX($msgbox_creator_handle)
		Return
	EndIf
	If Not StringInStr(GUICtrlRead($msgbox_creator_handle), "$") Then GUICtrlSetData($msgbox_creator_handle, "$" & GUICtrlRead($msgbox_creator_handle))
	If _GUICtrlTab_GetItemCount($htab) > 0 Then
		If $Plugin_Handle[_GUICtrlTab_GetCurFocus($htab)] = -1 Then
			$flags = 0

			$code = ""
			$text = StringReplace(GUICtrlRead($msgbox_creator_edit), '"', "'")
			$asMsgText = StringSplit($text, @CRLF, 1)
			If $asMsgText[0] = 1 Then
				$text = $text
			Else
				$text = $asMsgText[1]
				For $iCtr = 2 To $asMsgText[0]
					$text = $text & Chr(34) & " & @CRLF & " & Chr(34) & $asMsgText[$iCtr]
				Next

			EndIf

			If GUICtrlRead($msgbox_creator_icon1) = $GUI_CHECKED Then $flags = $flags + 0
			If GUICtrlRead($msgbox_creator_icon2) = $GUI_CHECKED Then $flags = $flags + 16
			If GUICtrlRead($msgbox_creator_icon3) = $GUI_CHECKED Then $flags = $flags + 48
			If GUICtrlRead($msgbox_creator_icon4) = $GUI_CHECKED Then $flags = $flags + 64
			If GUICtrlRead($msgbox_creator_icon5) = $GUI_CHECKED Then $flags = $flags + 32

			If GUICtrlRead($msgbox_creator_vordergrund_checkbox) = $GUI_CHECKED Then $flags = $flags + 262144
			If GUICtrlRead($msgbox_creator_text_rechts_checkbox) = $GUI_CHECKED Then $flags = $flags + 524288
			If GUICtrlRead($msgbox_creator_hasicon_checkbox) = $GUI_CHECKED Then $flags = $flags + 4096

			If GUICtrlRead($msgbox_creator_radio_buttons1) = $GUI_CHECKED Then $flags = $flags + 0
			If GUICtrlRead($msgbox_creator_radio_buttons2) = $GUI_CHECKED Then $flags = $flags + 1
			If GUICtrlRead($msgbox_creator_radio_buttons3) = $GUI_CHECKED Then $flags = $flags + 4
			If GUICtrlRead($msgbox_creator_radio_buttons4) = $GUI_CHECKED Then $flags = $flags + 3
			If GUICtrlRead($msgbox_creator_radio_buttons5) = $GUI_CHECKED Then $flags = $flags + 2
			If GUICtrlRead($msgbox_creator_radio_buttons6) = $GUI_CHECKED Then $flags = $flags + 5
			If GUICtrlRead($msgbox_creator_radio_buttons7) = $GUI_CHECKED Then $flags = $flags + 6

			If GUICtrlRead($msgbox_creator_radio_defbutton1) = $GUI_CHECKED Then $flags = $flags + 0
			If GUICtrlRead($msgbox_creator_radio_defbutton2) = $GUI_CHECKED Then $flags = $flags + 256
			If GUICtrlRead($msgbox_creator_radio_defbutton3) = $GUI_CHECKED Then $flags = $flags + 512

			$code = @CRLF & GUICtrlRead($msgbox_creator_handle) & " = MsgBox(" & $flags & ',"' & GUICtrlRead($msgbox_creator_title) & '","' & $text & '",' & GUICtrlRead($msgbox_creator_timeout) & ")" & @CRLF

			If GUICtrlRead($msgbox_creator_radio_buttons1) = $GUI_UNCHECKED Then
				$code = $code & "switch " & GUICtrlRead($msgbox_creator_handle) & @CRLF & @CRLF

				If GUICtrlRead($msgbox_creator_radio_buttons2) = $GUI_CHECKED Then
					$code = $code & @TAB & "case 1 ;OK" & @CRLF & @TAB & ";Your code here..." & @CRLF & @CRLF
					$code = $code & @TAB & "case 2 ;CANCEL" & @CRLF & @TAB & ";Your code here..." & @CRLF & @CRLF
				EndIf

				If GUICtrlRead($msgbox_creator_radio_buttons3) = $GUI_CHECKED Then
					$code = $code & @TAB & "case 6 ;YES" & @CRLF & @TAB & ";Your code here..." & @CRLF & @CRLF
					$code = $code & @TAB & "case 7 ;NO" & @CRLF & @TAB & ";Your code here..." & @CRLF & @CRLF
				EndIf

				If GUICtrlRead($msgbox_creator_radio_buttons4) = $GUI_CHECKED Then
					$code = $code & @TAB & "case 6 ;YES" & @CRLF & @TAB & ";Your code here..." & @CRLF & @CRLF
					$code = $code & @TAB & "case 7 ;NO" & @CRLF & @TAB & ";Your code here..." & @CRLF & @CRLF
					$code = $code & @TAB & "case 2 ;CANCEL" & @CRLF & @TAB & ";Your code here..." & @CRLF & @CRLF
				EndIf

				If GUICtrlRead($msgbox_creator_radio_buttons5) = $GUI_CHECKED Then
					$code = $code & @TAB & "case 2 ;CANCEL" & @CRLF & @TAB & ";Your code here..." & @CRLF & @CRLF
					$code = $code & @TAB & "case 4 ;RETRY" & @CRLF & @TAB & ";Your code here..." & @CRLF & @CRLF
					$code = $code & @TAB & "case 5 ;IGNORE" & @CRLF & @TAB & ";Your code here..." & @CRLF & @CRLF
				EndIf

				If GUICtrlRead($msgbox_creator_radio_buttons6) = $GUI_CHECKED Then
					$code = $code & @TAB & "case 5 ;RETRY" & @CRLF & @TAB & ";Your code here..." & @CRLF & @CRLF
					$code = $code & @TAB & "case 2 ;CANCEL" & @CRLF & @TAB & ";Your code here..." & @CRLF & @CRLF
				EndIf

				If GUICtrlRead($msgbox_creator_radio_buttons7) = $GUI_CHECKED Then
					$code = $code & @TAB & "case 2 ;CANCEL" & @CRLF & @TAB & ";Your code here..." & @CRLF & @CRLF
					$code = $code & @TAB & "case 10 ;TRY AGAIN" & @CRLF & @TAB & ";Your code here..." & @CRLF & @CRLF
					$code = $code & @TAB & "case 11 ;CONTINUE" & @CRLF & @TAB & ";Your code here..." & @CRLF & @CRLF
				EndIf

				$code = $code & "endswitch" & @CRLF
			EndIf

			Sci_InsertText($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)], Sci_GetCurrentPos($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)]), $code)
			_Check_Buttons(0)
		EndIf
	EndIf
EndFunc   ;==>_Insert_msgboxcode

Func _colourpicker_pick_colour()
	GUISetState(@SW_DISABLE, $Studiofenster)
	$Farbe = _ColorChooserDialog(GUICtrlGetBkColor($colour_vorschau), $colour_picker)
	GUISetState(@SW_ENABLE, $Studiofenster)
	If $Farbe > -1 Then
		GUICtrlSetBkColor($colour_vorschau, $Farbe)
		GUICtrlSetData($colour_hex, "0x" & Hex($Farbe, 6))
		GUICtrlSetData($colour_red, _ColorGetRed($Farbe))
		GUICtrlSetData($colour_green, _ColorGetGreen($Farbe))
		GUICtrlSetData($colour_blue, _ColorGetBlue($Farbe))
	EndIf
EndFunc   ;==>_colourpicker_pick_colour

Func _colourpicker_insert_hex_in_code()
	If $Offenes_Projekt = "" Then Return
	If _GUICtrlTab_GetItemCount($htab) > 0 Then
		Sci_InsertText($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)], Sci_GetCurrentPos($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)]), GUICtrlRead($colour_hex))
	EndIf
EndFunc   ;==>_colourpicker_insert_hex_in_code

Func _Toggle_colourpicker()
	If _Pruefe_auf_Type3_Plugin($Plugin_Platzhalter_Farbtoolbox) <> -1 then return ;Platzhalter für Plugin
	$state = WinGetState($colour_picker, "")
	If BitAND($state, 2) Then
		GUISetState(@SW_HIDE, $colour_picker)
	Else
		GUISetState(@SW_SHOW, $colour_picker)
	EndIf
EndFunc   ;==>_Toggle_colourpicker

; #FUNCTION# ;===============================================================================
;
; Name...........: _Aktualisiere_Splittercontrols
; Description ...: Wird verwendet um die Position der Controls und die Splitter zu aktualisieren
; Syntax.........: _Aktualisiere_Splittercontrols()
; Parameters ....: Keine
; Return values .: Keine
; Author ........: ISI360
; Modified.......:
; Remarks .......: Wird zb. auch in der Funktion _move_Splitter() aufgerufen
;                  Alle Controls die im Splittersystem verwendet werden sollen MÜSSEN hier aufgeführt sein!
; Related .......:
; Link ..........; http://www.isnetwork.at
; Example .......; No
;
; ;==========================================================================================

Func _Aktualisiere_Splittercontrols()

	;Prüfe ob Programlog aktiviert ist und aktiveiere/deaktiviere es
	If $hideprogramlog = "true" Then
		$position_Abgrenzung_vor_statusbar = ControlGetPos($Studiofenster, "", $Abgrenzung_vor_statusbar)
		GUICtrlSetState($Programm_log, $GUI_HIDE)
		GUICtrlSetState($HSplitter_2, $GUI_HIDE)
		GUICtrlSetPos($HSplitter_2, $position_Abgrenzung_vor_statusbar[0], $position_Abgrenzung_vor_statusbar[1])
	EndIf

	If $hidedebug = "false" And $IS_HIDDEN_UNTEN = 0 Then

		GUICtrlSetState($HSplitter_1, $GUI_SHOW)
		GUICtrlSetState($Debug_log, $GUI_SHOW)

		If $Zeige_Buttons_neben_Debug_Fenster = "true" Then
			GUICtrlSetState($Debug_Log_Undo_Button, $GUI_SHOW)
			GUICtrlSetState($Debug_Log_Redo_Button, $GUI_SHOW)
			GUICtrlSetState($Debug_Log_Zwischenablage_Button, $GUI_SHOW)
		Else
			GUICtrlSetState($Debug_Log_Undo_Button, $GUI_HIDE)
			GUICtrlSetState($Debug_Log_Redo_Button, $GUI_HIDE)
			GUICtrlSetState($Debug_Log_Zwischenablage_Button, $GUI_HIDE)
		EndIf
	Else
		$position_Abgrenzung_vor_statusbar = ControlGetPos($Studiofenster, "", $Abgrenzung_vor_statusbar)
		GUICtrlSetState($HSplitter_1, $GUI_HIDE)
		GUICtrlSetState($Debug_log, $GUI_HIDE)
		GUICtrlSetState($Debug_Log_Undo_Button, $GUI_HIDE)
		GUICtrlSetState($Debug_Log_Redo_Button, $GUI_HIDE)
		GUICtrlSetState($Debug_Log_Zwischenablage_Button, $GUI_HIDE)
		GUICtrlSetPos($HSplitter_1, $position_Abgrenzung_vor_statusbar[0], $position_Abgrenzung_vor_statusbar[1])
	EndIf

	;Hole windowclientsize
	$windowsize = WinGetClientSize($Studiofenster)
	GUICtrlSetPos($Abgrenzung_vor_statusbar, -10, $windowsize[1] - 25, 9999, 2)
	;Weise zuerst (!!) die Controls den Splittern zu...
	If $Toggle_Leftside = 0 Then _Add_control_to_Splitter($Studiofenster, $Projecttree_title, -1, $VSplitter_1, $Abgrenzung_nach_toolbar, $hTreeview)
	If $Toggle_Leftside = 0 Then _Add_control_to_Splitter($Studiofenster, $hTreeview, -1, $VSplitter_1, $Projecttree_title, $HSplitter_2)
	If $Toggle_Leftside = 0 Then _Add_control_to_Splitter($Studiofenster, $Programm_log, -1, $VSplitter_1, $HSplitter_2, $Abgrenzung_vor_statusbar)
	_Add_control_to_Splitter($Studiofenster, $htab, $VSplitter_1, $VSplitter_2, $Abgrenzung_nach_toolbar, $HSplitter_1)
	_Add_control_to_Splitter($Studiofenster, $Debug_Log_Undo_Button, $VSplitter_1, 25, $HSplitter_1, 25)
	If $Zeige_Buttons_neben_Debug_Fenster = "true" Then
		_Add_control_to_Splitter($Studiofenster, $Debug_log, $Debug_Log_Undo_Button, $VSplitter_2, $HSplitter_1, $Abgrenzung_vor_statusbar)
	Else
		_Add_control_to_Splitter($Studiofenster, $Debug_log, $VSplitter_1, $VSplitter_2, $HSplitter_1, $Abgrenzung_vor_statusbar)
	EndIf
	_Add_control_to_Splitter($Studiofenster, $Debug_Log_Redo_Button, $VSplitter_1, 25, $Debug_Log_Undo_Button, 25)
	_Add_control_to_Splitter($Studiofenster, $Debug_Log_Zwischenablage_Button, $VSplitter_1, 25, $Debug_Log_Redo_Button, 25)


	If $Toggle_rightside = 0 Then _Add_control_to_Splitter($Studiofenster, $Scripttree_title, $VSplitter_2, -1, $Abgrenzung_nach_toolbar, $hTreeview2_searchinput)
	If $Toggle_rightside = 0 Then GUICtrlSetPos($Skriptbaum_Einstellungen_Button, $windowsize[0] - 25, 0, 0, 0)
	If $Toggle_rightside = 0 Then GUICtrlSetPos($Skriptbaum_Aktualisieren_Button, $windowsize[0] - 50, 0, 0, 0)


	If $Toggle_rightside = 0 Then _Add_control_to_Splitter($Studiofenster, $hTreeview2_searchinput, $VSplitter_2, $Skriptbaum_Aktualisieren_Button, $Scripttree_title, $hTreeview2)
	If $Toggle_rightside = 0 Then _Add_control_to_Splitter($Studiofenster, $Skriptbaum_Aktualisieren_Button, $hTreeview2_searchinput, $Skriptbaum_Einstellungen_Button, $Scripttree_title, $hTreeview2)
	If $Toggle_rightside = 0 Then _Add_control_to_Splitter($Studiofenster, $Skriptbaum_Einstellungen_Button, $Skriptbaum_Aktualisieren_Button, -1, $Scripttree_title, $hTreeview2)

	If $Toggle_rightside = 0 Then _Add_control_to_Splitter($Studiofenster, $hTreeview2, $VSplitter_2, -1, $hTreeview2_searchinput, $Abgrenzung_vor_statusbar)
	;...und lasse danach die Splitter selbst Teil des Systems sein (Wichtig!)
	If $Toggle_Leftside = 0 Then _Add_control_to_Splitter($Studiofenster, $HSplitter_2, -1, $VSplitter_1, $hTreeview, $Programm_log)
	If $Toggle_Leftside = 0 Then _Add_control_to_Splitter($Studiofenster, $VSplitter_1, $Projecttree_title, $htab, $Abgrenzung_nach_toolbar, $Abgrenzung_vor_statusbar)
	_Add_control_to_Splitter($Studiofenster, $HSplitter_1, $VSplitter_1, $VSplitter_2, $htab, $Debug_log)
	If $Toggle_rightside = 0 Then _Add_control_to_Splitter($Studiofenster, $VSplitter_2, $htab, $Scripttree_title, $Abgrenzung_nach_toolbar, $Abgrenzung_vor_statusbar)

	;Das Plugin bzw. den Skripteditor an die Fenstergröße anpassen
	If _GUICtrlTab_GetCurFocus($htab) = -1 Then Return
	If Not $Offenes_Projekt = "" Then
		$tabsize = ControlGetPos($Studiofenster, "", $htab)
		$WinSize = WinGetPos($Studiofenster)
		If _GUICtrlTab_GetItemCount($htab) > 0 Then
			If $Plugin_Handle[_GUICtrlTab_GetCurFocus($htab)] = -1 Then
				$i = $tabsize[1] + 24
				$u = $tabsize[0] + 4
			Else
				If $Fulscreen_Mode = 1 Then
					$i = $WinSize[1] + 2 + $tabsize[1] + 42
					$u = $WinSize[0] + 2 + $tabsize[0] + 2
				Else
					$i = $WinSize[1] + 2 + $tabsize[1] + 72 ;68
					$u = $WinSize[0] + 2 + $tabsize[0] + 10 ;4
				EndIf
			EndIf

			WinMove($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)], "", $u, $i, $tabsize[2] - 9, $tabsize[3] - 24 - 4)
			$plugsize = WinGetPos($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)])
			If IsArray($plugsize) Then WinMove($Plugin_Handle[_GUICtrlTab_GetCurFocus($htab)], "", 0, 0, $plugsize[2], $plugsize[3])
;~ 		sleep(100)
;~ 		_plugin_send_msg($Plugin_Handle[_GUICtrlTab_GetCurFocus($hTab)], "resize") ;sende resize Befehl an Plugin
		EndIf
	EndIf

EndFunc   ;==>_Aktualisiere_Splittercontrols

; #FUNCTION# ;===============================================================================
;
; Name...........: _Add_control_to_Splitter
; Description ...: Fügt ein beliebiges Control in ein Splittersystem ein. Dabei müssen jeweils die Handles der Splitter angegeben werden
; Syntax.........: _Add_control_to_Splitter($control, $splitter_left, $splitter_right, $splitter_top, $splitter_down)
; Parameters ....: $hgui				- Handle zum GUI Fenster in dem sich die Controls und Splitter befinden
;                  $control				- Handle zum Control welches in das Splittersystem eingefügt werden soll
;                  $splitter_left		- Handle zum nächstgelegenen linken Splitter (Bei -1 wird der linke GUI-Rand verwendet)
;                  $splitter_right		- Handle zum nächstgelegenen rechten Splitter (Bei -1 wird der rechte GUI-Rand verwendet)
;                  $splitter_top		- Handle zum nächstgelegenen Splitter über dem Control (Bei -1 wird der obere GUI-Rand verwendet)
;                  $splitter_down		- Handle zum nächstgelegenen Splitter unter dem Control (Bei -1 wird der untere GUI-Rand verwendet)
; Return values .: 1 - Erfolg
;                  0 - Control konnte nicht in das Splittersystem integriert werden
; Author ........: ISI360
; Modified.......:
; Remarks .......: Kann auch zum Aktualisieren der Positionen eines Controls genutzt werden (zb. durch _move_Splitter())
; Related .......:
; Link ..........: http://www.isnetwork.at
; Example .......: No
;
; ;==========================================================================================

Func _Add_control_to_Splitter($hgui = "", $control = "", $splitter_left = -1, $splitter_right = -1, $splitter_top = -1, $splitter_down = -1)
	If $hgui = "" Then Return 0 ;error
	If $control = "" Then Return 0 ;error

	;Definiere verwendete Variablen
	Local $position_splitter_links
	Local $position_splitter_rechts
	Local $position_splitter_unten
	Local $position_splitter_oben
	Local $x
	Local $y
	Local $breite
	Local $hoehe

	;Hole Positionen von den angegebenen Splittern und der GUI
	;splitter/guirand links
	If $splitter_left <> -1 Then
		$position_splitter_links = ControlGetPos($hgui, "", $splitter_left)
	Else
		$position_splitter_links = WinGetClientSize($hgui, "")
	EndIf

	;splitter/guirand rechts
	If $splitter_right <> -1 Then
		$position_splitter_rechts = ControlGetPos($hgui, "", $splitter_right)
	Else
		$position_splitter_rechts = WinGetClientSize($hgui, "")
	EndIf

	;splitter/guirand oben
	If $splitter_top <> -1 Then
		$position_splitter_oben = ControlGetPos($hgui, "", $splitter_top)
	Else
		$position_splitter_oben = WinGetClientSize($hgui, "")
	EndIf

	;splitter/guirand unten
	If $splitter_down <> -1 Then
		$position_splitter_unten = ControlGetPos($hgui, "", $splitter_down)
	Else
		$position_splitter_unten = WinGetClientSize($hgui, "")
	EndIf

	;Berechene Positionen
	;x
	If IsArray($position_splitter_links) Then
		If $splitter_left <> -1 Then
			$x = $position_splitter_links[0] + $position_splitter_links[2] + $Splitter_Rand
		Else
			$x = $Splitter_Rand
		EndIf
	EndIf

	;y
	If IsArray($position_splitter_oben) Then
		If $splitter_top <> -1 Then
			$y = $position_splitter_oben[1] + $position_splitter_oben[3] + $Splitter_Rand
		Else
			$y = $Splitter_Rand
		EndIf
	EndIf

	;breite
	If IsArray($position_splitter_rechts) Then
		$breite = ($position_splitter_rechts[0] - $x) - $Splitter_Rand
	Else
		If $splitter_right <> -1 Then $breite = $splitter_right
	EndIf

	;höhe
	If IsArray($position_splitter_unten) Then
		$hoehe = ($position_splitter_unten[1] - $y) - $Splitter_Rand
	Else
		If $splitter_down <> -1 Then $hoehe = $splitter_down
	EndIf

	;Setze neue Positionen für das Control
	If GUICtrlSetPos($control, $x, $y, $breite, $hoehe) = 0 Then
		WinMove($control, "", $x, $y, $breite, $hoehe)
	EndIf

	;Fertig ;)
	Return 1
EndFunc   ;==>_Add_control_to_Splitter

; #FUNCTION# ;===============================================================================
;
; Name...........: _move_Splitter
; Description ...: Verschiebt durch gedrückthalten der linken Maustaste einen Splitter
; Syntax.........: _move_Splitter()
; Parameters ....: Keine
; Return values .: 1 - Erfolg
;                  0 - Fehler
; Author ........: ISI360
; Modified.......:
; Remarks .......: Muss durch eine GUICtrlSetOnEvent funktion aufgerufen werden
;                  Erkennt automatisch ob es sich bei dem Splitter um einen Horizontalen oder Vertikalen Splitter handelt
;                  Erkennt automatisch die Controls (dank dllcall) die den Splitter betreffen und achtet auf die Minimalgröße ($Splitter_Minimale_Groesse)
; Related .......:
; Link ..........: http://www.isnetwork.at
; Example .......: No
;
; ;==========================================================================================

Func _move_Splitter()
	If @GUI_CtrlId = "" Then Return 0
	If @GUI_WinHandle = "" Then Return 0
	_Write_ISN_Debug_Console("Moving a GUI splitter...", 1, 0)
	;Definiere verwendete Variablen
	Local $position_splitter
	Local $Position_Maus1
	Local $Position_Maus2
	Local $x_Differenz
	Local $y_Differenz
	Local $x
	Local $y
	Local $breite
	Local $hoehe
	Local $handle_element_oben
	Local $position_element_oben
	Local $handle_element_unten
	Local $position_element_unten
	Local $handle_element_rechts
	Local $position_element_rechts
	Local $handle_element_links
	Local $position_element_links

	$position_fenster = WinGetPos(@GUI_WinHandle) ;aktuelle Position des Fensters
	$position_fenster_clientsize = WinGetClientSize(@GUI_WinHandle) ;Clientsize des aktuellen fensters
	$position_splitter = ControlGetPos(@GUI_WinHandle, "", @GUI_CtrlId) ;aktuelle Position des Splitters
	$Position_Maus1 = MouseGetPos() ;hole mausposition
	$x_Differenz = $Position_Maus1[0] - $position_splitter[0] ;x differenz vom control zur mausposition
	$y_Differenz = $Position_Maus1[1] - $position_splitter[1] ;y differenz vom control zur mausposition

	While _IsPressed('01', $dll)
		$Position_Maus1 = MouseGetPos() ;hole mausposition
		Sleep(10) ;warte ganz kurz...
		$Position_Maus2 = MouseGetPos() ;hole 2. mausposition
		If($Position_Maus1[0] <> $Position_Maus2[0]) Or($Position_Maus1[1] <> $Position_Maus2[1]) Then ;falls sich mauszeiger bewegt hat...

			If $position_splitter[3] > $position_splitter[2] Then ;prüfe ob es sich um einen horizontalen oder vertikalen splitter handelt
				$x = $Position_Maus1[0] - $x_Differenz
				$y = $position_splitter[1]
				If $x < $Splitter_Rand Then $x = $Splitter_Rand ;falls splitter aus der GUI wandert
				If $x > $position_fenster_clientsize[0] Then $x = $position_fenster_clientsize[0] - $Splitter_Rand ;falls splitter aus der GUI wandert

				;Prüfe welches Control sich links und rechts neben dem Splitter befindet und prüfe desen größe...
				$position_splitter = ControlGetPos(@GUI_WinHandle, "", @GUI_CtrlId) ;aktuelle Position des Splitters
				$handle_element_links = DllCall("user32.dll", "hwnd", "WindowFromPoint", "int", ($position_fenster[0] + $position_splitter[0]) - ($Splitter_Rand + 50), "int", $position_fenster[1] + $position_splitter[1] + $Splitter_Rand + 50) ;suche control nach x und y koordinaten
				$position_element_links = ControlGetPos(@GUI_WinHandle, "", $handle_element_links[0]) ;aktuelle Position des linken Elements des Splitters
				$handle_element_rechts = DllCall("user32.dll", "hwnd", "WindowFromPoint", "int", ($position_fenster[0] + $position_splitter[0]) - ($Splitter_Rand - 50), "int", $position_fenster[1] + $position_splitter[1] + $Splitter_Rand + 50) ;suche control nach x und y koordinaten
				$position_element_rechts = ControlGetPos(@GUI_WinHandle, "", $handle_element_rechts[0]) ;aktuelle Position des rechteb Elements des Splitters
				If IsArray($position_element_links) Then
					If $x - ($position_element_links[0]) < $Splitter_Minimale_Groesse Then $x = $position_splitter[0]
				EndIf
				If IsArray($position_element_rechts) Then
					If($position_element_rechts[0] + $position_element_rechts[2]) - $x < $Splitter_Minimale_Groesse Then $x = $position_splitter[0]
				EndIf

				GUICtrlSetPos(@GUI_CtrlId, $x, $y, $Splitter_Breite) ;setze Splitterposition für vertikalen Splitter
			Else
				$x = $position_splitter[0]
				$y = $Position_Maus1[1] - $y_Differenz
				If $y < $Splitter_Rand Then $y = $Splitter_Rand ;falls splitter aus der GUI wandert
				If $y > $position_fenster_clientsize[1] Then $y = $position_fenster_clientsize[1] - $Splitter_Rand ;falls splitter aus der GUI wandert

				;Prüfe welches Control sich ober und unterhalb dem Splitter befindet und prüfe desen größe...
				$position_splitter = ControlGetPos(@GUI_WinHandle, "", @GUI_CtrlId) ;aktuelle Position des Splitters
				$handle_element_oben = DllCall("user32.dll", "hwnd", "WindowFromPoint", "int", $position_fenster[0] + $position_splitter[0] + ($position_splitter[2] / 2), "int", ($position_fenster[1] + ($position_fenster[3] - $position_fenster_clientsize[1]) + $position_splitter[1]) - 50) ;suche control nach x und y koordinaten
				$position_element_oben = ControlGetPos(@GUI_WinHandle, "", $handle_element_oben[0]) ;aktuelle Position des oberen Elements des Splitters
				$handle_element_unten = DllCall("user32.dll", "hwnd", "WindowFromPoint", "int", $position_fenster[0] + $position_splitter[0] + ($position_splitter[2] / 2), "int", ($position_fenster[1] + ($position_fenster[3] - $position_fenster_clientsize[1]) + $position_splitter[1]) + 50) ;suche control nach x und y koordinaten
				$position_element_unten = ControlGetPos(@GUI_WinHandle, "", $handle_element_unten[0]) ;aktuelle Position des unteren Elements des Splitters
				If IsArray($position_element_oben) Then
					If $y - $position_element_oben[1] < $Splitter_Minimale_Groesse Then $y = $position_splitter[1]
				EndIf
				If IsArray($position_element_unten) Then
					If($position_element_unten[1] + $position_element_unten[3]) - $y < $Splitter_Minimale_Groesse Then $y = $position_splitter[1]
				EndIf

				GUICtrlSetPos(@GUI_CtrlId, $x, $y, $position_splitter[2], $Splitter_Breite) ;setze Splitterposition für horizontalen Splitter
			EndIf
			_Aktualisiere_Splittercontrols() ;aktualisiere die Controls und andere Splitter beim bewegen des Splitters
		EndIf
	WEnd

	_Aktualisiere_Splittercontrols() ;Finale aktualisierung
	_Redraw_Window() ;Speichern der aktellen Werte der Splitter
	_Write_ISN_Debug_Console("done", 1, 1, 1, 1)
	Return 1 ;Fertig
EndFunc   ;==>_move_Splitter

Func _Colour_Calltipp_Set_State($state)
	If $state = "show" Then
		$aktuelle_pos_SCE_Window = WinGetPos($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)])
		$aktuelle_pos = Sci_GetCurrentPos($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)])
		$x = SendMessage($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)], $SCI_POINTXFROMPOSITION, 0, $aktuelle_pos) + $aktuelle_pos_SCE_Window[0]
		$y = SendMessage($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)], $SCI_POINTYFROMPOSITION, 0, $aktuelle_pos) + $aktuelle_pos_SCE_Window[1] + 50
		WinMove($mini_farb_picker_GUI, "", $x, $y) ;bewege den colour picker an die cursor stelle
		GUISetState(@SW_SHOWNOACTIVATE, $mini_farb_picker_GUI)
	Else
		GUISetState(@SW_HIDE, $mini_farb_picker_GUI)
	EndIf
EndFunc   ;==>_Colour_Calltipp_Set_State

Func _Sci_show_last_Calltipp()
	;Zeige Calltipp wieder an (falls intelisense aktiv ist)
	If $disableintelisense = "false" Then
		SendMessageString($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)], $SCI_CALLTIPSHOW, $SCIE_letzte_pos, $SCIE_letzter_calltipp)

		;by isi360
		$linee = Sci_GetLine($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)], Sci_GetLineFromPos($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)], Sci_GetCurrentPos($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)])))
		StringReplace($linee, ",", "")
		$SCI_hlStart = StringInStr($SCI_sCallTip, ",", 0, @extended)

		Local $iTemp = StringInStr(StringTrimLeft($SCI_sCallTip, $SCI_hlStart + 1), ",") + $SCI_hlStart
		If StringInStr(StringTrimLeft($SCI_sCallTip, $SCI_hlStart + 1), ")") + $SCI_hlStart < $iTemp Or $iTemp - $SCI_hlStart = 0 Then
			$SCI_hlEnd = StringInStr(StringTrimLeft($SCI_sCallTip, $SCI_hlStart + 1), ")") + $SCI_hlStart
		Else
			$SCI_hlEnd = $iTemp
		EndIf
		SendMessage($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)], $SCI_CALLTIPSETHLT, $SCI_hlStart, $SCI_hlEnd)
	EndIf

EndFunc   ;==>_Sci_show_last_Calltipp

Func _Mini_Farbpicker_waehle_farbe()
	Sci_InsertText($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)], Sci_GetCurrentPos($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)]), "0x" & Hex(GUICtrlGetBkColor(@GUI_CtrlId), 6))
	_Colour_Calltipp_Set_State("hide")
	_WinAPI_SetFocus($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)])
	Sci_SetCurrentPos($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)], Sci_GetCurrentPos($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)]) + 8)
	_Sci_show_last_Calltipp()
EndFunc   ;==>_Mini_Farbpicker_waehle_farbe

Func _Mini_Farbpicker_waehle_eigene_farbe()
	$Farbe = _ColorChooserDialog(0xFFFFFF, $Studiofenster)
	If $Farbe > -1 Then
		Sci_InsertText($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)], Sci_GetCurrentPos($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)]), "0x" & Hex($Farbe, 6))
		Sci_SetCurrentPos($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)], Sci_GetCurrentPos($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)]) + 8)
		_WinAPI_SetFocus($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)])
		_Sci_show_last_Calltipp()
	EndIf
EndFunc   ;==>_Mini_Farbpicker_waehle_eigene_farbe

Func _ist_windows_vista_oder_hoeher()
	Switch @OSVersion
		Case "WIN_2000", "WIN_2003", "WIN_XP", "WIN_XPe"
			Return 0
		Case "WIN_2008R2", "WIN_7", "WIN_2008", "WIN_2008R2", "WIN_VISTA", "WIN_8", "WIN_81", "WIN_2012", "WIN_2012R2"
			Return 1
	EndSwitch
	Return 0
EndFunc   ;==>_ist_windows_vista_oder_hoeher

Func _CreateBitmapFromIcon($iBackground, $sIcon, $iIndex, $iWidth, $iHeight)
	Local $hDC = _WinAPI_GetDC(0)
	Local $hBackDC = _WinAPI_CreateCompatibleDC($hDC)
	$iBackground = BitAND(BitShift($iBackground, -16) + BitAND($iBackground, 0xFF00) + BitShift($iBackground, 16), 0xFFFFFF)
	Local $hBitmap = _WinAPI_CreateSolidBitmap(0, $iBackground, $iWidth, $iHeight)
	Local $hBackSv = _WinAPI_SelectObject($hBackDC, $hBitmap)
	Local $hIcon = _WinAPI_ShellExtractIcon($sIcon, $iIndex, $iWidth, $iHeight)
	If Not @error Then
		_WinAPI_DrawIconEx($hBackDC, 0, 0, $hIcon, 0, 0, 0, 0, 0x0003)
		_WinAPI_DestroyIcon($hIcon)
	EndIf
	_WinAPI_SelectObject($hBackDC, $hBackSv)
	_WinAPI_ReleaseDC(0, $hDC)
	_WinAPI_DeleteDC($hBackDC)
	Return $hBitmap
EndFunc   ;==>_CreateBitmapFromIcon

; Diese Funktion u¨berschreibt das Standart Kontextmenu¨ mit unserm Dummy Menu¨ (Quelle US Autoit Forum)

Func Show_KontextMenu($hWnd, $nContextID)
	Local $hMenu = GUICtrlGetHandle($nContextID)
	$arPos = MouseGetPos()
	Local $x = $arPos[0]
	Local $y = $arPos[1]
;~ 	If $Y > 740 Then $Y = 730
	DllCall("user32.dll", "int", "TrackPopupMenuEx", "hwnd", $hMenu, "int", 0, "int", $x, "int", $y, "hwnd", $hWnd, "ptr", 0)

EndFunc   ;==>Show_KontextMenu

; #FUNCTION# ;===============================================================================
;
; Name...........: _Pruefe_Hotkey
; Description ...: Prüft ob eine oder mehrere Tasten gedrückt sind oder nicht
; Syntax.........: _Pruefe_Hotkey($keycode)
; Parameters ....: $keycode			- Welche Tasten sollen geprüft werden (Für mehrere Tsten zb: 11+58+22)
; Return values .: true				- Taste/Tasten ist/sind gedrückt
;                  False			- Taste/Tasten ist/sind nicht gedrückt
; Author ........: ISI360
; Modified.......:
; Remarks .......: Eine kleine erweiterte _ispressed-Funktion die es erlaubt via Keycode (zb: 11+58+22) mehrere Tastenkombinationen (bis zu 4 Tasten) abzufragen
;                  Wird benötigt da ab ISN AutoIt Studio 0.9 BETA der User selbst die Hotkeys definieren kann
;                  Werden mehr als 4 Tasten angegeben wird automatisch "false" zurückgegeben
; Related .......:
; Link ..........: http://www.isnetwork.at
; Example .......: No
;
; ;==========================================================================================

Func _Pruefe_Hotkey($keyCode = "")
	If $keyCode = "" Then Return False
	$array = StringSplit($keyCode, "+", 2)
	If Not IsArray($array) Then Return False

	;Alt Gr/STRG Bugfix
	If Not StringInStr($keyCode, "11") And _IsPressed("11") Then Return False
	If Not StringInStr($keyCode, "12") And _IsPressed("12") Then Return False

	;Shift Bugfix
	If Not StringInStr($keyCode, "10") And _IsPressed("10") Then Return False

	;Eine Taste
	If UBound($array) - 1 = 0 Then
		If _IsPressed($array[0]) Then
			$Letzter_Hotkey = $keyCode
			Return True
		Else
			Return False
		EndIf
	EndIf

	;Zwei Tasten
	If UBound($array) - 1 = 1 Then
		If _IsPressed($array[0]) And _IsPressed($array[1]) Then
			$Letzter_Hotkey = $keyCode
			Return True
		Else
			Return False
		EndIf
	EndIf

	;Drei Tasten
	If UBound($array) - 1 = 2 Then
		If _IsPressed($array[0]) And _IsPressed($array[1]) And _IsPressed($array[2]) Then
			$Letzter_Hotkey = $keyCode
			Return True
		Else
			Return False
		EndIf
	EndIf

	;Vier Tasten
	If UBound($array) - 1 = 3 Then
		If _IsPressed($array[0]) And _IsPressed($array[1]) And _IsPressed($array[2]) And _IsPressed($array[3]) Then
			$Letzter_Hotkey = $keyCode
			Return True
		Else
			Return False
		EndIf
	EndIf

	;Alles darüber -> return false
	Return False
EndFunc   ;==>_Pruefe_Hotkey

Func _istPluginfensteraktiv()
	If $Offenes_Projekt = "" Then Return False
	If _GUICtrlTab_GetItemCount($htab) > 0 Then
		If $Plugin_Handle[_GUICtrlTab_GetCurFocus($htab)] = -1 Then Return False
		If WinGetProcess(WinGetHandle("[ACTIVE]")) = WinGetProcess($Plugin_Handle[_GUICtrlTab_GetCurFocus($htab)]) Then Return True
	EndIf
	Return False
EndFunc   ;==>_istPluginfensteraktiv


; #FUNCTION# ;===============================================================================
;
; Name...........: _Hotkey_Management
; Description ...: Zentrale Steuerungsfunktion aller Hotkeys im ISN
; Syntax.........: _Hotkey_Management()
; Parameters ....: none
; Return values .: none
; Author ........: ISI360
; Modified.......:
; Remarks .......: Wird durch eine AdlibRegister Funktion aufgerufen
; Related .......:
; Link ..........: http://www.isnetwork.at
; Example .......: No
;
; ;==========================================================================================

Func _Hotkey_Management()
	$Letzter_Hotkey = ""
	If WinActive($fFind1) Then
		If _GUICtrlTab_GetItemCount($htab) > 0 Then
			If _Pruefe_Hotkey($Hotkey_Keycode_Weitersuchen) Then _Hotkey_vorwaerts_suchen() ;Weitersuchen
			If _Pruefe_Hotkey($Hotkey_Keycode_Rueckwaerts_Weitersuchen) Then _Hotkey_Rueckwaerts_suchen() ;Rückwärts Weitersuchen

			;Falls der hotkey immer noch gedrückt ist...warte bis er losgelassen wurde...
			While _Pruefe_Hotkey($Letzter_Hotkey)
				Sleep(100)
			WEnd
		EndIf
	EndIf

	If WinActive($Studiofenster) Or _istPluginfensteraktiv() Then
		If _Pruefe_Hotkey($Hotkey_Keycode_vollbild) Then _Toggle_Fulscreen() ;Vollbildmodus F11

		If _Pruefe_Hotkey($Hotkey_Keycode_Testprojekt) Then ;Teste Projekt
			If $Studiomodus = 1 Then
				_Testscript($Offenes_Projekt & "\" & IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "mainfile", "#ERROR#"))
			Else
				If _GUICtrlTab_GetItemCount($htab) = 0 Then Return
				If StringTrimLeft($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], StringInStr($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], ".", 0, -1)) = $Autoitextension Then _Testscript($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)])
			EndIf
		EndIf

		If _Pruefe_Hotkey($Hotkey_Keycode_Testprojekt_ohne_Parameter) Then ;Teste Projekt, Ohne Parameter
			If $Studiomodus = 1 Then
				_Testscript($Offenes_Projekt & "\" & IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "mainfile", "#ERROR#"), 1)
			Else
				If _GUICtrlTab_GetItemCount($htab) = 0 Then Return
				If StringTrimLeft($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], StringInStr($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], ".", 0, -1)) = $Autoitextension Then _Testscript($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], 1)
			EndIf
		EndIf

		If _Pruefe_Hotkey($Hotkey_Keycode_Neue_Datei) Then _Show_new_Filgui_au3() ;Neue Datei
		If _Pruefe_Hotkey($Hotkey_Keycode_Oeffnen) Then _Try_to_open_external_file() ;Öffnen
		If _Pruefe_Hotkey($Hotkey_Keycode_Farbtoolbox) Then _Toggle_colourpicker() ;Farbtoolbox
		If _Pruefe_Hotkey($Hotkey_Keycode_Fensterinfotool) Then _open_windowinfotool() ;Fenster Info Tool
		If _Pruefe_Hotkey($Hotkey_Keycode_Bitrechner) Then _Toggle_Bitoperation_rechner() ;Bitrechner
		If _Pruefe_Hotkey($Hotkey_Keycode_Automatisches_Backup) Then _Backup_Files() ;Automatisches backup
		If _Pruefe_Hotkey($Hotkey_Keycode_Aenderungsprotokolle) Then _Zeige_changelogmanager() ;Änderungsprotokolle

		If _Pruefe_Hotkey($Hotkey_Keycode_Makroslot1) Then
			If _run_rule($Section_Trigger12) = 0 Then MsgBox(262144 + 64, _Get_langstr(61), _Get_langstr(618), 0, $Studiofenster) ;Makroslot 1
		EndIf

		If _Pruefe_Hotkey($Hotkey_Keycode_Makroslot2) Then
			If _run_rule($Section_Trigger13) = 0 Then MsgBox(262144 + 64, _Get_langstr(61), _Get_langstr(618), 0, $Studiofenster) ;Makroslot 2
		EndIf

		If _Pruefe_Hotkey($Hotkey_Keycode_Makroslot3) Then
			If _run_rule($Section_Trigger14) = 0 Then MsgBox(262144 + 64, _Get_langstr(61), _Get_langstr(618), 0, $Studiofenster) ;Makroslot 3
		EndIf

		If _Pruefe_Hotkey($Hotkey_Keycode_Makroslot4) Then
			If _run_rule($Section_Trigger15) = 0 Then MsgBox(262144 + 64, _Get_langstr(61), _Get_langstr(618), 0, $Studiofenster) ;Makroslot 4
		EndIf

		If _Pruefe_Hotkey($Hotkey_Keycode_Makroslot5) Then
			If _run_rule($Section_Trigger16) = 0 Then MsgBox(262144 + 64, _Get_langstr(61), _Get_langstr(618), 0, $Studiofenster) ;Makroslot 5
		EndIf

		If _Pruefe_Hotkey($Hotkey_Keycode_Makroslot6) Then
			If _run_rule($Section_Trigger17) = 0 Then MsgBox(262144 + 64, _Get_langstr(61), _Get_langstr(618), 0, $Studiofenster) ;Makroslot 6
		EndIf

		If _Pruefe_Hotkey($Hotkey_Keycode_Makroslot7) Then
			If _run_rule($Section_Trigger18) = 0 Then MsgBox(262144 + 64, _Get_langstr(61), _Get_langstr(618), 0, $Studiofenster) ;Makroslot 7
		EndIf

		If $Offenes_Projekt <> "" Then ;nur wenn projekt geöffnet
			If _IsPressed("2E", $user32) And $Projektbaum_ist_bereit = 1 Then ;entf im Projektbaum
				$Class = ControlGetFocus($Studiofenster)
				$ControlHandle = ControlGetHandle($Studiofenster, "", "[CLASSNN:" & $Class & "]")
				If $ControlHandle = $hWndTreeview Then _Show_Delete_file_GUI()
			EndIf

			If _IsPressed("0D", $user32) And $Projektbaum_ist_bereit = 1 Then ;enter im Projektbaum
				$Class = ControlGetFocus($Studiofenster)
				$ControlHandle = ControlGetHandle($Studiofenster, "", "[CLASSNN:" & $Class & "]")
				If $ControlHandle = $hWndTreeview Then
					If _GUICtrlTreeView_GetSelection($hTreeview) = 0 Then Return
					If StringInStr(_GUICtrlTreeView_GetTree($hTreeview, _GUICtrlTreeView_GetSelection($hTreeview)), ".", 1, -1) = 0 Then Return
					Try_to_opten_file(StringReplace($Offenes_Projekt & "\" & StringTrimLeft(_GUICtrlTreeView_GetTree($hTreeview, _GUICtrlTreeView_GetSelection($hTreeview)), StringInStr(_GUICtrlTreeView_GetTree($hTreeview, _GUICtrlTreeView_GetSelection($hTreeview)), "|")), $Delim1, $Delim))
				EndIf
			EndIf
		EndIf

		If _Pruefe_Hotkey($Hotkey_Keycode_compile) Then _Start_Compiling() ;Kompilieren
		If _Pruefe_Hotkey($Hotkey_Keycode_compile_Settings) Then _Show_Compile() ;Kompilieren Einstellungen

		;Falls mehr als 0 Tabs aktiv sind prüfe folgende Keys
		If _GUICtrlTab_GetItemCount($htab) > 0 Then
			If _IsPressed("04", $dll) Then _MIDDLEdown() ;Mittlere Maustaste (kann nicht geändert werden)
			If _Pruefe_Hotkey($Hotkey_Keycode_Speichern) Then _try_to_save_file(_GUICtrlTab_GetCurFocus($htab)) ;Speichern
			If _Pruefe_Hotkey($Hotkey_Keycode_Speichern_Alle_Tabs) Then _Save_All_tabs() ;Speichern (alle Tabs)
			If _Pruefe_Hotkey($Hotkey_Keycode_Speichern_unter) Then _Speichern_unter() ;Speichern unter...
			If _Pruefe_Hotkey($Hotkey_Keycode_AutoIt3WrapperGUI) Then _Zeige_AutoIt3Wrapper_GUI() ;AutoIt3WrapperGUI
;~ 			If _Pruefe_Hotkey($Hotkey_Keycode_organizeincludes) Then _Zeige_Organize_Includes() ;organizeincludes
			If _Pruefe_Hotkey($Hotkey_Keycode_Tidy) Then _Tidy($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)]) ;TidySource
			If _Pruefe_Hotkey($Hotkey_Keycode_tab_schliessen) Then try_to_Close_Tab(_GUICtrlTab_GetCurFocus($htab)) ;Close Tab
			If _Pruefe_Hotkey($Hotkey_Keycode_vorheriger_tab) Then _Select_previous_tab() ;previous tab
			If _Pruefe_Hotkey($Hotkey_Keycode_naechster_tab) Then _Select_next_tab() ;next tab
			If $allowcommentout = "true" Then HotKeySet("{NUMPADSUB}", "_comment_out") ;comment_out (minus am nummernfeld)
			If _Pruefe_Hotkey($Hotkey_Keycode_befehlhilfe) Then _open_helpfile_keyword() ;Befehlhilfe
			If _Pruefe_Hotkey($Hotkey_Keycode_auskommentieren) Then _comment_out() ;comment_out
			If _Pruefe_Hotkey($Hotkey_Keycode_springezuzeile) Then GoToLine() ;gotoline
			If _Pruefe_Hotkey($Hotkey_Keycode_Datei_umbenennen) Then _Rename_File() ;Datei/ordner umbenennen
			If _Pruefe_Hotkey($Hotkey_Keycode_msgBoxGenerator) Then _Toggle_msgboxcreator() ;Msgbox generator
			If _Pruefe_Hotkey($Hotkey_Keycode_zeile_duplizieren) Then _Zeile_Duplizieren() ;Zeile Duplizieren
			If _Pruefe_Hotkey($Hotkey_Keycode_debugtomsgbox) Then _Debug_to_msgbox() ;Debug zu MsgBox
			If _Pruefe_Hotkey($Hotkey_Keycode_debugtoconsole) Then _Debug_to_console() ;Debug zu console
			If _Pruefe_Hotkey($Hotkey_Keycode_erstelleUDFheader) Then _Erstelle_UDF_Header() ;Erstelle UDF Header
			If _Pruefe_Hotkey($Hotkey_Keycode_Parameter_Editor) Then _Parameter_Editor_Contextmenue() ;Parameter Editor
			If _Pruefe_Hotkey($Hotkey_Keycode_zeigefehler) Then _Find_Error_F4() ; finderror
			If _Pruefe_Hotkey($Hotkey_Keycode_syntaxcheck) Then _Syntaxcheck(FileGetShortName($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)])) ;syntaxcheck
			If _Pruefe_Hotkey($Hotkey_Keycode_Oeffne_Include) Then _Try_to_open_include_hotkey() ;Öffne markiertes Include
			If _Pruefe_Hotkey($Hotkey_Keycode_Weitersuchen) Then _Hotkey_vorwaerts_suchen() ;Weitersuchen
			If _Pruefe_Hotkey($Hotkey_Keycode_Rueckwaerts_Weitersuchen) Then _Hotkey_Rueckwaerts_suchen() ;Rückwärts Weitersuchen
			If _Pruefe_Hotkey($Hotkey_Keycode_unteres_fenster_umschalten) Then _Toggle_Fenster_unten() ;Unteres Fenster umschalten
			If _Pruefe_Hotkey($Hotkey_Keycode_linkes_fenster_umschalten) Then _Toggle_hide_leftbar() ;Linkes Fenster umschalten
			If _Pruefe_Hotkey($Hotkey_Keycode_rechtes_fenster_umschalten) Then _Toggle_hide_rightbar() ;Rechtes Fenster umschalten
			If _Pruefe_Hotkey($Hotkey_Keycode_testeskript) And StringTrimLeft($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], StringInStr($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], ".", 0, -1)) = $Autoitextension Then _Testscript($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)]) ;Skript Testen

			If _Pruefe_Hotkey($Hotkey_Keycode_Suche) Then ;Suche
				$len = GetSelLength($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)])
				If $len > 0 Then
					$text = DllStructCreate("char[" & $len + 1 & "]")
					DllCall($user32, "int", "SendMessageA", "hwnd", $SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)], "int", $SCI_GETSELTEXT, "int", 0, "ptr", DllStructGetPtr($text))
					$findWhat = DllStructGetData($text, 1)
					$text = 0
				EndIf
				GUICtrlSetData($Search_Combo1, $findWhat, $findWhat)
				FindNext($findWhat, False, $showWarnings, $flags, True)
			EndIf

		EndIf

		;Falls der hotkey immer noch gedrückt ist...warte bis er losgelassen wurde...
		While _Pruefe_Hotkey($Letzter_Hotkey)
			Sleep(100)
		WEnd

	Else
		If $allowcommentout = "true" Then HotKeySet("{NUMPADSUB}")
	EndIf

EndFunc   ;==>_Hotkey_Management

; #FUNCTION# ;===============================================================================
;
; Name...........: _Keycode_zu_Text
; Description ...: Wandelt einen Keycode (zb. 11+58) in einen für den User leicht lesbaren Text um -> zb. "STRG+X"
; Syntax.........: _Keycode_zu_Text($keycode)
; Parameters ....: $keycode			- Welcher Keycode soll umgewandelt werden
; Return values .: none
; Author ........: ISI360
; Modified.......:
; Remarks .......: Wird in den Programmeinstellungen benötigt
; Related .......:
; Link ..........: http://www.isnetwork.at
; Example .......: No
;
; ;==========================================================================================

Func _Keycode_zu_Text($keyCode = "")
	If $keyCode = "" Then Return ""
	$array = StringSplit($keyCode, "+", 2)
	For $index = 0 To UBound($array) - 1
		$text = Chr(Dec($array[$index]))
		If $array[$index] = "11" Then $text = "Ctrl"
		If $array[$index] = "12" Then $text = "Alt"
		If $array[$index] = "10" Then $text = "Shift"
		If $array[$index] = "DC" Then $text = _Get_langstr(1021) ;"Zirkumflex"
		If $array[$index] = "09" Then $text = "TAB"
		If $array[$index] = "70" Then $text = "F1"
		If $array[$index] = "71" Then $text = "F2"
		If $array[$index] = "72" Then $text = "F3"
		If $array[$index] = "73" Then $text = "F4"
		If $array[$index] = "74" Then $text = "F5"
		If $array[$index] = "75" Then $text = "F6"
		If $array[$index] = "76" Then $text = "F7"
		If $array[$index] = "77" Then $text = "F8"
		If $array[$index] = "78" Then $text = "F9"
		If $array[$index] = "79" Then $text = "F10"
		If $array[$index] = "7A" Then $text = "F11"
		If $array[$index] = "7B" Then $text = "F12"
		If $array[$index] = "6D" Then $text = _Get_langstr(1022) ;"Minus am Nummernblock"
		If $array[$index] = "6F" Then $text = _Get_langstr(1023) ;"Dividieren am Nummernblock"
		If $array[$index] = "6A" Then $text = _Get_langstr(1024) ;"Multiplizieren am Nummernblock"
		If $array[$index] = "6B" Then $text = _Get_langstr(1025) ;"Plus am Nummernblock"
		If $array[$index] = "60" Then $text = "0 " & _Get_langstr(1026)
		If $array[$index] = "61" Then $text = "1 " & _Get_langstr(1026)
		If $array[$index] = "62" Then $text = "2 " & _Get_langstr(1026)
		If $array[$index] = "63" Then $text = "3 " & _Get_langstr(1026)
		If $array[$index] = "64" Then $text = "4 " & _Get_langstr(1026)
		If $array[$index] = "65" Then $text = "5 " & _Get_langstr(1026)
		If $array[$index] = "66" Then $text = "6 " & _Get_langstr(1026)
		If $array[$index] = "67" Then $text = "7 " & _Get_langstr(1026)
		If $array[$index] = "68" Then $text = "8 " & _Get_langstr(1026)
		If $array[$index] = "69" Then $text = "9 " & _Get_langstr(1026)
		If $array[$index] = "21" Then $text = _Get_langstr(1027) ;"Seite nach oben"
		If $array[$index] = "22" Then $text = _Get_langstr(1028) ;"Seite nach unten"
		If $array[$index] = "26" Then $text = _Get_langstr(1017) ;Pfeil oben
		If $array[$index] = "28" Then $text = _Get_langstr(1018) ;Pfeil unten
		If $array[$index] = "25" Then $text = _Get_langstr(1019) ;Pfeil links
		If $array[$index] = "27" Then $text = _Get_langstr(1020) ;Pfeil rechts
		$array[$index] = $text
	Next
	Return _ArrayToString($array, "+")
EndFunc   ;==>_Keycode_zu_Text

;-----------------------------------------------------------------------------------------------------------------
;    Function       _getKeyKombi()
;
;    Description    Gibt die gedrückte Taste(nkombination) zurück, die gedrückt wurde.
;                    Die Funktion wartet solang, bis mind. eine Taste gedrückt und losgelassen wurde.
;
;    Return         Array mit n Elementen
;                    Array[0]    Anzahl der gedrückten Tasten
;                    Array[1..n]    gedrückte Taste(n) als Hex-Wert (Hex-Werte in Hilfe von _IsPressed() aufgelistet)
;
;     Version        0.1
;
;    Author         zemkedesign (http://www.autoit.de/index.php?page=User&userID=200384)
;-----------------------------------------------------------------------------------------------------------------

Func _getKeyKombi()

	Local $i_keys_pressed_count = 0
	Local $s_keys_pressed = ""
	Local $as_return[1]

	Sleep(300)
	While 1
		;Anzahl und Tasten ermitteln
		$as_array = _getKey($s_keys_pressed)
;~         ConsoleWrite($s_keys_pressed & @CR)
		;neue Taste gedrückt
		If $as_array[0] > $i_keys_pressed_count Then $s_keys_pressed &= $as_array[1]
		;aktuell weniger gedrückt, als im Durchlauf zuvor
		If $as_array[0] < $i_keys_pressed_count Then ExitLoop
		;aktuell gedrückte Tasten zwischenspeichern
		$i_keys_pressed_count = $as_array[0]
	WEnd

	;Rückgabe
	$as_return[0] = $i_keys_pressed_count ;Anzahl gedrückter Tasten
	For $i = 1 To StringLen($s_keys_pressed) Step 2
		_ArrayAdd($as_return, StringMid($s_keys_pressed, $i, 2)) ;Tasten teilen
	Next
	_ArrayDelete($as_return, 0)
	Return $as_return

EndFunc   ;==>_getKeyKombi

;-----------------------------------------------------------------------------------------------------------------
;    Function       _getKey([$s_ignored_keys = ""])
;
;    Description    Gibt die gedrückte Taste zurück, die momentan gedrückt ist.
;                    Ignoriert werden Tasten, die im Parameter gespeichert sind.
;
;    Parameter      optional    $s_ignored_keys: zu ignorierende Tasten
;
;    Return         Erfolg        Array mit zwei Elementen
;                                Array[0]    Anzahl der gedrückten Tasten (ignorierte Tasten werden mitgezählt)
;                                Array[1]    gedrückte Taste (ignorierte Tasten werden nicht zurückgegeben)
;                    Fehler        keine Taste wurde gedrückt
;                                Array[0]    0
;                                Array[1]    Leerstring
;
;     Version        0.1
;
;    Author         zemkedesign (http://www.autoit.de/index.php?page=User&userID=200384)
;-----------------------------------------------------------------------------------------------------------------

Func _getKey($s_ignored_keys = "")

	Local $as_return[2]
	Local $as_keys[75]
	$as_return[0] = 0
	$as_return[1] = ""

	#region keys
	$as_keys[0] = "10" ;SHIFT
	$as_keys[1] = "11" ;STRG
	$as_keys[2] = "12" ;ALT
	$as_keys[3] = "30" ;0
	$as_keys[4] = "31" ;1
	$as_keys[5] = "32" ;2
	$as_keys[6] = "33" ;3
	$as_keys[7] = "34" ;4
	$as_keys[8] = "35" ;5
	$as_keys[9] = "36" ;6
	$as_keys[10] = "37" ;7
	$as_keys[11] = "38" ;8
	$as_keys[12] = "39" ;9
	$as_keys[13] = "41" ;A
	$as_keys[14] = "42" ;B
	$as_keys[15] = "43" ;C
	$as_keys[16] = "44" ;D
	$as_keys[17] = "45" ;E
	$as_keys[18] = "46" ;F
	$as_keys[19] = "47" ;G
	$as_keys[20] = "48" ;H
	$as_keys[21] = "49" ;I
	$as_keys[22] = "4A" ;J
	$as_keys[23] = "4B" ;K
	$as_keys[24] = "4C" ;L
	$as_keys[25] = "4D" ;M
	$as_keys[26] = "4E" ;N
	$as_keys[27] = "4F" ;O
	$as_keys[28] = "50" ;P
	$as_keys[29] = "51" ;Q
	$as_keys[30] = "52" ;R
	$as_keys[31] = "53" ;S
	$as_keys[32] = "54" ;T
	$as_keys[33] = "55" ;U
	$as_keys[34] = "56" ;V
	$as_keys[35] = "57" ;W
	$as_keys[36] = "58" ;X
	$as_keys[37] = "59" ;Y
	$as_keys[38] = "5A" ;Z
	$as_keys[39] = "09" ;Tab
	$as_keys[40] = "70" ;F1
	$as_keys[41] = "71" ;F2
	$as_keys[42] = "72" ;F3
	$as_keys[43] = "73" ;F4
	$as_keys[44] = "74" ;F5
	$as_keys[45] = "75" ;F6
	$as_keys[46] = "76" ;F7
	$as_keys[47] = "77" ;F8
	$as_keys[48] = "78" ;F9
	$as_keys[49] = "79" ;F9
	$as_keys[50] = "7A" ;F9
	$as_keys[51] = "7B" ;F9
	$as_keys[52] = "6D" ;Minus am Nummernblock
	$as_keys[53] = "6F" ;Dividieren am Nummernblock
	$as_keys[54] = "6A" ;Multiplizieren am Nummernblock
	$as_keys[55] = "6B" ;Plus am Nummernblock
	$as_keys[56] = "60" ;0 am Nummernblock
	$as_keys[57] = "61" ;1 am Nummernblock
	$as_keys[58] = "62" ;2 am Nummernblock
	$as_keys[59] = "63" ;3 am Nummernblock
	$as_keys[60] = "64" ;4 am Nummernblock
	$as_keys[61] = "65" ;5 am Nummernblock
	$as_keys[62] = "66" ;6 am Nummernblock
	$as_keys[63] = "67" ;7 am Nummernblock
	$as_keys[64] = "68" ;8 am Nummernblock
	$as_keys[65] = "69" ;9 am Nummernblock
	$as_keys[66] = "21" ;Page up
	$as_keys[67] = "22" ;Page down
	$as_keys[68] = "DC" ;zirkumflex
	$as_keys[69] = "26" ;Pfeil oben
	$as_keys[70] = "28" ;Pfeil unten
	$as_keys[71] = "25" ;Pfeil links
	$as_keys[72] = "27" ;Pfeil rechts
	#endregion keys

	For $i = 0 To UBound($as_keys) - 1
		If _IsPressed($as_keys[$i]) Then
			;Anzahl gedrückter Tasten erhöhen
			$as_return[0] += 1
			;Taste wurde noch nicht schon einmal gedrückt
			If StringInStr($s_ignored_keys, $as_keys[$i]) = 0 Then $as_return[1] &= $as_keys[$i]
		EndIf
	Next

	Return $as_return

EndFunc   ;==>_getKey

; #FUNCTION# ;===============================================================================
;
; Name...........: _Erstelle_kopie_von_markierter_datei
; Description ...: Erstellt eine Kopie des Markierten Elementes im Projektbaum
; Syntax.........: _Erstelle_kopie_von_markierter_datei()
; Parameters ....: none
; Return values .: none
; Author ........: ISI360
; Modified.......:
; Remarks .......: Kann zb. im Kontextmenü des Projektbaumes aufgerufen werden
; Related .......:
; Link ..........: http://www.isnetwork.at
; Example .......: No
;
; ;==========================================================================================

Func _Erstelle_kopie_von_markierter_datei()
	If _GUICtrlTreeView_GetSelection($hTreeview) = 0 Then Return
	If _WinAPI_PathIsRoot(_GUICtrlTVExplorer_GetSelected($hWndTreeview)) Then Return
	If _GUICtrlTVExplorer_GetSelected($hWndTreeview) = -1 Then Return
	If _GUICtrlTVExplorer_GetSelected($hWndTreeview) = $Offenes_Projekt Then Return
	$pfad = _GUICtrlTVExplorer_GetSelected($hWndTreeview)
	Dim $szDrive, $szDir, $szFName, $szExt
	$TestPath = _PathSplit($pfad, $szDrive, $szDir, $szFName, $szExt)
	$Projektbaum_ist_bereit = 0
	$answer = InputBox(_Get_langstr(371), _Get_langstr(693), $szFName & " (" & _Get_langstr(373) & ")" & $szExt, "", Default, Default, Default, Default, 0, $Studiofenster)
	If @error Then
		Return
		$Projektbaum_ist_bereit = 1
	EndIf
	If _IsDir($pfad) Then
		DirCopy($pfad, $szDrive & $szDir & $answer)
	Else
		FileCopy($pfad, $szDrive & $szDir & $answer)
	EndIf
	_GUICtrlTreeView_BeginUpdate($hTreeview)
	_Speichere_TVExplorer($hTreeview) ;Speichere geöffnete Elemente
	_GUICtrlTVExplorer_AttachFolder($hTreeview)
	_GUICtrlTVExplorer_Expand($hTreeview, $szDrive & $szDir & $answer, 1)
	_Lade_TVExplorer($hTreeview) ;Geöffnete Elemente wiederherstellen
	_GUICtrlTreeView_EndUpdate($hTreeview)
	Sleep(250)
	$Projektbaum_ist_bereit = 1
EndFunc   ;==>_Erstelle_kopie_von_markierter_datei

; #FUNCTION# ;===============================================================================
;
; Name...........: _Pruefe_nach_Onlineupdates_AUTO
; Description ...: Prüft im Hintergrund nach Updates und zeigt ggf. eine Meldung an
; Syntax.........: _Pruefe_nach_Onlineupdates_AUTO($hWnd, $Msg, $iIDTimer, $dwTime)
; Return values .: none
; Author ........: ISI360
; Modified.......:
; Remarks .......: Wird durch einen Timer aufgerufen
; Related .......:
; Link ..........: http://www.isnetwork.at
; Example .......: No
;
; ;==========================================================================================

Func _Pruefe_nach_Onlineupdates_AUTO($hWnd, $msg, $iIDTimer, $dwTime)
	If $enable_autoupdate = "false" Then Return ;Autoupdate deaktiviert
	;Nur falls das Zeitlimit in Tagen bereits überschritten ist
	$Differenz = _DateDiff('D', IniRead($Configfile, "config", "autoupdate_lastdate", "2012/01/01"), _NowCalcDate())
	_Timer_KillTimer($Studiofenster, $Auto_Update_Timer_Handle) ;Stoppe Timer damit Meldung nicht nocheinmal erscheint
	If $Differenz > $autoupdate_searchtimer Then
		$result = _Beginne_Suche_nach_updates()
		If $result = 1 Then
			;Update verfügbar
			GUISetState(@SW_SHOW, $Update_gefunden_GUI)
		EndIf
		If $result = 2 Then
			;Kein Update verfügbar
			_Write_in_Config("autoupdate_lastdate", _NowCalcDate()) ;Suche wieder in X Tagen...
		EndIf
	EndIf
EndFunc   ;==>_Pruefe_nach_Onlineupdates_AUTO

; #FUNCTION# ;===============================================================================
;
; Name...........: _Auto_Update_jetzt_nicht
; Description ...: Blendet das Fenster "Update verfügbar" aus. Der Timer wird dabei NICHT wiedergestartet
; Syntax.........: _Auto_Update_jetzt_nicht()
; Parameters ....: none
; Return values .: none
; Author ........: ISI360
; Modified.......:
; Remarks .......: -> Nächste Prüfung ist beim erneuten Programmstart
; Related .......:
; Link ..........: http://www.isnetwork.at
; Example .......: No
;
; ;==========================================================================================

Func _Auto_Update_jetzt_nicht()
	GUISetState(@SW_HIDE, $Update_gefunden_GUI)
	;Der Timer wird hier bewusst nicht mehr gestartet da die Meldung sonst wieder erscheinen würde -> Nächste erinnerung ist beim erneuten Programmstart
EndFunc   ;==>_Auto_Update_jetzt_nicht

; #FUNCTION# ;===============================================================================
;
; Name...........: _Auto_Update_in_X_Tagen_erinnern
; Description ...: Blendet das Fenster "Update verfügbar" aus und setzte den letzten erfolgreichen Suchvorgang auf das aktuelle Datum.
; Syntax.........: _Auto_Update_in_X_Tagen_erinnern()
; Parameters ....: none
; Return values .: none
; Author ........: ISI360
; Modified.......:
; Remarks .......: Der Timer wird dabei NICHT wiedergestartet
; Related .......:
; Link ..........: http://www.isnetwork.at
; Example .......: No
;
; ;==========================================================================================

Func _Auto_Update_in_X_Tagen_erinnern()
	GUISetState(@SW_HIDE, $Update_gefunden_GUI)
	;Der Timer wird hier bewusst nicht mehr gestartet da die Meldung sonst wieder erscheinen würde -> Nächste erinnerung ist in X Tagen
	_Write_in_Config("autoupdate_lastdate", _NowCalcDate()) ;Suche wieder in X Tagen...
EndFunc   ;==>_Auto_Update_in_X_Tagen_erinnern

; #FUNCTION# ;===============================================================================
;
; Name...........: _Fuege_Datei_zu_Zuletzt_Verwendete_Dateien
; Description ...: Fügt eine Datei in das Menü Datei -> Zuletzt verwendete Dateien hinzu.
; Syntax.........: _Fuege_Datei_zu_Zuletzt_Verwendete_Dateien($Pfad)
; Parameters ....: $Pfad			- Pfad zur Datei
; Return values .: Array mit allen Pfaden und Dateien
; Author ........: ISI360
; Modified.......:
; Remarks .......: List wird in der project.isn im key "lastusedfiles" gespeichert
; Related .......:
; Link ..........: http://www.isnetwork.at
; Example .......: No
;
; ;==========================================================================================

Func _Fuege_Datei_zu_Zuletzt_Verwendete_Dateien($pfad = "")

	If $pfad = "" Then Return
	If Not IsArray($Zuletzt_Verwendete_Dateien_Temp_Array) Then Return
	$pfad = FileGetLongName($pfad)

	;Falls sich Datei im Projektverzeichnis befindet -> Relative Pfade (auch im normalen Modus)
	If StringInStr($pfad, $Offenes_Projekt) Then
		$pfad = StringReplace($pfad, $Offenes_Projekt, "")
	EndIf

	;prüfe ob Eintrag schon in der Liste ist
	If _ArraySearch($Zuletzt_Verwendete_Dateien_Temp_Array, $pfad) = -1 Then
		;noch nicht in der Liste

		;Rücke alle Einträge 1 nach unten
		For $y = UBound($Zuletzt_Verwendete_Dateien_Temp_Array) - 1 To 1 Step -1
			$Zuletzt_Verwendete_Dateien_Temp_Array[$y] = $Zuletzt_Verwendete_Dateien_Temp_Array[$y - 1]
		Next
		;Füge neues Element ein
		$Zuletzt_Verwendete_Dateien_Temp_Array[0] = $pfad

	Else
		;bereits in der Liste

		;Lösche das Element aus der Liste...
		_ArrayDelete($Zuletzt_Verwendete_Dateien_Temp_Array, _ArraySearch($Zuletzt_Verwendete_Dateien_Temp_Array, $pfad))
		_ArrayAdd($Zuletzt_Verwendete_Dateien_Temp_Array, "")
		;..und füge es neu ein:
		$Zuletzt_Verwendete_Dateien_Temp_Array = _Fuege_Datei_zu_Zuletzt_Verwendete_Dateien($pfad)

	EndIf

	;Schreibe das Array in die project.isn und aktualisiere die Einträge im Datei Menü
	$lastusedfiles_String = ""
	For $x = 0 To UBound($Zuletzt_Verwendete_Dateien_Temp_Array) - 1
		$lastusedfiles_String = $lastusedfiles_String & $Zuletzt_Verwendete_Dateien_Temp_Array[$x] & "|"
		If $x = 0 Then _GUICtrlODMenuItemSetText($FileMenu_zuletzt_verwendete_Dateien_Slot1, _Zuletzt_Verwendete_Dateien_pruefe_ob_leer($FileMenu_zuletzt_verwendete_Dateien_Slot1, $Zuletzt_Verwendete_Dateien_Temp_Array[$x]))
		If $x = 1 Then _GUICtrlODMenuItemSetText($FileMenu_zuletzt_verwendete_Dateien_Slot2, _Zuletzt_Verwendete_Dateien_pruefe_ob_leer($FileMenu_zuletzt_verwendete_Dateien_Slot2, $Zuletzt_Verwendete_Dateien_Temp_Array[$x]))
		If $x = 2 Then _GUICtrlODMenuItemSetText($FileMenu_zuletzt_verwendete_Dateien_Slot3, _Zuletzt_Verwendete_Dateien_pruefe_ob_leer($FileMenu_zuletzt_verwendete_Dateien_Slot3, $Zuletzt_Verwendete_Dateien_Temp_Array[$x]))
		If $x = 3 Then _GUICtrlODMenuItemSetText($FileMenu_zuletzt_verwendete_Dateien_Slot4, _Zuletzt_Verwendete_Dateien_pruefe_ob_leer($FileMenu_zuletzt_verwendete_Dateien_Slot4, $Zuletzt_Verwendete_Dateien_Temp_Array[$x]))
		If $x = 4 Then _GUICtrlODMenuItemSetText($FileMenu_zuletzt_verwendete_Dateien_Slot5, _Zuletzt_Verwendete_Dateien_pruefe_ob_leer($FileMenu_zuletzt_verwendete_Dateien_Slot5, $Zuletzt_Verwendete_Dateien_Temp_Array[$x]))
		If $x = 5 Then _GUICtrlODMenuItemSetText($FileMenu_zuletzt_verwendete_Dateien_Slot6, _Zuletzt_Verwendete_Dateien_pruefe_ob_leer($FileMenu_zuletzt_verwendete_Dateien_Slot6, $Zuletzt_Verwendete_Dateien_Temp_Array[$x]))
		If $x = 6 Then _GUICtrlODMenuItemSetText($FileMenu_zuletzt_verwendete_Dateien_Slot7, _Zuletzt_Verwendete_Dateien_pruefe_ob_leer($FileMenu_zuletzt_verwendete_Dateien_Slot7, $Zuletzt_Verwendete_Dateien_Temp_Array[$x]))
		If $x = 7 Then _GUICtrlODMenuItemSetText($FileMenu_zuletzt_verwendete_Dateien_Slot8, _Zuletzt_Verwendete_Dateien_pruefe_ob_leer($FileMenu_zuletzt_verwendete_Dateien_Slot8, $Zuletzt_Verwendete_Dateien_Temp_Array[$x]))
		If $x = 8 Then _GUICtrlODMenuItemSetText($FileMenu_zuletzt_verwendete_Dateien_Slot9, _Zuletzt_Verwendete_Dateien_pruefe_ob_leer($FileMenu_zuletzt_verwendete_Dateien_Slot9, $Zuletzt_Verwendete_Dateien_Temp_Array[$x]))
		If $x = 9 Then _GUICtrlODMenuItemSetText($FileMenu_zuletzt_verwendete_Dateien_Slot10, _Zuletzt_Verwendete_Dateien_pruefe_ob_leer($FileMenu_zuletzt_verwendete_Dateien_Slot10, $Zuletzt_Verwendete_Dateien_Temp_Array[$x]))

	Next

	If StringLen($lastusedfiles_String) > 1 Then $lastusedfiles_String = StringTrimRight($lastusedfiles_String, 1)
	IniWrite($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "lastusedfiles", $lastusedfiles_String)

	Return $Zuletzt_Verwendete_Dateien_Temp_Array
EndFunc   ;==>_Fuege_Datei_zu_Zuletzt_Verwendete_Dateien

; #FUNCTION# ;===============================================================================
;
; Name...........: _Lade_Zuletzt_Verwendete_Dateien_aus_projectISN
; Description ...: Lädt die Liste der Zuletzt Verwendete Dateien aus der project.isn des jewailigen Projektes (KEY: lastusedfiles)
; Syntax.........: _Lade_Zuletzt_Verwendete_Dateien_aus_projectISN()
; Parameters ....: None
; Return values .: None
; Author ........: ISI360
; Modified.......:
; Remarks .......: $Offenes_Projekt darf nicht leer sein!
; Related .......:
; Link ..........: http://www.isnetwork.at
; Example .......: No
;
; ;==========================================================================================

Func _Lade_Zuletzt_Verwendete_Dateien_aus_projectISN()
	If $Offenes_Projekt = "" Then Return
	$ini = IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "lastusedfiles", "||||||||||")
	If $ini = "" Then $ini = "||||||||||"
	$array = StringSplit($ini, "|", 2)

	If IsArray($array) Then
		If UBound($array) - 1 > 10 Then Return ;Error

		;Resete alle Slots
		$Zuletzt_Verwendete_Dateien_Temp_Array = $array
		_GUICtrlODMenuItemSetText($FileMenu_zuletzt_verwendete_Dateien_Slot1, _Get_langstr(722))
		_GUICtrlODMenuItemSetText($FileMenu_zuletzt_verwendete_Dateien_Slot2, _Get_langstr(722))
		_GUICtrlODMenuItemSetText($FileMenu_zuletzt_verwendete_Dateien_Slot3, _Get_langstr(722))
		_GUICtrlODMenuItemSetText($FileMenu_zuletzt_verwendete_Dateien_Slot4, _Get_langstr(722))
		_GUICtrlODMenuItemSetText($FileMenu_zuletzt_verwendete_Dateien_Slot5, _Get_langstr(722))
		_GUICtrlODMenuItemSetText($FileMenu_zuletzt_verwendete_Dateien_Slot6, _Get_langstr(722))
		_GUICtrlODMenuItemSetText($FileMenu_zuletzt_verwendete_Dateien_Slot7, _Get_langstr(722))
		_GUICtrlODMenuItemSetText($FileMenu_zuletzt_verwendete_Dateien_Slot8, _Get_langstr(722))
		_GUICtrlODMenuItemSetText($FileMenu_zuletzt_verwendete_Dateien_Slot9, _Get_langstr(722))
		_GUICtrlODMenuItemSetText($FileMenu_zuletzt_verwendete_Dateien_Slot10, _Get_langstr(722))

		GUICtrlSetState($FileMenu_zuletzt_verwendete_Dateien_Slot1, $GUI_DISABLE)
		GUICtrlSetState($FileMenu_zuletzt_verwendete_Dateien_Slot2, $GUI_DISABLE)
		GUICtrlSetState($FileMenu_zuletzt_verwendete_Dateien_Slot3, $GUI_DISABLE)
		GUICtrlSetState($FileMenu_zuletzt_verwendete_Dateien_Slot4, $GUI_DISABLE)
		GUICtrlSetState($FileMenu_zuletzt_verwendete_Dateien_Slot5, $GUI_DISABLE)
		GUICtrlSetState($FileMenu_zuletzt_verwendete_Dateien_Slot6, $GUI_DISABLE)
		GUICtrlSetState($FileMenu_zuletzt_verwendete_Dateien_Slot7, $GUI_DISABLE)
		GUICtrlSetState($FileMenu_zuletzt_verwendete_Dateien_Slot8, $GUI_DISABLE)
		GUICtrlSetState($FileMenu_zuletzt_verwendete_Dateien_Slot9, $GUI_DISABLE)
		GUICtrlSetState($FileMenu_zuletzt_verwendete_Dateien_Slot10, $GUI_DISABLE)

		;Setze Texte
		For $x = 0 To UBound($Zuletzt_Verwendete_Dateien_Temp_Array) - 1
			If $x = 0 Then _GUICtrlODMenuItemSetText($FileMenu_zuletzt_verwendete_Dateien_Slot1, _Zuletzt_Verwendete_Dateien_pruefe_ob_leer($FileMenu_zuletzt_verwendete_Dateien_Slot1, $Zuletzt_Verwendete_Dateien_Temp_Array[$x]))
			If $x = 1 Then _GUICtrlODMenuItemSetText($FileMenu_zuletzt_verwendete_Dateien_Slot2, _Zuletzt_Verwendete_Dateien_pruefe_ob_leer($FileMenu_zuletzt_verwendete_Dateien_Slot2, $Zuletzt_Verwendete_Dateien_Temp_Array[$x]))
			If $x = 2 Then _GUICtrlODMenuItemSetText($FileMenu_zuletzt_verwendete_Dateien_Slot3, _Zuletzt_Verwendete_Dateien_pruefe_ob_leer($FileMenu_zuletzt_verwendete_Dateien_Slot3, $Zuletzt_Verwendete_Dateien_Temp_Array[$x]))
			If $x = 3 Then _GUICtrlODMenuItemSetText($FileMenu_zuletzt_verwendete_Dateien_Slot4, _Zuletzt_Verwendete_Dateien_pruefe_ob_leer($FileMenu_zuletzt_verwendete_Dateien_Slot4, $Zuletzt_Verwendete_Dateien_Temp_Array[$x]))
			If $x = 4 Then _GUICtrlODMenuItemSetText($FileMenu_zuletzt_verwendete_Dateien_Slot5, _Zuletzt_Verwendete_Dateien_pruefe_ob_leer($FileMenu_zuletzt_verwendete_Dateien_Slot5, $Zuletzt_Verwendete_Dateien_Temp_Array[$x]))
			If $x = 5 Then _GUICtrlODMenuItemSetText($FileMenu_zuletzt_verwendete_Dateien_Slot6, _Zuletzt_Verwendete_Dateien_pruefe_ob_leer($FileMenu_zuletzt_verwendete_Dateien_Slot6, $Zuletzt_Verwendete_Dateien_Temp_Array[$x]))
			If $x = 6 Then _GUICtrlODMenuItemSetText($FileMenu_zuletzt_verwendete_Dateien_Slot7, _Zuletzt_Verwendete_Dateien_pruefe_ob_leer($FileMenu_zuletzt_verwendete_Dateien_Slot7, $Zuletzt_Verwendete_Dateien_Temp_Array[$x]))
			If $x = 7 Then _GUICtrlODMenuItemSetText($FileMenu_zuletzt_verwendete_Dateien_Slot8, _Zuletzt_Verwendete_Dateien_pruefe_ob_leer($FileMenu_zuletzt_verwendete_Dateien_Slot8, $Zuletzt_Verwendete_Dateien_Temp_Array[$x]))
			If $x = 8 Then _GUICtrlODMenuItemSetText($FileMenu_zuletzt_verwendete_Dateien_Slot9, _Zuletzt_Verwendete_Dateien_pruefe_ob_leer($FileMenu_zuletzt_verwendete_Dateien_Slot9, $Zuletzt_Verwendete_Dateien_Temp_Array[$x]))
			If $x = 9 Then _GUICtrlODMenuItemSetText($FileMenu_zuletzt_verwendete_Dateien_Slot10, _Zuletzt_Verwendete_Dateien_pruefe_ob_leer($FileMenu_zuletzt_verwendete_Dateien_Slot10, $Zuletzt_Verwendete_Dateien_Temp_Array[$x]))

		Next
	EndIf

EndFunc   ;==>_Lade_Zuletzt_Verwendete_Dateien_aus_projectISN

Func _kuerze_Dateinamen($String)
	If StringLen($String) > 45 Then
		$String = "..." & StringTrimLeft($String, StringLen($String) - 45)
	EndIf
	Return $String
EndFunc   ;==>_kuerze_Dateinamen

Func _Zuletzt_Verwendete_Dateien_pruefe_ob_leer($item, $text)
	If $text = "" Then
		GUICtrlSetState($item, $GUI_DISABLE)
		Return _Get_langstr(722)
	EndIf
	GUICtrlSetState($item, $GUI_ENABLE)
	Return _kuerze_Dateinamen($text)
EndFunc   ;==>_Zuletzt_Verwendete_Dateien_pruefe_ob_leer

; #FUNCTION# ;===============================================================================
;
; Name...........: _Oeffne_Zuletzt_Verwendete_Dateie
; Description ...: Lädt eine Datei aus der Liste der Zuletzt Verwendete Dateien in das ISN AutoIt Studio. (Erster Slot ist 0!!)
; Syntax.........: _Oeffne_Zuletzt_Verwendete_Dateie($SlotNr)
; Parameters ....: None
; Return values .: None
; Author ........: ISI360
; Modified.......:
; Remarks .......: Dabei wird auch überprüft ob die Datei überhaupt noch existiert
; Related .......:
; Link ..........: http://www.isnetwork.at
; Example .......: No
;
; ;==========================================================================================

Func _Oeffne_Zuletzt_Verwendete_Dateie($SlotNr = -1)
	If $SlotNr = -1 Then Return
	If $SlotNr > 9 Then Return
	If Not IsArray($Zuletzt_Verwendete_Dateien_Temp_Array) Then Return
	$file = $Zuletzt_Verwendete_Dateien_Temp_Array[Number($SlotNr)]
	If $file = "" Then Return
	If $file = _Get_langstr(722) Then Return
	Sleep(100)
	If FileExists($file) Then
		Try_to_opten_file($file)
	Else
		;Falls Fehler versuche noch mit relativen Pfaden
		If FileExists($Offenes_Projekt & $file) Then
			Try_to_opten_file($Offenes_Projekt & $file)
		Else
			;Falls das auch nicht fnktioniert -> Fehlermeldung
			MsgBox(262144 + 16, _Get_langstr(25), StringReplace(_Get_langstr(724), "%1", $file), 0, $Studiofenster)
		EndIf
	EndIf
EndFunc   ;==>_Oeffne_Zuletzt_Verwendete_Dateie

Func _Speichern_unter()
	If _GUICtrlTab_GetItemCount($htab) = 0 Then Return
	Dim $szDrive, $szDir, $szFName, $szExt
	If $Plugin_Handle[_GUICtrlTab_GetCurFocus($htab)] <> "-1" Then Return ;KEIN SPEICHERN UNTER FÜR PLUGINS!
	$Geoeffnete_Datei = $Datei_pfad[_GUICtrlTab_GetCurFocus($htab)]
	$TestPath = _PathSplit($Geoeffnete_Datei, $szDrive, $szDir, $szFName, $szExt)
	$line = FileSaveDialog(_Get_langstr(725), "::{20D04FE0-3AEA-1069-A2D8-08002B30309D}", "All (*.*)", 18, $szFName & $szExt, $Studiofenster)
	$TestPath = _PathSplit($line, $szDrive, $szDir, $szFName, $szExt)
	If $line = "" Then Return
	If @error > 0 Then Return
	FileChangeDir(@ScriptDir)
	FileCopy($Geoeffnete_Datei, $line, 9)
	$Datei_pfad[_GUICtrlTab_GetCurFocus($htab)] = $line
	_GUICtrlTab_SetItemText($htab, _GUICtrlTab_GetCurFocus($htab), $szFName & $szExt)
	_Redraw_Window($Studiofenster)
EndFunc   ;==>_Speichern_unter

Func _exportiere_Projekteigenschaften_als_csv()
	$line = FileSaveDialog(_Get_langstr(740), "::{20D04FE0-3AEA-1069-A2D8-08002B30309D}", "csv (*.csv)", 18, "export.csv", $Projekteinstellungen_GUI)
	If $line = "" Then Return
	If @error > 0 Then Return
	FileChangeDir(@ScriptDir)
	_GUICtrlListView_SaveCSV($Project_Properties_listview, $line)
	MsgBox(262144 + 64, _Get_langstr(61), _Get_langstr(164), 0, $Studiofenster)
EndFunc   ;==>_exportiere_Projekteigenschaften_als_csv

; #AutoIt3Wrapper_Au3Check_Parameters=-d -w 1 -w 2 -w 3 -w 4 -w 5 -w 6
; #FUNCTION# =========================================================================================================
; Name...........: _GUICtrlListView_SaveCSV()
; Description ...: Exports the details of a ListView to a .csv file.
; Syntax.........: _GUICtrlListView_SaveCSV($hListView, $sFile, [$sDelimiter = ",", $sQuote = '"']])
; Parameters ....: $hListView - Handle of the ListView.
;                  $sFile - FilePath, this should ideally use the filetype .csv e.g. @ScriptDir & "\Example.csv"
;                  $sDelimiter - [Optional] Delimiter to be used for the csv file. [Default = ,]
;                  $sQuote - [Optional] Style of quotes to be used for the csv file. [Default = "]
; Requirement(s).: v3.2.12.1 or higher
; Return values .: Success - Returns filepath.
;                  Failure - Returns filepath & sets @error = 1
; Author ........: guinness & ProgAndy for the csv idea.
; Example........; Yes
;=====================================================================================================================

Func _GUICtrlListView_SaveCSV($hListView, $sFile, $sDelimiter = ",", $sQuote = '"')
	Local $hFileOpen, $iError = 0, $sItem, $sString
	Local $iColumnCount = _GUICtrlListView_GetColumnCount($hListView)
	Local $iItemCount = _GUICtrlListView_GetItemCount($hListView)

	For $a = 0 To $iItemCount - 1
		For $B = 0 To $iColumnCount - 1
			$sItem = _GUICtrlListView_GetItemText($hListView, $a, $B)
			$sString &= $sQuote & StringReplace($sItem, $sQuote, $sQuote & $sQuote, 0, 1) & $sQuote
			If $B < $iColumnCount - 1 Then
				$sString &= $sDelimiter
			EndIf
		Next
		$sString &= @CRLF
	Next
	$hFileOpen = FileOpen($sFile, 2)
	FileWrite($hFileOpen, $sString)
	FileClose($hFileOpen)
	If @error Then
		$iError = 1
	EndIf
	Return SetError($iError, 0, $sFile)
EndFunc   ;==>_GUICtrlListView_SaveCSV

; #FUNCTION# ====================================================================================================================
; Name...........: _ArrayUnique
; Description ...: Returns the Unique Elements of a 1-dimensional array.
; Syntax.........: _ArrayUnique($aArray[, $iDimension = 1[, $iIdx = 0[, $iCase = 0[, $iFlags = 1]]]])
; Parameters ....: $aArray    - Input array (1D or 2D only)
;                 $iDimension  - [optional] The dimension of the array to process (only valid for 2D arrays)
;                 $iIdx     - [optional] Index at which to start scanning the input array
;                 $iCase       - [optional] Flag to indicate if string comparisons should be case sensitive
;                                | 0 - case insensitive
;                                | 1 - case sensitive
;                 $iFlags     - [optional] Set of flags, added together
;                                | 1 - Return the array count in element [0]
; Return values .: Success    - Returns a 1-dimensional array containing only the unique elements of the input array / dimension
;                 Failure     - Returns 0 and sets @error:
;                                | 1 - Input is not an array
;                                | 2 - Arrays greater than 2 dimensions are not supported
;                                | 3 - $iDimension is out of range
;                                | 4 - $iIdx is out of range
; Author ........: SmOke_N
; Modified.......: litlmike, Erik Pilsits
; Remarks .......:
; Related .......: _ArrayMax, _ArrayMin
; Link ..........:
; Example .......: Yes
; ===============================================================================================================================

Func __ArrayUnique(Const ByRef $aArray, $iDimension = 1, $iIdx = 0, $iCase = 0, $iFlags = 0)
	; Check to see if it is valid array
	If Not IsArray($aArray) Then Return SetError(1, 0, 0)
	Local $iDims = UBound($aArray, 0)
	If $iDims > 2 Then Return SetError(2, 0, 0)
	;
	; checks the given dimension is valid
	If($iDimension <= 0) Or(($iDims = 1) And($iDimension > 1)) Or(($iDims = 2) And($iDimension > UBound($aArray, 2))) Then Return SetError(3, 0, 0)
	; make $iDimension an array index, note this is ignored for 1D arrays
	$iDimension -= 1
	;
	; check $iIdx
	If($iIdx < 0) Or($iIdx >= UBound($aArray)) Then Return SetError(4, 0, 0)
	;
	; create dictionary
	Local $oD = ObjCreate("Scripting.Dictionary")
	; compare mode for strings
	; 0 = binary, which is case sensitive
	; 1 = text, which is case insensitive
	; this expression forces either 1 or 0
	$oD.CompareMode = Number(Not $iCase)
	;
	Local $vElem
	; walk the input array
	For $i = $iIdx To UBound($aArray) - 1
		If $iDims = 1 Then
			; 1D array
			$vElem = $aArray[$i]
		Else
			; 2D array
			$vElem = $aArray[$i][$iDimension]
		EndIf
		; add key to dictionary
		; NOTE: accessing the value (.Item property) of a key that doesn't exist creates the key :)
		; keys are guaranteed to be unique
		$oD.Item($vElem)
	Next
	;
	; return the array of unique keys
	If BitAND($iFlags, 1) = 1 Then
		Local $aTemp = $oD.Keys()
		_ArrayInsert($aTemp, 0, $oD.Count)
		Return $aTemp
	Else
		Return $oD.Keys()
	EndIf
EndFunc   ;==>__ArrayUnique

Func _Scanne_array_nach_Variablen(Const ByRef $avArray, $vValue, $iStart = 0, $iEnd = 0, $iCase = 0, $iCompare = 0, $iSubItem = 0)
	$iStart = _ArraySearch($avArray, $vValue, $iStart, $iEnd, $iCase, $iCompare, 1, $iSubItem)
	If @error Then Return SetError(@error, 0, -1)
	Local $Letzer_fortschritt = 0
	Local $String = _Get_langstr(747)
	Local $iIndex = 0, $avResult[UBound($avArray)]
	Do
		$globale_variablen_einlesen_fortschritt = Int(($iStart / (UBound($avArray) - 1)) * 100)
		If $globale_variablen_einlesen_fortschritt <> $Letzer_fortschritt Then _GUICtrlStatusBar_SetText_ISN($Status_bar, StringReplace($String, "%1", $globale_variablen_einlesen_fortschritt))
		$to_add = $avArray[$iStart]
		If StringLeft($to_add, 1) = "$" Then
			$to_add = StringReplace($to_add, "'", "")
			$to_add = StringReplace($to_add, '"', "")
			If $to_add <> "$" Then
				$avResult[$iIndex] = $to_add
				$iIndex += 1
			EndIf
		EndIf
		$iStart = _ArraySearch($avArray, $vValue, $iStart + 1, $iEnd, $iCase, $iCompare, 1, $iSubItem)
		$Letzer_fortschritt = $globale_variablen_einlesen_fortschritt
	Until @error

	ReDim $avResult[$iIndex]
	Return $avResult
EndFunc   ;==>_Scanne_array_nach_Variablen

; #FUNCTION# ;===============================================================================
; Name...........: _Fenstergroessen_zuruecksetzen
; Description ...: Setzt die Fenstergrößen des Projektbaumes usw. auf standard zurück
; Syntax.........: _Fenstergroessen_zuruecksetzen()
; Parameters ....: None
; Return values .: None
; Author ........: ISI360
; Modified.......:
; Remarks .......: Wird aus den Programmeinstellungen aufgerufen
; Related .......:
; Link ..........: http://www.isnetwork.at
; Example .......: No
; ;==========================================================================================

Func _Fenstergroessen_zuruecksetzen()
	IniDelete($configfile, "config", "debugguiX")
	IniDelete($configfile, "config", "debugguiY")
	IniDelete($configfile, "config", "VSplitter1X")
	IniDelete($configfile, "config", "VSplitter2X")
	IniDelete($configfile, "config", "HSplitter1Y")
	IniDelete($configfile, "config", "HSplitter2Y")
;~ 	if $Toggle_rightside = 0 AND $Offenes_Projekt <> "" then GUICtrlSetPos($VSplitter_2, _Config_Read("VSplitter2X", $size[2] - 268), 30, $Splitter_Breite, $size[3] - 80)

	$size1 = WinGetClientSize($Studiofenster, "")
	$size = WinGetPos($Studiofenster)

	If $Toggle_rightside = 0 And _GUICtrlTab_GetItemCount($htab) > 0 And $Offenes_Projekt <> "" Then
		$ext = StringTrimLeft($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], StringInStr($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], ".", 1, -1))
		If $ext = $Autoitextension Then GUICtrlSetPos($VSplitter_2, _Config_Read("VSplitter2X", $size[2] - 268), 30, $Splitter_Breite, $size[3] - 80)
	EndIf


	If $hidefunctionstree = "true" Then GUICtrlSetPos($VSplitter_2, $size[2] - 5, 25, 4, $size[3] - 80)
	If $Toggle_Leftside = 0 Then GUICtrlSetPos($VSplitter_1, _Config_Read("VSplitter1X", 268), 30, $Splitter_Breite, $size[3] - 80)
	GUICtrlSetPos($HSplitter_1, 268, _Config_Read("HSplitter1Y", ($size1[1] / 2) + 180), 200, $Splitter_Breite)
	If $hidedebug = "true" Then GUICtrlSetPos($HSplitter_1, 268, $size1[1] - 20, 200, 5)
	GUICtrlSetPos($HSplitter_2, 2, _Config_Read("HSplitter2Y", ($size1[1] / 2) + 170), 200, $Splitter_Breite)
	If $hideprogramlog = "true" Then
		GUICtrlSetPos($HSplitter_2, 2, $size1[1] - 45, 200, 5)
		GUICtrlSetState($HSplitter_2, $GUI_HIDE)
	EndIf
	;Aktualisiere die Splitter
	_Aktualisiere_Splittercontrols()
;~ 	msgbox(262144 + 64, _Get_langstr(61), _Get_langstr(750), 0, $StudioFenster) ;Nervt nur ^^
EndFunc   ;==>_Fenstergroessen_zuruecksetzen

; #FUNCTION# ;===============================================================================
; Name...........: _Zeige_AutoIt3Wrapper_GUI
; Description ...: Zeigt die AutoIt3Wrapper GUI in verbindung mit dem aktuellen Skript
; Syntax.........: _Zeige_AutoIt3Wrapper_GUI()
; Parameters ....: None
; Return values .: None
; Author ........: ISI360
; Modified.......:
; Remarks .......: Wird aus dem "Tools" Menü aufgerufen
; Related .......:
; Link ..........: http://www.isnetwork.at
; Example .......: No
; ;==========================================================================================

Func _Zeige_AutoIt3Wrapper_GUI()
	If _GUICtrlTab_GetItemCount($htab) = 0 Then Return
	If $Offenes_Projekt = "" Then Return
	If StringTrimLeft($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], StringInStr($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], ".", 0, -1)) <> $Autoitextension Then Return
     _try_to_save_file(_GUICtrlTab_GetCurFocus($htab))
	GUICtrlSetData($warte_auf_wrapper_GUI_text, _Get_langstr(752))
	GUISetState(@SW_SHOW, $warte_auf_wrapper_GUI)
	GUISetState(@SW_DISABLE, $Studiofenster)
	_Clear_Debuglog()
	$data = _RunReadStd(@ScriptDir & '\Data\AutoIt3Wrapper.exe /in "' & $Datei_pfad[_GUICtrlTab_GetCurFocus($htab)] & '" /showgui', 0, $Offenes_Projekt, @SW_SHOW, 1)
	LoadEditorFile($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)], $Datei_pfad[_GUICtrlTab_GetCurFocus($htab)])
	$FILE_CACHE[_GUICtrlTab_GetCurFocus($htab)] = Sci_GetLines($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)])
	_Check_Buttons(0)
	_Update_Treeview()
	GUISetState(@SW_ENABLE, $Studiofenster)
	GUISetState(@SW_HIDE, $warte_auf_wrapper_GUI)
EndFunc   ;==>_Zeige_AutoIt3Wrapper_GUI

; #FUNCTION# ;===============================================================================
; Name...........: _Zeige_Organize_Includes
; Description ...: Startet Organize_Includes in verbindung mit dem aktuellen Skript
; Syntax.........: _Zeige_Organize_Includes()
; Parameters ....: None
; Return values .: None
; Author ........: ISI360
; Modified.......:
; Remarks .......: Wird aus dem "Tools" Menü aufgerufen
; Related .......:
; Link ..........: http://www.isnetwork.at
; Example .......: No
; ;==========================================================================================

Func _Zeige_Organize_Includes()
	If _GUICtrlTab_GetItemCount($htab) = 0 Then Return
	If $Offenes_Projekt = "" Then Return
	If StringTrimLeft($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], StringInStr($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], ".", 0, -1)) <> $Autoitextension Then Return
	GUICtrlSetData($warte_auf_wrapper_GUI_text, _Get_langstr(795))
	GUISetState(@SW_SHOW, $warte_auf_wrapper_GUI)
	GUISetState(@SW_DISABLE, $Studiofenster)
	_Clear_Debuglog()
	$data = _RunReadStd(@ScriptDir & '\Data\organizeincludes\OI_1.0.0.50.exe "' & $Datei_pfad[_GUICtrlTab_GetCurFocus($htab)] & '"', 0, @ScriptDir & '\Data\organizeincludes\', @SW_SHOW, 1)
	LoadEditorFile($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)], $Datei_pfad[_GUICtrlTab_GetCurFocus($htab)])
	$FILE_CACHE[_GUICtrlTab_GetCurFocus($htab)] = Sci_GetLines($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)])
	_Check_Buttons(0)
	GUISetState(@SW_ENABLE, $Studiofenster)
	GUISetState(@SW_HIDE, $warte_auf_wrapper_GUI)
EndFunc   ;==>_Zeige_Organize_Includes

; #FUNCTION# ;===============================================================================
; Name...........: _Kompilieren_Editormodus
; Description ...: Kompiliert eine au3 Datei im Editormodus mit dem AutoIt3Wrapper
; Syntax.........: _Kompilieren_Editormodus()
; Parameters ....: None
; Return values .: None
; Author ........: ISI360
; Modified.......:
; Remarks .......: Wird im Editormodus verwendet
; Related .......:
; Link ..........: http://www.isnetwork.at
; Example .......: No
; ;==========================================================================================

Func _Kompilieren_Editormodus()
	If _GUICtrlTab_GetItemCount($htab) = 0 Then Return
	If $Plugin_Handle[_GUICtrlTab_GetCurFocus($htab)] <> -1 Then Return
	If $Offenes_Projekt = "" Then Return
	If StringTrimLeft($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], StringInStr($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], ".", 0, -1)) <> $Autoitextension Then Return
	GUISetState(@SW_SHOW, $warte_auf_wrapper_GUI)
	GUISetState(@SW_DISABLE, $Studiofenster)
	_Clear_Debuglog()
	$data = _RunReadStd(@ScriptDir & '\Data\AutoIt3Wrapper.exe /in "' & $Datei_pfad[_GUICtrlTab_GetCurFocus($htab)] & '"', 0, $Offenes_Projekt, @SW_SHOW, 1)
	_Update_Treeview()
	GUISetState(@SW_ENABLE, $Studiofenster)
	GUISetState(@SW_HIDE, $warte_auf_wrapper_GUI)
EndFunc   ;==>_Kompilieren_Editormodus

; #FUNCTION# ;===============================================================================
; Name...........: _Ersteinrichtungsassistenten_wiederherstellen
; Description ...: Entfernt den Pfad zur config.ini und lässt ISN so glauben er würde das erste mal gestartet
; Syntax.........: _Ersteinrichtungsassistenten_wiederherstellen()
; Parameters ....: None
; Return values .: None
; Author ........: ISI360
; Modified.......:
; Remarks .......: Kann aus den Programmeinstellungen -> Erweitert ausgeführt werden
; Related .......:
; Link ..........: http://www.isnetwork.at
; Example .......: No
; ;==========================================================================================

Func _Ersteinrichtungsassistenten_wiederherstellen()
	$result = MsgBox(262144 + 48 + 4, _Get_langstr(394), _Get_langstr(789), 0, $Config_GUI)
	If $result = 6 Then
		RegDelete("HKEY_CURRENT_USER\Software\ISN AutoIt Studio", "Configfile")
		FileDelete(@ScriptDir & "\portable.dat")
		MsgBox(262144 + 64, _Get_langstr(178), _Get_langstr(790), 0, $Config_GUI)
		_exit()
	EndIf
EndFunc   ;==>_Ersteinrichtungsassistenten_wiederherstellen

; #FUNCTION# ;===============================================================================
; Name...........: _Testprojekt_anlegen
; Description ...: Entpackt den inhalt der testprojekt.zip in den Projekte-Ordner
; Syntax.........: _Testprojekt_anlegen()
; Parameters ....: None
; Return values .: None
; Author ........: ISI360
; Modified.......:
; Remarks .......: Kann aus den Programmeinstellungen -> Erweitert ausgeführt werden
; Related .......:
; Link ..........: http://www.isnetwork.at
; Example .......: No
; ;==========================================================================================

Func _Testprojekt_anlegen()
	$result = MsgBox(262144 + 32 + 4, _Get_langstr(61), _Get_langstr(791), 0, $Config_GUI)
	If $result = 6 Then
		_UnZip_Init("_UnZIP_PrintFunc", "UnZIP_ReplaceFunc", "_UnZIP_PasswordFunc", "_UnZIP_SendAppMsgFunc", "_UnZIP_ServiceFunc")
		_UnZIP_SetOptions()
		$result = _UnZIP_Unzip(@ScriptDir & "\Data\testprojekt.zip", $Projectfolder)
		_GUICtrlStatusBar_SetText_ISN($Status_bar, "")
		MsgBox(262144 + 64, _Get_langstr(178), _Get_langstr(792), 0, $Config_GUI)
	EndIf
EndFunc   ;==>_Testprojekt_anlegen

Func _Erweitertes_Debugging_aktivieren()
	GUICtrlSetState($Tools_menu_debugging_erweitertes_debugging_aktivieren, $GUI_CHECKED)
	GUICtrlSetState($Tools_menu_debugging_erweitertes_debugging_deaktivieren, $GUI_UNCHECKED)
	$Erweitertes_debugging = "true"
	_Write_in_Config("enhanced_debugging", $Erweitertes_debugging)
	_Show_Warning("confirmdebugging", 308, _Get_langstr(178), _Get_langstr(803), _Get_langstr(7))
EndFunc   ;==>_Erweitertes_Debugging_aktivieren

Func _Erweitertes_Debugging_deaktivieren()
	GUICtrlSetState($Tools_menu_debugging_erweitertes_debugging_aktivieren, $GUI_UNCHECKED)
	GUICtrlSetState($Tools_menu_debugging_erweitertes_debugging_deaktivieren, $GUI_CHECKED)
	$Erweitertes_debugging = "false"
	_Write_in_Config("enhanced_debugging", $Erweitertes_debugging)
EndFunc   ;==>_Erweitertes_Debugging_deaktivieren


; #FUNCTION# ;===============================================================================
; Name...........: _Pruefe_ob_Datei_geoeffnet
; Description ...: Entpackt den inhalt der testprojekt.zip in den Projekte-Ordner
; Syntax.........: _Pruefe_ob_Datei_geoeffnet($Pfad)
; Parameters ....: $Pfad	- Pfad zur Datei die geprüft werden soll
; Return values .: true		- Datei ist geöffnet
;                  false	- Datei ist nicht geöffnet
; Author ........: ISI360
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: http://www.isnetwork.at
; Example .......: No
; ;==========================================================================================

Func _Pruefe_ob_Datei_geoeffnet($pfad = "")
	If $pfad = "" Then Return "false"
	If _ArraySearch($Datei_pfad, $pfad) > -1 Then Return "true"
	Return "false"
EndFunc   ;==>_Pruefe_ob_Datei_geoeffnet

; #FUNCTION# ========================================================================================================
; Name.............:    _ArraySort_MultiColumn
; Description ...:      sorts an array at given colums (multi colum sort)
; Syntax...........:    _ArraySort_MultiColumn(ByRef $aSort, ByRef $aIndices)
; Parameters ...:       $aSort - array to sort
;                       $aIndices - array with colum indices which should be sorted in specified order - zero based
;                       $dir - sort direction - if set to 1, sort descendingly
; Author .........:     UEZ
; Version ........:     v0.60 build 2011-04-19 Beta
; ===================================================================================================================
Func _ArraySort_MultiColumn(ByRef $aSort, ByRef $aIndices, $oDir = 0, $iDir = 0)
	Local $1st, $2nd
	If Not IsArray($aIndices) Or Not IsArray($aSort) Then Return SetError(1, 0, 0) ;checks if $aIndices is an array
	If UBound($aIndices) > UBound($aSort, 2) Then Return SetError(2, 0, 0) ;check if $aIndices array is greater the $aSort array
	Local $x
	For $x = 0 To UBound($aIndices) - 1 ;check if array content makes sense
		If Not IsInt($aIndices[$x]) Then Return SetError(3, 0, 0) ;array content is not numeric
	Next
	If UBound($aIndices) = 1 Then Return _ArraySort($aSort, $oDir, 0, 0, $aIndices[0]) ;check if only one index is given
	Local $j, $k, $l = 0
	_ArraySort($aSort, $oDir, 0, 0, $aIndices[0])
	Do
		$1st = $aIndices[$l]
		$2nd = $aIndices[$l + 1]
		$j = 0
		$k = 1
		While $k < UBound($aSort)
			If $aSort[$j][$1st] <> $aSort[$k][$1st] Then
				If $k - $j > 1 Then
					_ArraySort($aSort, $iDir, $j, $k - 1, $2nd)
					$j = $k
				Else
					$j = $k
				EndIf
			EndIf
			$k += 1
		WEnd
		If $k - $j > 1 Then _ArraySort($aSort, $oDir, $j, $k, $2nd)
		$l += 1
	Until $l = UBound($aIndices) - 1
	Return 1
EndFunc   ;==>_ArraySort_MultiColumn

Func _RGB_to_BGR($colour = "")
	If $colour = "" Then Return 0
	$r = _ColorGetRed($colour)
	$g = _ColorGetGreen($colour)
	$B = _ColorGetBlue($colour)
	$BGR = "0x" & Hex($B, 2) & Hex($g, 2) & Hex($r, 2)
	Return $BGR
EndFunc   ;==>_RGB_to_BGR

Func _BGR_to_RGB($colour = "")
	If $colour = "" Then Return 0
	$r = _ColorGetBlue($colour)
	$g = _ColorGetGreen($colour)
	$B = _ColorGetRed($colour)
	$RGB = "0x" & Hex($r, 2) & Hex($g, 2) & Hex($B, 2)
	Return $RGB
EndFunc   ;==>_BGR_to_RGB

Func Codeausschnitt_GUI_Resize()
	$Codeausschnitt_clientsize = WinGetClientSize($Codeausschnitt_GUI)
	If IsArray($Codeausschnitt_clientsize) Then WinMove($scintilla_Codeausschnitt, "", 10, 93, $Codeausschnitt_clientsize[0] - (12 + 10), $Codeausschnitt_clientsize[1] - (60 + 93))

EndFunc   ;==>Codeausschnitt_GUI_Resize



Func _AU3_aus_Projektbaum_mit_neuem_Makro_kompilieren()
	$Markierte_Datei_im_Projektbaum = _GUICtrlTVExplorer_GetSelected($hWndTreeview)
	If $Markierte_Datei_im_Projektbaum = "" Then Return
	_Show_new_rule_event()
	_Add_action_to_list($Key_Action6)
	Dim $szDrive, $szDir, $szFName, $szExt
	$path = _PathSplit($Markierte_Datei_im_Projektbaum, $szDrive, $szDir, $szFName, $szExt)
	GUICtrlSetData($rule_compile_exename, $szFName & ".exe")

	$Markierte_Datei_im_Projektbaum = _ISN_Pfad_durch_Variablen_ersetzen($Markierte_Datei_im_Projektbaum)
	GUICtrlSetData($compile_rule_inputfile, $Markierte_Datei_im_Projektbaum)
EndFunc   ;==>_AU3_aus_Projektbaum_mit_neuem_Makro_kompilieren


Func _GUICtrlListView_CopyAllItems($hWnd_Source, $hWnd_Destination, $bDelFlag = False)
	Local $a_Indices, $tItem = DllStructCreate($tagLVITEM), $iIndex
	Local $iCols = _GUICtrlListView_GetColumnCount($hWnd_Source)

	Local $iItems = _GUICtrlListView_GetItemCount($hWnd_Source)
	_GUICtrlListView_BeginUpdate($hWnd_Source)
	_GUICtrlListView_BeginUpdate($hWnd_Destination)
	_GUICtrlListView_DeleteAllItems($hWnd_Destination)
	If BitAND(_GUICtrlListView_GetExtendedListViewStyle($hWnd_Source), $LVS_EX_CHECKBOXES) == $LVS_EX_CHECKBOXES Then
		For $i = 0 To $iItems - 1
			If(_GUICtrlListView_GetItemChecked($hWnd_Source, $i)) Then
				If IsArray($a_Indices) Then
					ReDim $a_Indices[UBound($a_Indices) + 1]
				Else
					Local $a_Indices[2]
				EndIf
				$a_Indices[0] = $a_Indices[0] + 1
				$a_Indices[UBound($a_Indices) - 1] = $i
			EndIf
		Next

		If(IsArray($a_Indices)) Then
			For $i = 1 To $a_Indices[0]
				DllStructSetData($tItem, "Mask", BitOR($LVIF_GROUPID, $LVIF_IMAGE, $LVIF_INDENT, $LVIF_PARAM, $LVIF_STATE))
				DllStructSetData($tItem, "Item", $a_Indices[$i])
				DllStructSetData($tItem, "SubItem", 0)
				DllStructSetData($tItem, "StateMask", -1)
				_GUICtrlListView_GetItemEx($hWnd_Source, $tItem)
				$iIndex = _GUICtrlListView_AddItem($hWnd_Destination, _GUICtrlListView_GetItemText($hWnd_Source, $a_Indices[$i], 0), DllStructGetData($tItem, "Image"))
				_GUICtrlListView_SetItemChecked($hWnd_Destination, $iIndex)
				For $x = 1 To $iCols - 1
					DllStructSetData($tItem, "Item", $a_Indices[$i])
					DllStructSetData($tItem, "SubItem", $x)
					_GUICtrlListView_GetItemEx($hWnd_Source, $tItem)
					_GUICtrlListView_AddSubItem($hWnd_Destination, $iIndex, _GUICtrlListView_GetItemText($hWnd_Source, $a_Indices[$i], $x), $x, DllStructGetData($tItem, "Image"))
				Next
				;_GUICtrlListView_SetItemChecked($hWnd_Source, $a_Indices[$i], False)
			Next
			If $bDelFlag Then
				For $i = $a_Indices[0] To 1 Step -1
					_GUICtrlListView_DeleteItem($hWnd_Source, $a_Indices[$i])
				Next
			EndIf
		EndIf
	EndIf

	$a_Indices = _GUICtrlListView_GetSelectedIndices($hWnd_Source, 1)
	For $i = 1 To _GUICtrlListView_GetItemCount($hWnd_Source)
		DllStructSetData($tItem, "Mask", BitOR($LVIF_GROUPID, $LVIF_IMAGE, $LVIF_INDENT, $LVIF_PARAM, $LVIF_STATE))
		DllStructSetData($tItem, "Item", $i - 1)
		DllStructSetData($tItem, "SubItem", 0)
		DllStructSetData($tItem, "StateMask", -1)
		_GUICtrlListView_GetItemEx($hWnd_Source, $tItem)
		$iIndex = _GUICtrlListView_AddItem($hWnd_Destination, _GUICtrlListView_GetItemText($hWnd_Source, $i - 1, 0), DllStructGetData($tItem, "Image"))
		For $x = 1 To $iCols - 1
			DllStructSetData($tItem, "Item", $i - 1)
			DllStructSetData($tItem, "SubItem", $x)
			_GUICtrlListView_GetItemEx($hWnd_Source, $tItem)
			_GUICtrlListView_AddSubItem($hWnd_Destination, $iIndex, _GUICtrlListView_GetItemText($hWnd_Source, $i - 1, $x), $x, DllStructGetData($tItem, "Image"))
		Next
	Next
	_GUICtrlListView_SetItemSelected($hWnd_Source, -1, False)
	If $bDelFlag Then
		For $i = $a_Indices[0] To 1 Step -1
			_GUICtrlListView_DeleteItem($hWnd_Source, $a_Indices[$i])
		Next
	EndIf

	_GUICtrlListView_EndUpdate($hWnd_Source)
	_GUICtrlListView_EndUpdate($hWnd_Destination)
EndFunc   ;==>_GUICtrlListView_CopyAllItems

Func _AU3_aus_Projektbaum_mit_vorhandenen_Makro_kompilieren()
	$Markierte_Datei_im_Projektbaum = _GUICtrlTVExplorer_GetSelected($hWndTreeview)
	If $Markierte_Datei_im_Projektbaum = "" Then Return
	_Build_Rulelist()
	GUISetState(@SW_SHOW, $Makro_auswaehlen_GUI)
	GUISetState(@SW_DISABLE, $Studiofenster)
EndFunc   ;==>_AU3_aus_Projektbaum_mit_vorhandenen_Makro_kompilieren

Func _AU3_mit_vorhandenen_Makro_kompilieren_Makro_auswaehlen()
	If _GUICtrlListView_GetSelectionMark($makro_auswaehlen_listview) = -1 Then Return
	If _GUICtrlListView_GetItemCount($makro_auswaehlen_listview) = 0 Then Return
	GUISetState(@SW_ENABLE, $Studiofenster)
	GUISetState(@SW_HIDE, $Makro_auswaehlen_GUI)
	$Markierte_Datei_im_Projektbaum = _GUICtrlTVExplorer_GetSelected($hWndTreeview)
	If $Markierte_Datei_im_Projektbaum = "" Then Return
	_Show_new_rule_form(_GUICtrlListView_GetItemText($makro_auswaehlen_listview, _GUICtrlListView_GetSelectionMark($makro_auswaehlen_listview), 2))
	_Add_action_to_list($Key_Action6)
	Dim $szDrive, $szDir, $szFName, $szExt
	$path = _PathSplit($Markierte_Datei_im_Projektbaum, $szDrive, $szDir, $szFName, $szExt)
	GUICtrlSetData($rule_compile_exename, $szFName & ".exe")

	$Markierte_Datei_im_Projektbaum = _ISN_Pfad_durch_Variablen_ersetzen($Markierte_Datei_im_Projektbaum)
	GUICtrlSetData($compile_rule_inputfile, $Markierte_Datei_im_Projektbaum)
EndFunc   ;==>_AU3_mit_vorhandenen_Makro_kompilieren_Makro_auswaehlen

Func _Hide_AU3_aus_Projektbaum_mit_vorhandenen_Makro_kompilieren()
	GUISetState(@SW_ENABLE, $Studiofenster)
	GUISetState(@SW_HIDE, $Makro_auswaehlen_GUI)
EndFunc   ;==>_Hide_AU3_aus_Projektbaum_mit_vorhandenen_Makro_kompilieren

Func _AU3_aus_Projektbaum_Direkt_Kompilieren($Markierte_Datei_im_Projektbaum = "", $Silent = 0)
	If $Markierte_Datei_im_Projektbaum = "" Then
		$Markierte_Datei_im_Projektbaum = _GUICtrlTVExplorer_GetSelected($hWndTreeview)
	EndIf
	If $Markierte_Datei_im_Projektbaum = "" Then Return

	If Not FileExists(@ScriptDir & "\Data\AutoIt3Wrapper.exe") Then
		MsgBox(262144 + 16, _Get_langstr(25), _Get_langstr(1032), 0, $Studiofenster)
		Return
	EndIf

	If $Silent = 0 Then
		GUISetState(@SW_SHOW, $compilingRule)
		GUISetState(@SW_DISABLE, $Studiofenster)
	EndIf

   ;Prüfe ob datei geöffnet ist und speichere diese vor dem Kompilieren
   	$alreadyopen = _GUICtrlTab_FindTab($hTab, stringtrimleft($Markierte_Datei_im_Projektbaum, stringinstr($Markierte_Datei_im_Projektbaum, "\", 0, -1)))
	if $alreadyopen <> -1 Then
		$res = _ArraySearch($Datei_pfad, $Markierte_Datei_im_Projektbaum)
		if $res <> -1 Then
		     _try_to_save_file($res)
		endif
	endif



	$source = $Markierte_Datei_im_Projektbaum

	$target = StringReplace($Markierte_Datei_im_Projektbaum, "." & $Autoitextension, ".exe")

	_Clear_Debuglog()
	$Console_Bluemode = 1


	GUICtrlSetData($rulecompile_label1, _Get_langstr(602) & " " & $source)
	GUICtrlSetData($rulecompile_label2, _Get_langstr(583) & " " & $target)

	$Zuletzt_Kompilierte_Datei_Pfad_au3 = $source ;Dateipfad der zuletzt kompilierten Datei (.au3 Datei)
	$data = _RunReadStd(FileGetShortName(@ScriptDir & "\Data\AutoIt3Wrapper.exe") & ' /in "' & $source & '" /out "' & $target & '"', 0, $Offenes_Projekt, @SW_HIDE, 1)
	$Zuletzt_Kompilierte_Datei_Pfad_exe = $target ;Dateipfad der zuletzt kompilierten Datei (.exe Datei)
	Dim $szDrive, $szDir, $szFName, $szExt
	$path = _PathSplit($source, $szDrive, $szDir, $szFName, $szExt)
	If FileExists($szDrive & $szDir & $szFName & "_Obfuscated" & $szExt) Then FileDelete(FileGetShortName($szDrive & $szDir & $szFName) & "_Obfuscated" & $szExt)
	If FileExists($szDrive & $szDir & _GetShortName($szFName) & "_Obfuscated" & $szExt) Then FileDelete($szDrive & $szDir & _GetShortName($szFName) & "_Obfuscated" & $szExt)
	If FileExists($szDrive & $szDir & $szFName & ".tbl") Then FileDelete(FileGetShortName($szDrive & $szDir & $szFName) & ".tbl")
	If FileExists($szDrive & $szDir & _GetShortName($szFName) & ".tbl") Then FileDelete($szDrive & $szDir & _GetShortName($szFName) & ".tbl")
	$Console_Bluemode = 0

	_run_rule($Section_Trigger19_compilefile) ;Makro

	If _Pruefe_ob_Datei_geoeffnet($source) = "true" Then ;Lese Datei neu ein (falls geöffnet)
		$tabpage = _GUICtrlTab_FindTab($htab, StringTrimLeft($source, StringInStr($source, "\", 0, -1)))
		LoadEditorFile($SCE_EDITOR[$tabpage], $source)
		$FILE_CACHE[$tabpage] = Sci_GetLines($SCE_EDITOR[$tabpage])
		_Editor_Restore_Fold()
	EndIf
	If $Silent = 0 Then
		_Update_Treeview() ;Zum Abschluss noch den Projektbaum aktualisieren
		GUISetState(@SW_ENABLE, $Studiofenster)
		GUISetState(@SW_HIDE, $compilingRule)
	EndIf
EndFunc   ;==>_AU3_aus_Projektbaum_Direkt_Kompilieren


Func _Erstelle_Kontextmenu_fuer_Projektbaum()
	;Projektbaum Kontextmenü
	GUISwitch($Studiofenster)
	GUICtrlDelete($TreeviewContextMenu)
	Global $TreeviewContextMenu_dummy = GUICtrlCreateDummy()
	Global $TreeviewContextMenu = GUICtrlCreateContextMenu($TreeviewContextMenu_dummy)
	Global $TreeviewContextMenu_Item1 = _GUICtrlCreateODMenuItem(_Get_langstr(65) & @TAB & "Enter", $TreeviewContextMenu, $smallIconsdll, 1287) ;open
	Global $TreeviewContextMenu_Item2 = _GUICtrlCreateODMenuItem(_Get_langstr(66), $TreeviewContextMenu, $smallIconsdll, 824) ;rename
	Global $TreeviewContextMenu_Item3 = _GUICtrlCreateODMenuItem(_Get_langstr(67) & @TAB & "Del", $TreeviewContextMenu, $smallIconsdll, 1174) ;delete
	Global $TreeviewContextMenu_Item4 = _GUICtrlCreateODMenuItem(_Get_langstr(121), $TreeviewContextMenu, $smallIconsdll, 1090) ;move
	Global $TreeviewContextMenu_Item9 = _GUICtrlCreateODMenuItem(_Get_langstr(398), $TreeviewContextMenu, $smallIconsdll, 1265) ;showinexplorer
	Global $TreeviewContextMenu_Item10 = _GUICtrlCreateODMenuItem(_Get_langstr(371), $TreeviewContextMenu, $smallIconsdll, 512) ;kopie erstellen
	Global $TreeviewContextMenu_Item5 = _GUICtrlCreateODMenuItem(_Get_langstr(68), $TreeviewContextMenu, $smallIconsdll, 11) ;eigenschaften

	_GUICtrlCreateODMenuItem("", $TreeviewContextMenu)


	Global $TreeviewContextMenu_Item_Kompilieren = _GUICtrlCreateODMenu(_Get_langstr(235), $TreeviewContextMenu, $smallIconsdll, 1786) ;Kompilieren
	Global $TreeviewContextMenu_Item_Jetzt_Kompilieren = _GUICtrlCreateODMenuItem(_Get_langstr(1050), $TreeviewContextMenu_Item_Kompilieren, $smallIconsdll, 1786) ;Jetzt kompilieren
	_GUICtrlCreateODMenuItem("", $TreeviewContextMenu_Item_Kompilieren)
	Global $TreeviewContextMenu_Item_Makro_kompilieren_neu = _GUICtrlCreateODMenuItem(_Get_langstr(1051), $TreeviewContextMenu_Item_Kompilieren, $smallIconsdll, 338) ;Makro kompilieren (neu)
	Global $TreeviewContextMenu_Item_Makro_kompilieren_bestehend = _GUICtrlCreateODMenuItem(_Get_langstr(1052), $TreeviewContextMenu_Item_Kompilieren, $smallIconsdll, 338) ;Makro kompilieren (bestehend)
	_GUICtrlCreateODMenuItem("", $TreeviewContextMenu)





	$TreeviewContextMenu_makroslot1 = ""
	$TreeviewContextMenu_makroslot2 = ""
	$TreeviewContextMenu_makroslot3 = ""
	$TreeviewContextMenu_makroslot4 = ""
	$TreeviewContextMenu_makroslot5 = ""
	$TreeviewContextMenu_makroslot6 = ""
	$TreeviewContextMenu_makroslot7 = ""
	If $Offenes_Projekt <> "" Then
		$sections = IniReadSection($Offenes_Projekt & "\project.isn", $Section_Trigger12)
		If Not @error And IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "ruleslot1_projecttreecontext", "0") = 1 Then
			$name = IniRead($Offenes_Projekt & "\project.isn", $sections[1][0], "name", "")
			$readen_icon = IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "icon_ruleslot1", "1")
			$readen_icon = Number($readen_icon)
			If $readen_icon = 1 Then $readen_icon = $readen_icon - 1
			$TreeviewContextMenu_makroslot1 = _GUICtrlCreateODMenuItem($name & @TAB & _Keycode_zu_Text($Hotkey_Keycode_Makroslot1), $TreeviewContextMenu, $smallIconsdll, $readen_icon) ;makroslot1
		EndIf

		$sections = IniReadSection($Offenes_Projekt & "\project.isn", $Section_Trigger13)
		If Not @error And IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "ruleslot2_projecttreecontext", "0") = 1 Then
			$name = IniRead($Offenes_Projekt & "\project.isn", $sections[1][0], "name", "")
			$readen_icon = IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "icon_ruleslot2", "909")
			$readen_icon = Number($readen_icon)
			If $readen_icon = 1 Then $readen_icon = $readen_icon - 1
			$TreeviewContextMenu_makroslot2 = _GUICtrlCreateODMenuItem($name & @TAB & _Keycode_zu_Text($Hotkey_Keycode_Makroslot2), $TreeviewContextMenu, $smallIconsdll, $readen_icon) ;makroslot2
		EndIf

		$sections = IniReadSection($Offenes_Projekt & "\project.isn", $Section_Trigger14)
		If Not @error And IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "ruleslot3_projecttreecontext", "0") = 1 Then
			$name = IniRead($Offenes_Projekt & "\project.isn", $sections[1][0], "name", "")
			$readen_icon = IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "icon_ruleslot3", "1020")
			$readen_icon = Number($readen_icon)
			If $readen_icon = 1 Then $readen_icon = $readen_icon - 1
			$TreeviewContextMenu_makroslot3 = _GUICtrlCreateODMenuItem($name & @TAB & _Keycode_zu_Text($Hotkey_Keycode_Makroslot3), $TreeviewContextMenu, $smallIconsdll, $readen_icon) ;makroslot3
		EndIf

		$sections = IniReadSection($Offenes_Projekt & "\project.isn", $Section_Trigger15)
		If Not @error And IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "ruleslot4_projecttreecontext", "0") = 1 Then
			$name = IniRead($Offenes_Projekt & "\project.isn", $sections[1][0], "name", "")
			$readen_icon = IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "icon_ruleslot4", "1130")
			$readen_icon = Number($readen_icon)
			If $readen_icon = 1 Then $readen_icon = $readen_icon - 1
			$TreeviewContextMenu_makroslot4 = _GUICtrlCreateODMenuItem($name & @TAB & _Keycode_zu_Text($Hotkey_Keycode_Makroslot4), $TreeviewContextMenu, $smallIconsdll, $readen_icon) ;makroslot4
		EndIf

		$sections = IniReadSection($Offenes_Projekt & "\project.isn", $Section_Trigger16)
		If Not @error And IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "ruleslot5_projecttreecontext", "0") = 1 Then
			$name = IniRead($Offenes_Projekt & "\project.isn", $sections[1][0], "name", "")
			$readen_icon = IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "icon_ruleslot5", "1241")
			$readen_icon = Number($readen_icon)
			If $readen_icon = 1 Then $readen_icon = $readen_icon - 1
			$TreeviewContextMenu_makroslot5 = _GUICtrlCreateODMenuItem($name & @TAB & _Keycode_zu_Text($Hotkey_Keycode_Makroslot5), $TreeviewContextMenu, $smallIconsdll, $readen_icon) ;makroslot5
		EndIf


		$sections = IniReadSection($Offenes_Projekt & "\project.isn", $Section_Trigger17)
		If Not @error And IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "ruleslot6_projecttreecontext", "0") = 1 Then
			$name = IniRead($Offenes_Projekt & "\project.isn", $sections[1][0], "name", "")
			$readen_icon = IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "icon_ruleslot6", "1345")
			$readen_icon = Number($readen_icon)
			If $readen_icon = 1 Then $readen_icon = $readen_icon - 1
			$TreeviewContextMenu_makroslot6 = _GUICtrlCreateODMenuItem($name & @TAB & _Keycode_zu_Text($Hotkey_Keycode_Makroslot6), $TreeviewContextMenu, $smallIconsdll, $readen_icon) ;makroslot6
		EndIf

		$sections = IniReadSection($Offenes_Projekt & "\project.isn", $Section_Trigger18)
		If Not @error And IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "ruleslot7_projecttreecontext", "0") = 1 Then
			$name = IniRead($Offenes_Projekt & "\project.isn", $sections[1][0], "name", "")
			$readen_icon = IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "icon_ruleslot7", "1456")
			$readen_icon = Number($readen_icon)
			If $readen_icon = 1 Then $readen_icon = $readen_icon - 1
			$TreeviewContextMenu_makroslot7 = _GUICtrlCreateODMenuItem($name & @TAB & _Keycode_zu_Text($Hotkey_Keycode_Makroslot7), $TreeviewContextMenu, $smallIconsdll, $readen_icon) ;makroslot7
		EndIf

	EndIf


	If $TreeviewContextMenu_makroslot1 <> "" Or $TreeviewContextMenu_makroslot2 <> "" Or $TreeviewContextMenu_makroslot3 <> "" Or $TreeviewContextMenu_makroslot4 <> "" Or $TreeviewContextMenu_makroslot5 <> "" Or $TreeviewContextMenu_makroslot6 <> "" Or $TreeviewContextMenu_makroslot7 <> "" Then _GUICtrlCreateODMenuItem("", $TreeviewContextMenu)

	Global $TreeviewContextMenu_Item6 = _GUICtrlCreateODMenuItem(_Get_langstr(72), $TreeviewContextMenu, $smallIconsdll, 378) ;import
	Global $TreeviewContextMenu_Item6a = _GUICtrlCreateODMenuItem(_Get_langstr(455), $TreeviewContextMenu, $smallIconsdll, 1090) ;importfolder
	Global $TreeviewContextMenu_Item7 = _GUICtrlCreateODMenuItem(_Get_langstr(73), $TreeviewContextMenu, $smallIconsdll, 416) ;export
	_GUICtrlCreateODMenuItem("", $TreeviewContextMenu)
	Global $TreeviewContextMenu_Item8 = _GUICtrlCreateODMenu(_Get_langstr(77), $TreeviewContextMenu, $smallIconsdll, 1283) ;neu
	Global $TreeviewContextMenu_Item8_Item1 = _GUICtrlCreateODMenu(_Get_langstr(70), $TreeviewContextMenu_Item8, $smallIconsdll, 1283) ;file
	Global $TreeviewContextMenu_Item8_a = _GUICtrlCreateODMenuItem(_Get_langstr(154), $TreeviewContextMenu_Item8_Item1, $smallIconsdll, 1788, 1) ;au3 file
	Global $TreeviewContextMenu_temp_au3_file = _GUICtrlCreateODMenuItem(_Get_langstr(1094), $TreeviewContextMenu_Item8_Item1, $smallIconsdll, 1788, 1) ;temp au3 file
	Global $TreeviewContextMenu_Item8_b = _GUICtrlCreateODMenuItem(_Get_langstr(153), $TreeviewContextMenu_Item8_Item1, $smallIconsdll, 781, 1) ;isf file
	Global $TreeviewContextMenu_Item8_c = _GUICtrlCreateODMenuItem(_Get_langstr(155), $TreeviewContextMenu_Item8_Item1, $smallIconsdll, 1177, 1) ;ini file
	Global $TreeviewContextMenu_Item8_d = _GUICtrlCreateODMenuItem(_Get_langstr(156), $TreeviewContextMenu_Item8_Item1, $smallIconsdll, 1178, 1) ;txt file
	Global $TreeviewContextMenu_Item8_Item2 = _GUICtrlCreateODMenuItem(_Get_langstr(71), $TreeviewContextMenu_Item8, $smallIconsdll, 1344, 1) ;folder
EndFunc   ;==>_Erstelle_Kontextmenu_fuer_Projektbaum

Func _neuer_changelog_eintrag_Radio_Toggle()
	If GUICtrlRead($neuer_changelog_eintrag_radio1) = $GUI_CHECKED Then
		GUICtrlSetState($neuer_changelog_eintrag_bearbeiter_input, $GUI_DISABLE)
		GUICtrlSetState($neuer_changelog_eintrag_bearbeiter_label, $GUI_DISABLE)
		GUICtrlSetState($neuer_changelog_eintrag_datum_input, $GUI_DISABLE)
		GUICtrlSetState($neuer_changelog_eintrag_datum_label, $GUI_DISABLE)
		GUICtrlSetState($neuer_changelog_eintrag_version_checkbox, $GUI_DISABLE)
		GUICtrlSetState($neuer_changelog_eintrag_version_input, $GUI_DISABLE)
		GUICtrlSetState($neuer_changelog_eintrag_betreff_input, $GUI_DISABLE)
		GUICtrlSetState($neuer_changelog_eintrag_betreff_label, $GUI_DISABLE)
		GUICtrlSetState($neuer_changelog_eintrag_edit, $GUI_DISABLE)
	Else
		GUICtrlSetState($neuer_changelog_eintrag_bearbeiter_input, $GUI_ENABLE)
		GUICtrlSetState($neuer_changelog_eintrag_bearbeiter_label, $GUI_ENABLE)
		GUICtrlSetState($neuer_changelog_eintrag_datum_input, $GUI_ENABLE)
		GUICtrlSetState($neuer_changelog_eintrag_datum_label, $GUI_ENABLE)
		GUICtrlSetState($neuer_changelog_eintrag_version_checkbox, $GUI_ENABLE)
		GUICtrlSetState($neuer_changelog_eintrag_version_input, $GUI_ENABLE)
		GUICtrlSetState($neuer_changelog_eintrag_betreff_input, $GUI_ENABLE)
		GUICtrlSetState($neuer_changelog_eintrag_betreff_label, $GUI_ENABLE)
		GUICtrlSetState($neuer_changelog_eintrag_edit, $GUI_ENABLE)
	EndIf
EndFunc   ;==>_neuer_changelog_eintrag_Radio_Toggle


Func _Zeige_neuer_changelog_eintrag_GUI()
	If IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "use_changelog_manager", "false") = "false" Then Return
	GUICtrlSetState($neuer_changelog_eintrag_radio1, $GUI_CHECKED)
	GUICtrlSetState($neuer_changelog_eintrag_version_checkbox, $GUI_UNCHECKED)

	If _ProjectISN_Config_Read("changelog_use_author_from_project", "false") = "true" Then
	GUICtrlSetData($neuer_changelog_eintrag_bearbeiter_input, _ProjectISN_Config_Read("author", ""))
    Else
	GUICtrlSetData($neuer_changelog_eintrag_bearbeiter_input, @UserName)
	endif

	GUICtrlSetData($neuer_changelog_eintrag_datum_input, @YEAR & "/" & @MON & "/" & @MDAY)
	GUICtrlSetData($neuer_changelog_eintrag_betreff_input, "")
	GUICtrlSetData($neuer_changelog_eintrag_edit, "")
	GUICtrlSetData($neuer_changelog_eintrag_version_input, IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "version", ""))
	_neuer_changelog_eintrag_Radio_Toggle()
	_CenterOnMonitor($neuer_changelog_eintrag_GUI, "", $Runonmonitor)
	WinSetOnTop($neuer_changelog_eintrag_GUI, "", 1)
	GUISetState(@SW_SHOW, $neuer_changelog_eintrag_GUI)
	GUISetState(@SW_DISABLE, $Studiofenster)


	While 1
		$neuer_changelog_eintrag_GUI_state = WinGetState($neuer_changelog_eintrag_GUI, "")
		If Not BitAND($neuer_changelog_eintrag_GUI_state, 2) Then ExitLoop
		Sleep(100)
	WEnd
EndFunc   ;==>_Zeige_neuer_changelog_eintrag_GUI

Func _neuer_changelog_eintrag_OK()
	If GUICtrlRead($neuer_changelog_eintrag_radio2) = $GUI_CHECKED Then
		If GUICtrlRead($neuer_changelog_eintrag_edit) = "" Then
			_Input_Error_FX($neuer_changelog_eintrag_edit)
			Return
		EndIf
	EndIf
	GUISetState(@SW_ENABLE, $Studiofenster)
	GUISetState(@SW_HIDE, $neuer_changelog_eintrag_GUI)
	If GUICtrlRead($neuer_changelog_eintrag_radio2) = $GUI_CHECKED Then _Changelogeintrag_hinzufuegen()
EndFunc   ;==>_neuer_changelog_eintrag_OK


Func Date_AutoIt_2_German($conv_date)
	$String = ""
	If $conv_date = "" Then Return
	$conv_parts = StringSplit($conv_date, "/", 2)
	If IsArray($conv_parts) Then
		$String = $conv_parts[2] & "." & $conv_parts[1] & "." & $conv_parts[0]
	EndIf
	Return $String
EndFunc   ;==>Date_AutoIt_2_German




Func _Changelogeintrag_hinzufuegen()
	$Project_ISN = $Offenes_Projekt & "\project.isn"
	$NewitemID = @MDAY & @MON & @YEAR & @HOUR & @MIN & @SEC & Random(0, 100, 1)
	$Items_String = IniRead($Offenes_Projekt & "\project.isn", $Changelog_Section, "items", "")
	$Items_String = $Items_String & $NewitemID & "|"
	IniWrite($Offenes_Projekt & "\project.isn", $Changelog_Section, "items", $Items_String)

	IniWrite($Offenes_Projekt & "\project.isn", $Changelog_Section, "text[" & $NewitemID & "]", StringReplace(GUICtrlRead($neuer_changelog_eintrag_edit), @CRLF, "[BREAK]"))
	If GUICtrlRead($neuer_changelog_eintrag_betreff_input) <> "" Then IniWrite($Offenes_Projekt & "\project.isn", $Changelog_Section, "subject[" & $NewitemID & "]", GUICtrlRead($neuer_changelog_eintrag_betreff_input))
	If GUICtrlRead($neuer_changelog_eintrag_bearbeiter_input) <> "" Then IniWrite($Offenes_Projekt & "\project.isn", $Changelog_Section, "editor[" & $NewitemID & "]", GUICtrlRead($neuer_changelog_eintrag_bearbeiter_input))
	If $Benoetigte_Zeit <> 0 Then IniWrite($Offenes_Projekt & "\project.isn", $Changelog_Section, "time[" & $NewitemID & "]", $Benoetigte_Zeit)
	$Datum_Array = _GUICtrlDTP_GetSystemTime(GUICtrlGetHandle($neuer_changelog_eintrag_datum_input))
	If IsArray($Datum_Array) Then
		IniWrite($Offenes_Projekt & "\project.isn", $Changelog_Section, "date[" & $NewitemID & "]", StringFormat("%04d/%02d/%02d", $Datum_Array[0], $Datum_Array[1], $Datum_Array[2]))
	EndIf
	If GUICtrlRead($neuer_changelog_eintrag_version_checkbox) = $GUI_CHECKED Then
		IniWrite($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "version", GUICtrlRead($neuer_changelog_eintrag_version_input))
		IniWrite($Offenes_Projekt & "\project.isn", $Changelog_Section, "version[" & $NewitemID & "]", GUICtrlRead($neuer_changelog_eintrag_version_input))
	Else
		IniWrite($Offenes_Projekt & "\project.isn", $Changelog_Section, "version[" & $NewitemID & "]", IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "version", ""))
	EndIf
EndFunc   ;==>_Changelogeintrag_hinzufuegen

Func _sort_changelogmanager_listview()
	_Sortiere_Listview($changelogmanager_listview)
EndFunc   ;==>_sort_changelogmanager_listview

Func _sort_berichtgenerieren_listview()
	_Sortiere_Listview($changelogenerieren_listview)
EndFunc   ;==>_sort_berichtgenerieren_listview

Func _Sortiere_Listview($Listview = "", $Colum = "-1", $direction = "-1")
	If $Listview = "" Then Return
	If $Colum = "-1" Then $Colum = GUICtrlGetState($Listview)
	If $direction <> "-1" Then
		_GUICtrlListView_UnRegisterSortCallBack($Listview)
		_Sortiere_Listview($Listview, $Colum)
	EndIf
	_GUICtrlListView_RegisterSortCallBack($Listview)
	_GUICtrlListView_SortItems($Listview, $Colum)
EndFunc   ;==>_Sortiere_Listview


Func _Aenderungsmanager_Aktualisiere_Liste($handle = $changelogmanager_listview)
	If $Offenes_Projekt = "" Then Return
	Local $Gesamtzeit = 0
	Local $Geladene_Objekte = 0
	Local $Secs, $Mins, $Hour
	$ISN_Datei = $Offenes_Projekt & "\project.isn"
	$Items_String = IniRead($Offenes_Projekt & "\project.isn", $Changelog_Section, "items", "")
	_GUICtrlListView_DeleteAllItems(GUICtrlGetHandle($handle))
	_GUICtrlListView_BeginUpdate($handle)
	$Item_Array = StringSplit($Items_String, "|", 2)
	If IsArray($Item_Array) Then
		For $x = 0 To UBound($Item_Array) - 1
			If $Item_Array[$x] = "|" Then ContinueLoop
			If $Item_Array[$x] = "" Then ContinueLoop
			If $Item_Array[$x] = " " Then ContinueLoop
			$Geladene_Objekte = $Geladene_Objekte + 1
			_GUICtrlListView_AddItem($handle, IniRead($ISN_Datei, $Changelog_Section, "date[" & $Item_Array[$x] & "]", ""), -1, _GUICtrlListView_GetItemCount($handle) + 9999) ;Fix für Sortierung
			_GUICtrlListView_AddSubItem($handle, _GUICtrlListView_GetItemCount($handle) - 1, IniRead($ISN_Datei, $Changelog_Section, "subject[" & $Item_Array[$x] & "]", ""), 1)
			_GUICtrlListView_AddSubItem($handle, _GUICtrlListView_GetItemCount($handle) - 1, StringReplace(IniRead($ISN_Datei, $Changelog_Section, "text[" & $Item_Array[$x] & "]", ""), "[BREAK]", " "), 2)
			_GUICtrlListView_AddSubItem($handle, _GUICtrlListView_GetItemCount($handle) - 1, IniRead($ISN_Datei, $Changelog_Section, "version[" & $Item_Array[$x] & "]", ""), 3)
			$Zeitms = IniRead($ISN_Datei, $Changelog_Section, "time[" & $Item_Array[$x] & "]", 0)
			$Gesamtzeit = $Gesamtzeit + $Zeitms
			_TicksToTime($Zeitms, $Hour, $Mins, $Secs)
			_GUICtrlListView_AddSubItem($handle, _GUICtrlListView_GetItemCount($handle) - 1, $Hour & "h " & $Mins & "m " & $Secs & "s", 4)
			_GUICtrlListView_AddSubItem($handle, _GUICtrlListView_GetItemCount($handle) - 1, IniRead($ISN_Datei, $Changelog_Section, "editor[" & $Item_Array[$x] & "]", ""), 5)
			_GUICtrlListView_AddSubItem($handle, _GUICtrlListView_GetItemCount($handle) - 1, $Item_Array[$x], 6) ;ID
			_Sortiere_Listview($handle, 0, 1) ;Sortiere nach englischem Datum
		Next
		;Ersetze Englisches Datum durch Deutsches
		If $Languagefile = "german.lng" Then
			For $y = 0 To _GUICtrlListView_GetItemCount($handle) - 1
				$Datum = _GUICtrlListView_GetItemText($handle, $y, 0)
				$Datum = Date_AutoIt_2_German($Datum)
				_GUICtrlListView_SetItemText($handle, $y, $Datum, 0)
			Next
		EndIf
	EndIf
	_GUICtrlListView_EndUpdate($handle)
	GUICtrlSetData($changelogmanager_geladene_Objekte_label, $Geladene_Objekte & " " & _Get_langstr(924))
	_TicksToTime($Gesamtzeit, $Hour, $Mins, $Secs)
	GUICtrlSetData($changelogmanager_gesamtzeit_label, _Get_langstr(923) & " " & $Hour & "h " & $Mins & "m " & $Secs & "s")
EndFunc   ;==>_Aenderungsmanager_Aktualisiere_Liste

Func _changelogmanager_lade_eintrag()
	AdlibUnRegister("_changelogmanager_lade_eintrag")
	Local $Secs, $Mins, $Hour
	$ISN_Datei = $Offenes_Projekt & "\project.isn"
	If _GUICtrlListView_GetSelectionMark($changelogmanager_listview) = -1 Then
		GUICtrlSetState($changelogmanager_datum_input, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_bearbeiter_input, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_betreff_input, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_zeit_input, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_version_input, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_text_input, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_uebernehmen_button, $GUI_DISABLE)
		GUICtrlSetData($changelogmanager_datum_input, "")
		GUICtrlSetData($changelogmanager_bearbeiter_input, "")
		GUICtrlSetData($changelogmanager_betreff_input, "")
		GUICtrlSetData($changelogmanager_zeit_input, "")
		GUICtrlSetData($changelogmanager_version_input, "")
		GUICtrlSetData($changelogmanager_text_input, "")
		GUICtrlSetData($changelogmanager_zeit_h, "")
		GUICtrlSetData($changelogmanager_zeit_m, "")
		GUICtrlSetData($changelogmanager_zeit_s, "")
		GUICtrlSetState($changelogmanager_version_label, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_datum_label, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_betreff_label, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_bearbeiter_label, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_zeit_label, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_zeit_h, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_zeit_m, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_zeit_s, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_zeit_h_label, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_zeit_m_label, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_zeit_s_label, $GUI_DISABLE)
		Return
	Else
		$Section_ID = _GUICtrlListView_GetItemText($changelogmanager_listview, _GUICtrlListView_GetSelectionMark($changelogmanager_listview), 6)
		If $Section_ID = "" Then Return
		GUICtrlSetState($changelogmanager_datum_input, $GUI_ENABLE)
		GUICtrlSetState($changelogmanager_bearbeiter_input, $GUI_ENABLE)
		GUICtrlSetState($changelogmanager_betreff_input, $GUI_ENABLE)
		GUICtrlSetState($changelogmanager_zeit_input, $GUI_ENABLE)
		GUICtrlSetState($changelogmanager_version_input, $GUI_ENABLE)
		GUICtrlSetState($changelogmanager_text_input, $GUI_ENABLE)
		GUICtrlSetState($changelogmanager_uebernehmen_button, $GUI_ENABLE)
		GUICtrlSetState($changelogmanager_version_label, $GUI_ENABLE)
		GUICtrlSetState($changelogmanager_datum_label, $GUI_ENABLE)
		GUICtrlSetState($changelogmanager_betreff_label, $GUI_ENABLE)
		GUICtrlSetState($changelogmanager_bearbeiter_label, $GUI_ENABLE)
		GUICtrlSetState($changelogmanager_zeit_label, $GUI_ENABLE)
		GUICtrlSetState($changelogmanager_zeit_h, $GUI_ENABLE)
		GUICtrlSetState($changelogmanager_zeit_m, $GUI_ENABLE)
		GUICtrlSetState($changelogmanager_zeit_s, $GUI_ENABLE)
		GUICtrlSetState($changelogmanager_zeit_h_label, $GUI_ENABLE)
		GUICtrlSetState($changelogmanager_zeit_m_label, $GUI_ENABLE)
		GUICtrlSetState($changelogmanager_zeit_s_label, $GUI_ENABLE)
		GUICtrlSetData($changelogmanager_datum_input, IniRead($ISN_Datei, $Changelog_Section, "date[" & $Section_ID & "]", ""))
		GUICtrlSetData($changelogmanager_bearbeiter_input, IniRead($ISN_Datei, $Changelog_Section, "editor[" & $Section_ID & "]", ""))
		GUICtrlSetData($changelogmanager_betreff_input, IniRead($ISN_Datei, $Changelog_Section, "subject[" & $Section_ID & "]", ""))
		GUICtrlSetData($changelogmanager_zeit_input, IniRead($ISN_Datei, $Changelog_Section, "time[" & $Section_ID & "]", "0"))
		_TicksToTime(GUICtrlRead($changelogmanager_zeit_input), $Hour, $Mins, $Secs)
		GUICtrlSetData($changelogmanager_zeit_h, $Hour)
		GUICtrlSetData($changelogmanager_zeit_m, $Mins)
		GUICtrlSetData($changelogmanager_zeit_s, $Secs)
		GUICtrlSetData($changelogmanager_version_input, IniRead($ISN_Datei, $Changelog_Section, "version[" & $Section_ID & "]", ""))
		GUICtrlSetData($changelogmanager_text_input, StringReplace(IniRead($ISN_Datei, $Changelog_Section, "text[" & $Section_ID & "]", ""), "[BREAK]", @CRLF))

	EndIf

EndFunc   ;==>_changelogmanager_lade_eintrag

Func _changelogmanager_eintrag_loeschen()
	If _GUICtrlListView_GetSelectionMark($changelogmanager_listview) = -1 Then Return
	$Section_ID = _GUICtrlListView_GetItemText($changelogmanager_listview, _GUICtrlListView_GetSelectionMark($changelogmanager_listview), 6)
	If $Section_ID = "" Then Return
	$ISN_Datei = $Offenes_Projekt & "\project.isn"
	$Items_String = IniRead($Offenes_Projekt & "\project.isn", $Changelog_Section, "items", "")
	$Antwort = MsgBox(262144 + 32 + 4, _Get_langstr(48), _Get_langstr(932), 0, $aenderungs_manager_GUI)
	If $Antwort = 6 Then
		IniDelete($ISN_Datei, $Changelog_Section, "subject[" & $Section_ID & "]")
		IniDelete($ISN_Datei, $Changelog_Section, "text[" & $Section_ID & "]")
		IniDelete($ISN_Datei, $Changelog_Section, "time[" & $Section_ID & "]")
		IniDelete($ISN_Datei, $Changelog_Section, "editor[" & $Section_ID & "]")
		IniDelete($ISN_Datei, $Changelog_Section, "version[" & $Section_ID & "]")
		IniDelete($ISN_Datei, $Changelog_Section, "date[" & $Section_ID & "]")
		$Items_String = StringReplace($Items_String, $Section_ID, "")
		$Items_String = StringReplace($Items_String, "||", "|")
		IniWrite($Offenes_Projekt & "\project.isn", $Changelog_Section, "items", $Items_String)
		_Aenderungsmanager_Aktualisiere_Liste()
	EndIf
EndFunc   ;==>_changelogmanager_eintrag_loeschen

Func _changelogmanager_alle_eintraege_loeschen()
	$ISN_Datei = $Offenes_Projekt & "\project.isn"
	$Antwort = MsgBox(262144 + 32 + 4, _Get_langstr(48), _Get_langstr(971), 0, $aenderungs_manager_GUI)
	If $Antwort = 6 Then
		IniDelete($ISN_Datei, $Changelog_Section)
		_Aenderungsmanager_Aktualisiere_Liste()
	EndIf
EndFunc   ;==>_changelogmanager_alle_eintraege_loeschen

Func _changelogmanager_eintrag_aendern()
	If _GUICtrlListView_GetSelectionMark($changelogmanager_listview) = -1 Then Return
	$Section_ID = _GUICtrlListView_GetItemText($changelogmanager_listview, _GUICtrlListView_GetSelectionMark($changelogmanager_listview), 6)
	If $Section_ID = "" Then Return
	$Alte_Selection = _GUICtrlListView_GetSelectionMark($changelogmanager_listview)
	$ISN_Datei = $Offenes_Projekt & "\project.isn"
	GUICtrlSetData($changelogmanager_zeit_input, _TimeToTicks(GUICtrlRead($changelogmanager_zeit_h), GUICtrlRead($changelogmanager_zeit_m), GUICtrlRead($changelogmanager_zeit_s)))
	IniWrite($ISN_Datei, $Changelog_Section, "text[" & $Section_ID & "]", StringReplace(GUICtrlRead($changelogmanager_text_input), @CRLF, "[BREAK]"))
	IniWrite($ISN_Datei, $Changelog_Section, "subject[" & $Section_ID & "]", GUICtrlRead($changelogmanager_betreff_input))
	IniWrite($ISN_Datei, $Changelog_Section, "editor[" & $Section_ID & "]", GUICtrlRead($changelogmanager_bearbeiter_input))
	IniWrite($ISN_Datei, $Changelog_Section, "time[" & $Section_ID & "]", GUICtrlRead($changelogmanager_zeit_input))
	IniWrite($ISN_Datei, $Changelog_Section, "version[" & $Section_ID & "]", GUICtrlRead($changelogmanager_version_input))
	$Datum_Array = _GUICtrlDTP_GetSystemTime(GUICtrlGetHandle($changelogmanager_datum_input))
	If IsArray($Datum_Array) Then
		IniWrite($ISN_Datei, $Changelog_Section, "date[" & $Section_ID & "]", StringFormat("%04d/%02d/%02d", $Datum_Array[0], $Datum_Array[1], $Datum_Array[2]))
	EndIf
	_Aenderungsmanager_Aktualisiere_Liste()
	_GUICtrlListView_SetItemSelected($changelogmanager_listview, $Alte_Selection, True, True)
	_changelogmanager_lade_eintrag()
EndFunc   ;==>_changelogmanager_eintrag_aendern

Func _changelogmanager_resize()
	$Fixe_Breiten = 70 + 150 + 60 + 90 + 110
	$Listview_groesse = ControlGetPos($aenderungs_manager_GUI, "", $changelogmanager_listview)
	If Not IsArray($Listview_groesse) Then Return
	$Neue_Textbreite = $Listview_groesse[2] - $Fixe_Breiten - 40
	_GUICtrlListView_SetColumnWidth($changelogmanager_listview, 2, $Neue_Textbreite)
EndFunc   ;==>_changelogmanager_resize

Func _Toggle_Changelogmanager()
	If GUICtrlRead($changelogmanager_protokolle_verwenden_checkbox) = $GUI_CHECKED Then
		GUICtrlSetState($changelogmanager_listview, $GUI_ENABLE)
		GUICtrlSetState($changelogmanager_neu_button, $GUI_ENABLE)
		GUICtrlSetState($changelogmanager_loeschen_button, $GUI_ENABLE)
		GUICtrlSetState($changelogmanager_gesamtzeit_label, $GUI_ENABLE)
		GUICtrlSetState($changelogmanager_geladene_Objekte_label, $GUI_ENABLE)
		GUICtrlSetState($changelogmanager_export_button, $GUI_ENABLE)
		GUICtrlSetState($changelogmanager_import_button, $GUI_ENABLE)
		GUICtrlSetState($changelogmanager_uebernehmen_button, $GUI_ENABLE)
		GUICtrlSetState($changelogmanager_version_label, $GUI_ENABLE)
		GUICtrlSetState($changelogmanager_datum_label, $GUI_ENABLE)
		GUICtrlSetState($changelogmanager_betreff_label, $GUI_ENABLE)
		GUICtrlSetState($changelogmanager_bearbeiter_label, $GUI_ENABLE)
		GUICtrlSetState($changelogmanager_zeit_label, $GUI_ENABLE)
		GUICtrlSetState($changelogmanager_zeit_h_label, $GUI_ENABLE)
		GUICtrlSetState($changelogmanager_zeit_m_label, $GUI_ENABLE)
		GUICtrlSetState($changelogmanager_zeit_s_label, $GUI_ENABLE)
		GUICtrlSetState($changelogmanager_allesloeschen_button, $GUI_ENABLE)
		IniWrite($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "use_changelog_manager", "true")
	Else
		GUICtrlSetState($changelogmanager_datum_input, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_bearbeiter_input, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_betreff_input, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_zeit_input, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_version_input, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_text_input, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_listview, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_neu_button, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_loeschen_button, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_gesamtzeit_label, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_geladene_Objekte_label, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_export_button, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_import_button, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_uebernehmen_button, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_version_label, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_datum_label, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_betreff_label, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_bearbeiter_label, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_zeit_label, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_zeit_h_label, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_zeit_m_label, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_zeit_s_label, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_zeit_h, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_zeit_m, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_zeit_s, $GUI_DISABLE)
		GUICtrlSetState($changelogmanager_allesloeschen_button, $GUI_DISABLE)
		IniWrite($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "use_changelog_manager", "false")
	EndIf

EndFunc   ;==>_Toggle_Changelogmanager


Func _Zeige_changelogmanager()
	If $Studiomodus = 2 Then
		MsgBox(262144 + 16, _Get_langstr(25), _Get_langstr(670), 0, $Studiofenster)
		Return
	EndIf
	GUISetState(@SW_DISABLE, $Studiofenster)
	_Aenderungsmanager_Aktualisiere_Liste()
	_changelogmanager_lade_eintrag()
	If IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "use_changelog_manager", "false") = "true" Then
		GUICtrlSetState($changelogmanager_protokolle_verwenden_checkbox, $GUI_CHECKED)
	Else
		GUICtrlSetState($changelogmanager_protokolle_verwenden_checkbox, $GUI_UNCHECKED)
	EndIf
	_Toggle_Changelogmanager()
	GUISetState(@SW_SHOW, $aenderungs_manager_GUI)
EndFunc   ;==>_Zeige_changelogmanager

Func _HIDE_changelogmanager()
	GUISetState(@SW_ENABLE, $Studiofenster)
	GUISetState(@SW_HIDE, $aenderungs_manager_GUI)
EndFunc   ;==>_HIDE_changelogmanager

Func _Bericht_standardlayout_wiederherstellen()
	$text = _Hole_Standardvorlage_fuer_bericht()
	$text = StringReplace($text, "[BREAK]", @CRLF)
	GUICtrlSetData($berichtgenerieren_aufbauedit, $text)
EndFunc   ;==>_Bericht_standardlayout_wiederherstellen

Func _SHOW_bericht_generieren_GUI()
	GUISetState(@SW_SHOW, $changelog_generieren_GUI)
	GUISetState(@SW_DISABLE, $aenderungs_manager_GUI)
	GUICtrlSetData($berichtgenerieren_vorschaufenster, "")
	GUICtrlSetData($berichtgenerieren_aufbauedit, "")
	$text = IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "changelog_manager_report_layout", _Hole_Standardvorlage_fuer_bericht())
	$text = StringReplace($text, "[BREAK]", @CRLF)
	GUICtrlSetData($berichtgenerieren_aufbauedit, $text)
	_Aenderungsmanager_Aktualisiere_Liste($changelogenerieren_listview)
	_Bericht_generieren_dropdowns_befuellen()
EndFunc   ;==>_SHOW_bericht_generieren_GUI

Func _HIDE_bericht_generieren_GUI()
	GUISetState(@SW_ENABLE, $aenderungs_manager_GUI)
	GUISetState(@SW_HIDE, $changelog_generieren_GUI)
	;Sepeichere Layout
	$text = StringReplace(GUICtrlRead($berichtgenerieren_aufbauedit), @CRLF, "[BREAK]")
	IniWrite($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "changelog_manager_report_layout", $text)
	_Bericht_verstecke_hilfe()
EndFunc   ;==>_HIDE_bericht_generieren_GUI

Func _Bericht_generieren_alles_makieren()
	If _GUICtrlListView_GetItemCount($changelogenerieren_listview) = 0 Then Return
	For $y = 0 To _GUICtrlListView_GetItemCount($changelogenerieren_listview) - 1
		_GUICtrlListView_SetItemChecked($changelogenerieren_listview, $y, True)
	Next
EndFunc   ;==>_Bericht_generieren_alles_makieren

Func _Bericht_generieren_alles_abmakieren()
	If _GUICtrlListView_GetItemCount($changelogenerieren_listview) = 0 Then Return
	For $y = 0 To _GUICtrlListView_GetItemCount($changelogenerieren_listview) - 1
		_GUICtrlListView_SetItemChecked($changelogenerieren_listview, $y, False)
	Next
EndFunc   ;==>_Bericht_generieren_alles_abmakieren

Func _Bericht_generieren_dropdowns_befuellen()
	GUICtrlSetData($berichtgenerieren_bearbeiter_combo, "", "")
	GUICtrlSetData($berichtgenerieren_version_combo, "", "")
	If _GUICtrlListView_GetItemCount($changelogenerieren_listview) = 0 Then Return
	Dim $Eintraege_Version[1]
	Dim $Eintraege_Bearbeiter[1]
	For $y = 0 To _GUICtrlListView_GetItemCount($changelogenerieren_listview) - 1
		_ArrayAdd($Eintraege_Version, _GUICtrlListView_GetItemText($changelogenerieren_listview, $y, 3))
		_ArrayAdd($Eintraege_Bearbeiter, _GUICtrlListView_GetItemText($changelogenerieren_listview, $y, 5))
	Next
	_ArrayDelete($Eintraege_Version, 0)
	_ArrayDelete($Eintraege_Bearbeiter, 0)
	$Eintraege_Version = _ArrayUnique($Eintraege_Version)
	$Eintraege_Bearbeiter = _ArrayUnique($Eintraege_Bearbeiter)
	_ArrayDelete($Eintraege_Version, 0)
	_ArrayDelete($Eintraege_Bearbeiter, 0)

	If IsArray($Eintraege_Version) Then
		$Datenstring = _ArrayToString($Eintraege_Version, "|")
		GUICtrlSetData($berichtgenerieren_version_combo, $Datenstring, "")
	EndIf

	If IsArray($Eintraege_Bearbeiter) Then
		$Datenstring = _ArrayToString($Eintraege_Bearbeiter, "|")
		GUICtrlSetData($berichtgenerieren_bearbeiter_combo, $Datenstring, "")
	EndIf
EndFunc   ;==>_Bericht_generieren_dropdowns_befuellen

Func _Bericht_generieren_makiere_elemente_nach_vorgabe($Spalte = 0, $text = "")
	If _GUICtrlListView_GetItemCount($changelogenerieren_listview) = 0 Then Return
	For $y = 0 To _GUICtrlListView_GetItemCount($changelogenerieren_listview) - 1
		If StringInStr(_GUICtrlListView_GetItemText($changelogenerieren_listview, $y, $Spalte), $text) Or _GUICtrlListView_GetItemText($changelogenerieren_listview, $y, $Spalte) = $text Then
			_GUICtrlListView_SetItemChecked($changelogenerieren_listview, $y, True)
		Else
			_GUICtrlListView_SetItemChecked($changelogenerieren_listview, $y, False)
		EndIf
	Next
EndFunc   ;==>_Bericht_generieren_makiere_elemente_nach_vorgabe

Func _Bericht_generieren_versioncombo_select()
	_Bericht_generieren_makiere_elemente_nach_vorgabe(3, GUICtrlRead($berichtgenerieren_version_combo))
EndFunc   ;==>_Bericht_generieren_versioncombo_select

Func _Bericht_generieren_bearbeitercombo_select()
	_Bericht_generieren_makiere_elemente_nach_vorgabe(5, GUICtrlRead($berichtgenerieren_bearbeiter_combo))
EndFunc   ;==>_Bericht_generieren_bearbeitercombo_select

Func _Bericht_generieren_datum_select()
	$Datum_Array = _GUICtrlDTP_GetSystemTime(GUICtrlGetHandle($berichtgenerieren_datum))
	If IsArray($Datum_Array) Then
		If $Languagefile = "german.lng" Then
			_Bericht_generieren_makiere_elemente_nach_vorgabe(0, StringFormat("%02d.%02d.%04d", $Datum_Array[2], $Datum_Array[1], $Datum_Array[0]))
		Else
			_Bericht_generieren_makiere_elemente_nach_vorgabe(0, StringFormat("%04d/%02d/%02d", $Datum_Array[0], $Datum_Array[1], $Datum_Array[2]))
		EndIf
	EndIf
EndFunc   ;==>_Bericht_generieren_datum_select

Func _Bericht_generieren()
	GUICtrlSetData($berichtgenerieren_vorschaufenster, "")
	If _GUICtrlListView_GetItemCount($changelogenerieren_listview) = 0 Then Return
	$ISN_Datei = $Offenes_Projekt & "\project.isn"
	$Rohe_Vorlage = GUICtrlRead($berichtgenerieren_aufbauedit)
	$Rohe_Vorlage = StringReplace($Rohe_Vorlage, @CRLF, "[BREAK]")
	$Vorlage_Itemsbereich = ""
	$Fertiger_Itemsbereich = ""
	$Itemsbereich_Array = _StringBetween($Rohe_Vorlage, "<items>", "</items>")
	If IsArray($Itemsbereich_Array) Then
		$Vorlage_Itemsbereich = $Itemsbereich_Array[0]
		$Rohe_Vorlage = StringReplace($Rohe_Vorlage, $Itemsbereich_Array[0], "#ITEMSHERE#")

		For $y = 0 To _GUICtrlListView_GetItemCount($changelogenerieren_listview) - 1
			If _GUICtrlListView_GetItemChecked($changelogenerieren_listview, $y) = True Then
				$Section_ID = _GUICtrlListView_GetItemText($changelogenerieren_listview, $y, 6)
				$Bereich = $Vorlage_Itemsbereich
				$Bereich = StringReplace($Bereich, "%version%", _GUICtrlListView_GetItemText($changelogenerieren_listview, $y, 3))
				$Bereich = StringReplace($Bereich, "%id%", _GUICtrlListView_GetItemText($changelogenerieren_listview, $y, 6))
				$Bereich = StringReplace($Bereich, "%editor%", _GUICtrlListView_GetItemText($changelogenerieren_listview, $y, 5))
				$Bereich = StringReplace($Bereich, "%time%", _GUICtrlListView_GetItemText($changelogenerieren_listview, $y, 4))
				$Bereich = StringReplace($Bereich, "%date%", _GUICtrlListView_GetItemText($changelogenerieren_listview, $y, 0))
				$Bereich = StringReplace($Bereich, "%subject%", _GUICtrlListView_GetItemText($changelogenerieren_listview, $y, 1))
				$Bereich = StringReplace($Bereich, "%text%", IniRead($ISN_Datei, $Changelog_Section, "text[" & $Section_ID & "]", ""))
				$Fertiger_Itemsbereich = $Fertiger_Itemsbereich & $Bereich
			EndIf
		Next
	EndIf




	$Rohe_Vorlage = StringReplace($Rohe_Vorlage, "#ITEMSHERE#", $Fertiger_Itemsbereich)
	$Rohe_Vorlage = StringReplace($Rohe_Vorlage, "%projectname%", IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "name", ""))
	$Rohe_Vorlage = StringReplace($Rohe_Vorlage, "%studioversion%", $Studioversion)
	$Rohe_Vorlage = StringReplace($Rohe_Vorlage, "%projectversion%", IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "version", ""))


	$Rohe_Vorlage = StringReplace($Rohe_Vorlage, "<items>", "")
	$Rohe_Vorlage = StringReplace($Rohe_Vorlage, "</items>", "")
	$Rohe_Vorlage = StringReplace($Rohe_Vorlage, "[BREAK]", @CRLF)
	GUICtrlSetData($berichtgenerieren_vorschaufenster, $Rohe_Vorlage)
EndFunc   ;==>_Bericht_generieren


Func _Hole_Standardvorlage_fuer_bericht()
	$String = ""
	$String = $String & "%projectname% v. %projectversion% - " & _Get_langstr(939) & @CRLF
	$String = $String & "------------------------------------------------------------------" & @CRLF
	$String = $String & "<items>" & @CRLF
	$String = $String & "/////////////////////////////////////////" & @CRLF
	$String = $String & "///" & _Get_langstr(921) & " %date%" & @CRLF
	$String = $String & "///" & _Get_langstr(918) & " %subject%" & @CRLF
	$String = $String & "///" & _Get_langstr(920) & " %editor%" & @CRLF
	$String = $String & "/////////////////////////////////////////" & @CRLF
	$String = $String & "%text%" & @CRLF
	$String = $String & "</items>" & @CRLF
	$String = $String & "------------------------------------------------------------------" & @CRLF
	$String = $String & _Get_langstr(30) & " %studioversion%"
	Return $String
EndFunc   ;==>_Hole_Standardvorlage_fuer_bericht

Func _Bericht_generieren_speichern_unter()
	_Bericht_generieren()
	If GUICtrlRead($berichtgenerieren_vorschaufenster) = "" Then Return
	$line = FileSaveDialog(_Get_langstr(313), $Offenes_Projekt, "Textfile (*.txt)", 18, "report.txt", $changelog_generieren_GUI)
	FileChangeDir(@ScriptDir)
	If $line = "" Then Return
	If @error > 0 Then Return
	$file = FileOpen($line, 2)
	If $file = -1 Then Return
	FileWrite($file, GUICtrlRead($berichtgenerieren_vorschaufenster))
	FileClose($file)
	MsgBox(262144 + 64, _Get_langstr(61), StringTrimLeft($line, StringInStr($line, "\", 0, -1)) & " " & _Get_langstr(691), 0, $changelog_generieren_GUI)
	_Update_Treeview()
EndFunc   ;==>_Bericht_generieren_speichern_unter

Func _aenderungsprotokolle_exportieren()
	$ISN_Datei = $Offenes_Projekt & "\project.isn"
	$line = FileSaveDialog(_Get_langstr(313), $Offenes_Projekt, "INI File (*.ini)", 18, "export.ini", $aenderungs_manager_GUI)
	FileChangeDir(@ScriptDir)
	If $line = "" Then Return
	If @error > 0 Then Return

	$section = IniReadSection($ISN_Datei, $Changelog_Section)
	If @error > 0 Then Return
	IniWriteSection($line, $Changelog_Section, $section)
	MsgBox(262144 + 64, _Get_langstr(61), StringTrimLeft($line, StringInStr($line, "\", 0, -1)) & " " & _Get_langstr(691), 0, $aenderungs_manager_GUI)
	_Update_Treeview()
EndFunc   ;==>_aenderungsprotokolle_exportieren

Func _Bericht_zeige_hilfe()
	GUISetState(@SW_SHOW, $aenderungsbericht_hilfeGUI)
EndFunc   ;==>_Bericht_zeige_hilfe

Func _Bericht_verstecke_hilfe()
	GUISetState(@SW_HIDE, $aenderungsbericht_hilfeGUI)
EndFunc   ;==>_Bericht_verstecke_hilfe

Func _aenderungsprotokolle_importieren()
	$ISN_Datei = $Offenes_Projekt & "\project.isn"
	$Antwort = MsgBox(262144 + 4 + 48, _Get_langstr(394), _Get_langstr(949), 0, $aenderungs_manager_GUI)
	If $Antwort = 6 Then
		$line = FileOpenDialog(_Get_langstr(313), $Offenes_Projekt, "INI File (*.ini)", 3, "", $aenderungs_manager_GUI)
		FileChangeDir(@ScriptDir)
		If $line = "" Then Return
		If @error > 0 Then Return

		$section = IniReadSection($line, $Changelog_Section)
		If @error > 0 Then Return
		IniDelete($ISN_Datei, $Changelog_Section)
		IniWriteSection($ISN_Datei, $Changelog_Section, $section)
		_Zeige_changelogmanager()
		MsgBox(262144 + 64, _Get_langstr(61), _Get_langstr(591), 0, $aenderungs_manager_GUI)
	EndIf
EndFunc   ;==>_aenderungsprotokolle_importieren

Func _Neuen_Changelogeintrag_erstellen()
	$Project_ISN = $Offenes_Projekt & "\project.isn"
	$NewitemID = @MDAY & @MON & @YEAR & @HOUR & @MIN & @SEC & Random(0, 100, 1)
	$Items_String = IniRead($Offenes_Projekt & "\project.isn", $Changelog_Section, "items", "")
	$Items_String = $Items_String & $NewitemID & "|"
	IniWrite($Offenes_Projekt & "\project.isn", $Changelog_Section, "items", $Items_String)
	IniWrite($Offenes_Projekt & "\project.isn", $Changelog_Section, "text[" & $NewitemID & "]", "")
	IniWrite($Offenes_Projekt & "\project.isn", $Changelog_Section, "date[" & $NewitemID & "]", @YEAR & "/" & @MON & "/" & @MDAY)
	IniWrite($Offenes_Projekt & "\project.isn", $Changelog_Section, "editor[" & $NewitemID & "]", @UserName)
	IniWrite($Offenes_Projekt & "\project.isn", $Changelog_Section, "version[" & $NewitemID & "]", IniRead($Project_ISN, "ISNAUTOITSTUDIO", "version", ""))
	_Aenderungsmanager_Aktualisiere_Liste()
	If _GUICtrlListView_GetItemCount($changelogmanager_listview) = 0 Then Return
	For $y = 0 To _GUICtrlListView_GetItemCount($changelogmanager_listview) - 1
		$Section_ID = _GUICtrlListView_GetItemText($changelogmanager_listview, $y, 6)
		If $Section_ID = $NewitemID Then
			_GUICtrlListView_SetItemSelected($changelogmanager_listview, $y, True, True)
			ExitLoop
		EndIf
	Next
	_changelogmanager_lade_eintrag()
	GUICtrlSetState($changelogmanager_betreff_input, $GUI_FOCUS)
EndFunc   ;==>_Neuen_Changelogeintrag_erstellen


Func _ProcessSuspend($Process)
	$processid = ProcessExists($Process)
	If $processid Then
		$ai_Handle = DllCall("kernel32.dll", 'int', 'OpenProcess', 'int', 0x1f0fff, 'int', False, 'int', $processid)
		$i_sucess = DllCall("ntdll.dll", "int", "NtSuspendProcess", "int", $ai_Handle[0])
		DllCall('kernel32.dll', 'ptr', 'CloseHandle', 'ptr', $ai_Handle)
		If IsArray($i_sucess) Then
			Return 1
		Else
			SetError(1)
			Return 0
		EndIf
	Else
		SetError(2)
		Return 0
	EndIf
EndFunc   ;==>_ProcessSuspend

Func _ProcessResume($Process)
	$processid = ProcessExists($Process)
	If $processid Then
		$ai_Handle = DllCall("kernel32.dll", 'int', 'OpenProcess', 'int', 0x1f0fff, 'int', False, 'int', $processid)
		$i_sucess = DllCall("ntdll.dll", "int", "NtResumeProcess", "int", $ai_Handle[0])
		DllCall('kernel32.dll', 'ptr', 'CloseHandle', 'ptr', $ai_Handle)
		If IsArray($i_sucess) Then
			Return 1
		Else
			SetError(1)
			Return 0
		EndIf
	Else
		SetError(2)
		Return 0
	EndIf
EndFunc   ;==>_ProcessResume

;===============================================================================
;
; Function Name:    _FileInUse()
; Description:      Checks if file is in use
; Syntax.........: _FileInUse($sFilename, $iAccess = 1)
; Parameter(s):     $sFilename = File name
; Parameter(s):     $iAccess = 0 = GENERIC_READ - other apps can have file open in readonly mode
;                   $iAccess = 1 = GENERIC_READ|GENERIC_WRITE - exclusive access to file,
;                   fails if file open in readonly mode by app
; Return Value(s):  1 - file in use (@error contains system error code)
;                   0 - file not in use
;                   -1 dllcall error (@error contains dllcall error code)
; Author:           Siao
; Modified          rover - added some additional error handling, access mode
; Remarks           _WinAPI_CreateFile() WinAPI.au3
;===============================================================================
Func _FileInUse($sFilename, $iAccess = 0)
	If _IsDir($sFilename) Then Return 0
	Local $aRet, $hFile, $iError, $iDA
	Local Const $GENERIC_WRITE = 0x40000000
	Local Const $GENERIC_READ = 0x80000000
	Local Const $FILE_ATTRIBUTE_NORMAL = 0x80
	Local Const $OPEN_EXISTING = 3
	$iDA = $GENERIC_READ
	If BitAND($iAccess, 1) <> 0 Then $iDA = BitOR($GENERIC_READ, $GENERIC_WRITE)
	$aRet = DllCall("Kernel32.dll", "hwnd", "CreateFile", _
			"str", $sFilename, _ ;lpFileName
			"dword", $iDA, _ ;dwDesiredAccess
			"dword", 0x00000000, _ ;dwShareMode = DO NOT SHARE
			"dword", 0x00000000, _ ;lpSecurityAttributes = NULL
			"dword", $OPEN_EXISTING, _ ;dwCreationDisposition = OPEN_EXISTING
			"dword", $FILE_ATTRIBUTE_NORMAL, _ ;dwFlagsAndAttributes = FILE_ATTRIBUTE_NORMAL
			"hwnd", 0) ;hTemplateFile = NULL
	$iError = @error
	If @error Or IsArray($aRet) = 0 Then Return SetError($iError, 0, -1)
	$hFile = $aRet[0]
	If $hFile = -1 Then ;INVALID_HANDLE_VALUE = -1
		$aRet = DllCall("Kernel32.dll", "int", "GetLastError")
		;ERROR_SHARING_VIOLATION = 32 0x20
		;The process cannot access the file because it is being used by another process.
		If @error Or IsArray($aRet) = 0 Then Return SetError($iError, 0, 1)
		Return SetError($aRet[0], 0, 1)
	Else
		;close file handle
		DllCall("Kernel32.dll", "int", "CloseHandle", "hwnd", $hFile)
		Return SetError(@error, 0, 0)
	EndIf
EndFunc   ;==>_FileInUse

Func _Skriptbaum_Zeige_Einstellungen_Popup()
	_GUICtrlMenu_TrackPopupMenu($Skriptbaum_SetupMenu_Handle, $Studiofenster)
EndFunc   ;==>_Skriptbaum_Zeige_Einstellungen_Popup







; #FUNCTION# ====================================================================================================================
; Name ..........: _GUICtrlListView_CreateArray
; Description ...: Creates a 2-dimensional array from a listview.
; Syntax ........: _GUICtrlListView_CreateArray($hListView[, $sDelimeter = '|'])
; Parameters ....: $hListView           - Control ID/Handle to the control
;                  $sDelimeter          - [optional] One or more characters to use as delimiters (case sensitive). Default is '|'.
; Return values .: Success - The array returned is two-dimensional and is made up of the following:
;                                $aArray[0][0] = Number of rows
;                                $aArray[0][1] = Number of columns

;                                $aArray[1][0] = 1st row, 1st column
;                                $aArray[1][1] = 1st row, 2nd column
;                                $aArray[1][2] = 1st row, 3rd column
;                                $aArray[n][0] = nth row, 1st column
;                                $aArray[n][1] = nth row, 2nd column
;                                $aArray[n][2] = nth row, 3rd column
; Author ........: guinness
; Remarks .......: GUICtrlListView.au3 should be included.
; Example .......: Yes
; ===============================================================================================================================
Func _GUICtrlListView_CreateArray($hListView, $sDelimeter = '|')
	if _GUICtrlListView_GetItemCount($hListView) = 0 then return
	Local $iColumnCount = _GUICtrlListView_GetColumnCount($hListView), $iDim = 0, $iItemCount = _GUICtrlListView_GetItemCount($hListView)
	If $sDelimeter = Default Then
		$sDelimeter = '|'
	EndIf

	Local $aColumns = 0, $aReturn[$iItemCount][$iColumnCount]

	For $i = 0 To $iItemCount - 1
		For $j = 0 To $iColumnCount - 1
			$aReturn[$i][$j] = _GUICtrlListView_GetItemText($hListView, $i, $j)
		Next
	Next
	Return SetError(Number($aReturn[0][0] = 0), 0, $aReturn)
EndFunc   ;==>_GUICtrlListView_CreateArray



Func _Load_Plugins()
	FileDelete($Cachefile)
	Local $Liste_der_Erweiterten_Plugins = ""
	$Search = FileFindFirstFile($Pluginsdir & "\*.*")
	$Loaded_Plugins = 0
	If $Search = -1 Then
		Return
	EndIf
	$Count = 0
	$Type3_Plugins_Virtual_INI = _IniVirtual_Initial("") ;Type 3 Array leeren
	While 1
		$file = FileFindNextFile($Search)
		If @error Then ExitLoop
		If FileGetAttrib($Pluginsdir & "\" & $file) = "D" Then
			If FileExists($Pluginsdir & "\" & $file & "\plugin.ini") And IniRead($Pluginsdir & "\" & $file & "\plugin.ini", "plugin", "active", "0") = 1 Then

				;Sprache des ISN in die Plugin.ini übertragen
				IniWrite($Pluginsdir & "\" & $file & "\plugin.ini", "plugin", "language", $Languagefile)


				;Es handelt sich um ein Type 2 Plugin
				If IniRead($Pluginsdir & "\" & $file & "\plugin.ini", "plugin", "plugintype", "1") = 2 Then
					$Liste_der_Erweiterten_Plugins = $Liste_der_Erweiterten_Plugins & $Pluginsdir & "\" & $file & "\" & $file & ".exe" & "|"
				EndIf

				;Es handelt sich um ein Type 3 Plugin
				If IniRead($Pluginsdir & "\" & $file & "\plugin.ini", "plugin", "plugintype", "1") = 3 Then
					_Type3_Plugin_in_Virtuelle_INI_eintragen($Pluginsdir & "\" & $file, $Pluginsdir & "\" & $file & "\" & $file & ".exe")
					if IniRead($Pluginsdir & "\" & $file & "\plugin.ini", "plugin", "toolsmenudescription", "") <> "" then
						;Plugin ist im Tools Menü erwünscht
						$Liste_der_Erweiterten_Plugins = $Liste_der_Erweiterten_Plugins & $Pluginsdir & "\" & $file & "\" & $file & ".exe" & "|" ;Zusätzlich zu den Erweiterten hinzufügen
					endif
				EndIf


				;Dateitypen eintragen (Nur bei Type 1 und 2)
				$filetypes = IniRead($Pluginsdir & "\" & $file & "\plugin.ini", "plugin", "filetypes", "") & "|"
				$Loaded_Plugins = $Loaded_Plugins + 1
				If $filetypes <> "" And $filetypes <> "|" Then
					While StringLen($filetypes) > 0
						$Datei = StringTrimRight($filetypes, (StringLen($filetypes) - StringInStr($filetypes, "|")) + 1)
						IniWrite($Cachefile, $Datei, "program", $Pluginsdir & "\" & $file & "\" & $file & ".exe") ;Fals exe nicht gefunden wird, wird versucht die au3 zu starten
						$filetypes = StringTrimLeft($filetypes, StringInStr($filetypes, "|"))

					WEnd
				EndIf


			EndIf
		EndIf
	WEnd
	FileClose($Search)
;~ 	iniwrite($Cachefile, "advancedplugins", "plugins", $Liste_der_Erweiterten_Plugins)
	_Erweiterte_Plugins_Erstelle_Menue($Liste_der_Erweiterten_Plugins) ;Lade erweiterte Plugins

EndFunc   ;==>_Load_Plugins

Func _Erweiterte_Plugins_Erstelle_Menue($Liste = "")
	_GUICtrlODMenuItemDelete($Tools_menu_seperator)
	_GUICtrlODMenuItemDelete($Tools_menu_pluginitem1)
	_GUICtrlODMenuItemDelete($Tools_menu_pluginitem2)
	_GUICtrlODMenuItemDelete($Tools_menu_pluginitem3)
	_GUICtrlODMenuItemDelete($Tools_menu_pluginitem4)
	_GUICtrlODMenuItemDelete($Tools_menu_pluginitem5)
	$Tools_menu_pluginitem1 = ""
	$Tools_menu_pluginitem2 = ""
	$Tools_menu_pluginitem3 = ""
	$Tools_menu_pluginitem4 = ""
	$Tools_menu_pluginitem5 = ""
	$Tools_menu_pluginitem1_exe = ""
	$Tools_menu_pluginitem2_exe = ""
	$Tools_menu_pluginitem3_exe = ""
	$Tools_menu_pluginitem4_exe = ""
	$Tools_menu_pluginitem5_exe = ""
	If $Liste = "" Then Return
	$Erweiterte_Plugins_Pfade = StringSplit($Liste, "|", 2)
	If Not IsArray($Erweiterte_Plugins_Pfade) Then Return
	If UBound($Erweiterte_Plugins_Pfade) - 1 > 0 Then $Tools_menu_seperator = _GUICtrlCreateODMenuItem("", $ToolsMenu)
	For $x = 0 To UBound($Erweiterte_Plugins_Pfade) - 1
		If $x > 6 Then ExitLoop ;Nur max 7 Advanced Plugins (Zero based)
		If $Erweiterte_Plugins_Pfade[$x] = "|" Then ContinueLoop
		If $Erweiterte_Plugins_Pfade[$x] = "" Then ContinueLoop
		$pfad = StringTrimRight($Erweiterte_Plugins_Pfade[$x], StringLen($Erweiterte_Plugins_Pfade[$x]) - StringInStr($Erweiterte_Plugins_Pfade[$x], "\", 0, -1))
		Assign("Tools_menu_pluginitem" & Number($x + 1), _GUICtrlCreateODMenuItem(IniRead($pfad & "plugin.ini", "plugin", "toolsmenudescription", IniRead($pfad & "plugin.ini", "plugin", "name", _Get_langstr(962))), $ToolsMenu))
		Assign("Tools_menu_pluginitem" & Number($x + 1) & "_exe", $Erweiterte_Plugins_Pfade[$x])
		$icon = IniRead($pfad & "plugin.ini", "plugin", "toolsmenuiconid", "193")
		If StringInStr($icon, ".ico") Then
			_GUICtrlODMenuItemSetIcon(Execute("$Tools_menu_pluginitem" & Number($x + 1)), $pfad & $icon, 0)
		Else
			_GUICtrlODMenuItemSetIcon(Execute("$Tools_menu_pluginitem" & Number($x + 1)), $smallIconsdll, $icon)
		EndIf
	Next
EndFunc   ;==>_Erweiterte_Plugins_Erstelle_Menue

Func _WM_NOTIFY_EDITOR($hWnd, $iMsg, $iwParam, $ilParam)
	$tNMHDR = DllStructCreate($tagNMHDR, $ilParam)
	$iIDFrom = DllStructGetData($tNMHDR, "IDFrom")
	$iCode = DllStructGetData($tNMHDR, "Code")
	$nID = BitAND($iwParam, 0x0000FFFF)

	;Extraswitch für Listview Events (Parameter Editor)
	Switch $iCode
		Case $NM_CLICK
			If $nID = $ParameterEditor_ListView Then _Parameter_Editor_Listview_select_row()

	EndSwitch


	;-----------------------------------SCRIPTEDITOR
	Local $tagNMHDR, $event
	Local $structNMHDR = DllStructCreate("hwnd hWndFrom;int IDFrom;int Code", $ilParam) ; tagNMHDR
	Local $sClassName = DllCall("User32.dll", "int", "GetClassName", "hwnd", DllStructGetData($structNMHDR, 1), "str", "", "int", 512)

	$sClassName = $sClassName[2]

	If $sClassName <> "Scintilla" Then Return 'GUI_RUNDEFMSG'
	$structNMHDR = DllStructCreate($tagSCNotification, $ilParam)
	If @error Then Return 'GUI_RUNDEFMSG'

	Global $SCI_Zeile
	Local $hwndFrom = DllStructGetData($structNMHDR, 1)
	Local $idFrom = DllStructGetData($structNMHDR, 2)
	Local $event = DllStructGetData($structNMHDR, 3)
	Local $position = DllStructGetData($structNMHDR, 4)
	Local $ch = DllStructGetData($structNMHDR, 5)
	Local $modificationType = DllStructGetData($structNMHDR, 7)
	#cs
		Local $modifiers = DllStructGetData($structNMHDR, 6)

		Local $char = DllStructGetData($structNMHDR, 8)
		Local $length = DllStructGetData($structNMHDR, 9)
		Local $linesAdded = DllStructGetData($structNMHDR, 10)

		Local $message = DllStructGetData($structNMHDR, 11)
		Local $uptr_t = DllStructGetData($structNMHDR, 12)
		Local $sptr_t = DllStructGetData($structNMHDR, 13)
		Local $Line = DllStructGetData($structNMHDR, 14)

		Local $foldLevelNow = DllStructGetData($structNMHDR, 15)
		Local $foldLevelPrev = DllStructGetData($structNMHDR, 16)
		Local $margin = DllStructGetData($structNMHDR, 17)
		Local $listType = DllStructGetData($structNMHDR, 18)

		Local $X = DllStructGetData($structNMHDR, 19)
		Local $Y = DllStructGetData($structNMHDR, 20)
	#ce


	Local $Sci = $hwndFrom

	If Not IsHWnd($Sci) Then $Sci = HWnd($Sci)
;~ 	ConsoleWrite("lll" & _WinAPI_GetClassName($Sci) & @CRLF)
	Local $line_number = SendMessage($Sci, $SCI_LINEFROMPOSITION, $position, 0)

	;Current pos to statusbar
	$line = Sci_GetLineFromPos($Sci, Sci_GetCurrentPos($Sci))
	_GUICtrlStatusBar_SetText_ISN($Status_bar, "li=" & $line + 1 & " co=" & (Sci_GetCurrentPos($Sci) - Sci_GetLineStartPos($Sci, $line)) + 1)


	;falls sich aktuelle zeile ändert -> weg mit dem colourpicker
	If Sci_GetLineFromPos($Sci, Sci_GetCurrentPos($Sci)) <> $SCIE_letzte_zeile Then
		$farb_picker_GUIstate = WinGetState($mini_farb_picker_GUI, "")
		If BitAND($farb_picker_GUIstate, 2) Then _Colour_Calltipp_Set_State("hide")
	EndIf
	$SCIE_letzte_zeile = Sci_GetLineFromPos($Sci, Sci_GetCurrentPos($Sci))

	;Select
	;Case $hwndFrom = $Sci
	;If IsHWnd($Sci) Then
	Local $Word, $WordPos, $CurrentLine, $PreviousLine, $Tabs, $TabsAdd, $style, $CurrentPos, $pos, $Replace, $AllVariables, $AllVariablesSplit, $AllWords, $err, $Variable
	Switch $event

		Case $SCN_CALLTIPCLICK


			If SendMessage($Sci, $SCI_CALLTIPACTIVE, 0, 0) Then
				Switch $position

					Case 1
						If IsArray($SCI_sCallTipFoundIndices) And $SCI_sCallTipSelectedIndice > 0 Then
							$SCI_sCallTipSelectedIndice -= 1
							$SCI_sCallTip = Chr(1) & $SCI_sCallTipSelectedIndice + 1 & "/" & UBound($SCI_sCallTipFoundIndices) & Chr(2) & $SCI_sCallTip_Array[$SCI_sCallTipFoundIndices[$SCI_sCallTipSelectedIndice]]
							$SCI_sCallTip = StringRegExpReplace(StringReplace($SCI_sCallTip, ")", ")" & @LF, 1), "([.:])", "$1" & @LF)
							SendMessageString($Sci, $SCI_CALLTIPSHOW, $SCI_sCallTipPos, $SCI_sCallTip)
						EndIf

					Case 2
						If IsArray($SCI_sCallTipFoundIndices) And $SCI_sCallTipSelectedIndice < UBound($SCI_sCallTipFoundIndices) - 1 Then
							$SCI_sCallTipSelectedIndice += 1
							$SCI_sCallTip = Chr(1) & $SCI_sCallTipSelectedIndice + 1 & "/" & UBound($SCI_sCallTipFoundIndices) & Chr(2) & $SCI_sCallTip_Array[$SCI_sCallTipFoundIndices[$SCI_sCallTipSelectedIndice]]
							$SCI_sCallTip = StringRegExpReplace(StringReplace($SCI_sCallTip, ")", ")" & @LF, 1), "([.:])", "$1" & @LF)
							SendMessageString($Sci, $SCI_CALLTIPSHOW, $SCI_sCallTipPos, $SCI_sCallTip)
						EndIf
				EndSwitch
			EndIf

		Case $SCN_DOUBLECLICK

			if $Sci = $Debug_log then return
			$Selection = Sci_GetSelection($Sci)
			If IsArray($Selection) Then
				If Sci_GetChar($Sci, $Selection[0] - 1) = "$" Then
					Sci_SetSelection($Sci, $Selection[0] - 1, $Selection[1])
				EndIf
			EndIf

			If $SkriptEditor_Doppelklick_ParameterEditor = "true" Then
				$Aktuelles_Wort_Doppelclick = StringStripWS(SCI_GetTextRange($Sci, $Selection[0], $Selection[1]), 3)
				$Aktuelles_Wort_Doppelclick = StringReplace($Aktuelles_Wort_Doppelclick, "(", "")
				$Aktuelles_Wort_Doppelclick = StringReplace($Aktuelles_Wort_Doppelclick, ")", "")
				_Pruefe_Doppelklickwort_im_Skripteditor($Aktuelles_Wort_Doppelclick, $Selection[1])
			EndIf




		Case $SCN_CHARADDED


;~ 			$zuletzt_geschriebenes_wort = SCI_GetWordFromPos($Sci, SendMessage($Sci, $SCI_GETCURRENTPOS, 0, 0), 1)
;~ 			if $zuletzt_geschriebenes_wort = "GUICtrlSetBkColor(" Then
;~ 			$alte_sci_position = Sci_GetCurrentPos($Sci)
;~ 			Sci_AddLines($Sci, @crlf&"EndIf"&@crlf,Sci_GetCurrentLine($Sci)+1)
;~ 			Sci_SetCurrentPos($Sci, $alte_sci_position)
;~ 			endif

			Switch Chr($ch)


				Case "("
;~ 			If Chr($ch) = "(" Then

					;by isi360
					$linechecker = Sci_GetLine($Sci, Sci_GetCurrentLine($Sci) - 1)
					$linechecker = StringReplace($linechecker, " ", "")
					$linechecker = StringReplace($linechecker, @TAB, "")
					If StringInStr($linechecker, "=") Then $linechecker = ""
					$linechecker = StringTrimRight($linechecker, StringLen($linechecker) - 1)

					If $disableintelisense = "false" And $linechecker <> "$" Then
						Local $Ret, $sText, $iPos = SendMessage($Sci, $SCI_GETCURRENTPOS, 0, 0), $sFuncName
						Local $iLen = SendMessage($Sci, $SCI_GETCURLINE, 0, 0)
						$SCI_Zeile = Sci_GetLineFromPos($Sci, Sci_GetCurrentPos($Sci))
						Local $sBuf = DllStructCreate("byte[" & $iLen & "]")
						Local $Ret = DllCall($user32, "long", "SendMessageA", "long", $Sci, "int", $SCI_GETCURLINE, "int", $iLen, "ptr", DllStructGetPtr($sBuf))
						Local $current = $Ret[0]
						Local $startword = $current
						While $startword > 0 And StringIsAlNum(Chr(DllStructGetData($sBuf, 1, $startword - 1))) Or Chr(DllStructGetData($sBuf, 1, $startword - 1)) = "_"
							$startword -= 1
							$sFuncName = Chr(DllStructGetData($sBuf, 1, $startword)) & $sFuncName
						WEnd
;~ 						$sFuncName = _StringReverse($sFuncName)

						$SCI_sCallTipFoundIndices = ArraySearchAll($SCI_sCallTip_Array, $sFuncName, 0, 0, 1)
						$sBuf = 0
						$SCI_sCallTipSelectedIndice = 0
						$SCI_sCallTip = ""
						If IsArray($SCI_sCallTipFoundIndices) Then

							;$SCI_sCallTip = Chr(1) & "1/" & UBound($SCI_sCallTipFoundIndices) & Chr(2) & $SCI_sCallTip_Array[$SCI_sCallTipFoundIndices[0]]
							$SCI_sCallTip = $SCI_sCallTip_Array[$SCI_sCallTipFoundIndices[0]]

							$SCI_sCallTip = StringReplace(StringRegExpReplace(StringReplace($SCI_sCallTip, ")", ")" & @LF, 1), "(.{70,110} )", "$1" & @LF), @LF & @LF, @LF)

							$SCI_sCallTipPos = $iPos - StringLen($sFuncName)
							$SCIE_letzter_calltipp = $SCI_sCallTip
							$SCIE_letzte_pos = $SCI_sCallTipPos
							SendMessageString($Sci, $SCI_CALLTIPSHOW, $SCI_sCallTipPos, $SCI_sCallTip)
							$SCI_hlStart = StringInStr($SCI_sCallTip, "(")
							$SCI_hlEnd = StringInStr($SCI_sCallTip, ",")
							If $SCI_hlEnd = 0 Then $SCI_hlEnd = StringInStr($SCI_sCallTip, ")")
							SendMessage($Sci, $SCI_CALLTIPSETHLT, $SCI_hlStart, $SCI_hlEnd)
							Return
						EndIf
					EndIf

;~ 			ElseIf Chr($ch) = "," Then

				Case ","
					If SendMessage($Sci, $SCI_CALLTIPACTIVE, 0, 0) Then
						$SCI_hlStart = $SCI_hlEnd
						Local $iTemp = StringInStr(StringTrimLeft($SCI_sCallTip, $SCI_hlStart + 1), ",") + $SCI_hlStart
						If StringInStr(StringTrimLeft($SCI_sCallTip, $SCI_hlStart + 1), ")") + $SCI_hlStart < $iTemp Or $iTemp - $SCI_hlStart = 0 Then
							$SCI_hlEnd = StringInStr(StringTrimLeft($SCI_sCallTip, $SCI_hlStart + 1), ")") + $SCI_hlStart
						Else
							$SCI_hlEnd = $iTemp
						EndIf
						SendMessage($Sci, $SCI_CALLTIPSETHLT, $SCI_hlStart, $SCI_hlEnd)
					Else
						;by isi360
						If Sci_GetLineFromPos($Sci, Sci_GetCurrentPos($Sci)) <> $SCI_Zeile Then Return
						If $SCI_sCallTip = "" Then Return
						SendMessageString($Sci, $SCI_CALLTIPSHOW, $SCI_sCallTipPos, $SCI_sCallTip)
						$linee = Sci_GetLine($Sci, Sci_GetLineFromPos($Sci, Sci_GetCurrentPos($Sci)))
						StringReplace($linee, ",", "")
						$SCI_hlStart = StringInStr($SCI_sCallTip, ",", 0, @extended)
						Local $iTemp = StringInStr(StringTrimLeft($SCI_sCallTip, $SCI_hlStart + 1), ",") + $SCI_hlStart
						If StringInStr(StringTrimLeft($SCI_sCallTip, $SCI_hlStart + 1), ")") + $SCI_hlStart < $iTemp Or $iTemp - $SCI_hlStart = 0 Then
							$SCI_hlEnd = StringInStr(StringTrimLeft($SCI_sCallTip, $SCI_hlStart + 1), ")") + $SCI_hlStart
						Else
							$SCI_hlEnd = $iTemp
						EndIf
						SendMessage($Sci, $SCI_CALLTIPSETHLT, $SCI_hlStart, $SCI_hlEnd)
						;end

					EndIf

;~
;~ 			ElseIf Chr($ch) = ")" Then
				Case ")"
					_Colour_Calltipp_Set_State("hide")
;~ 					$SCI_sCallTip = ""
					If SendMessage($Sci, $SCI_CALLTIPACTIVE, 0, 0) Then SendMessage($Sci, $SCI_CALLTIPCANCEL, 0, 0)


;~ 			ElseIf Chr($ch) = @CR Then ; if: enter is pressed / new line created

				Case @LF
					_Colour_Calltipp_Set_State("hide")
					If $Sci = $ParameterEditor_SCIEditor Then

						$Old = Sci_GetText($ParameterEditor_SCIEditor)
						$Old = StringReplace($Old, @CRLF, "")
						$Old = StringReplace($Old, @LF, "")
						$Old = StringReplace($Old, @CR, "")
						Sci_SetText($ParameterEditor_SCIEditor, $Old)
						If _IsPressed("11", $user32) Then
							_Parameter_Editor_Parameter_hinzufuegen()
						EndIf
						Return
					EndIf

				Case @CR
					_Colour_Calltipp_Set_State("hide")
					If $Sci = $ParameterEditor_SCIEditor Then
						_Parameter_Editor_Listview_select_nextrow()
						Return
					EndIf


					$CurrentLine = SCI_GetCurrentLine($Sci)
					local $Indent = 0
					$PreviousLine = SCI_GetLine($Sci, $CurrentLine - 2)
					If $PreviousLine = "" Then Return

					;Tab Indent
					if StringInStr($PreviousLine, "then") OR StringInStr($PreviousLine, "while") OR StringInStr($PreviousLine, "func ") OR StringInStr($PreviousLine, "for ") OR StringInStr($PreviousLine, "select ") OR StringInStr($PreviousLine, "do") OR StringInStr($PreviousLine, "switch ") OR StringInStr($PreviousLine, "else") OR StringInStr($PreviousLine, "elseif") OR StringInStr($PreviousLine, "case") then $Indent = 1
					if StringInStr($PreviousLine, ";") then $Indent = 0
					if StringInStr($PreviousLine, "return") then $Indent = 0


					$TabsAdd = ""
					$Tabs = StringSplit($PreviousLine, @TAB)

					If $Tabs[0] > 1 Then
						For $i = 1 To $Tabs[0] - 1
							If Not $Tabs[$i] = "" Then ExitLoop
							$TabsAdd &= @TAB

						Next
					EndIf
					if $Indent = 1 then $TabsAdd = $TabsAdd & @TAB
					SCI_AddLines($Sci, $TabsAdd, $CurrentLine)





					$pos = Sci_GetLineStartPos($Sci, $CurrentLine - 1)
					If StringLen($TabsAdd) > 0 Then SCI_SetCurrentPos($Sci, $pos + StringLen($TabsAdd))


				Case " "
				  $CurrentPos = SCI_GetCurrentPos($Sci)

				  if $AutoEnd_Keywords = "true" OR $Auto_dollar_for_declarations = "true" then
				  $Letztes_Wort = SCI_GetWordFromPos($Sci,SCI_GetCurrentPos($Sci)-2)

				  $TabsAdd = ""
					$Tabs = StringSplit(SCI_GetLine($Sci, SCI_GetCurrentLine($Sci)-1), @TAB)
					 if IsArray($Tabs) then
					If $Tabs[0] > 1 Then
						For $i = 1 To $Tabs[0] - 1
							If Not $Tabs[$i] = "" Then ExitLoop
							$TabsAdd &= @TAB

						Next
					 EndIf
					 endif

if $AutoEnd_Keywords = "true" then
switch $Letztes_Wort

case "if"
SCI_AddLines($Sci, $TabsAdd&"EndIf"&@crlf, SCI_GetCurrentLine($Sci)+1)
SCI_SetCurrentPos($Sci, $CurrentPos)

case "while"
SCI_AddLines($Sci, $TabsAdd&"Wend"&@crlf, SCI_GetCurrentLine($Sci)+1)
SCI_SetCurrentPos($Sci, $CurrentPos)

case "for"
SCI_AddLines($Sci, $TabsAdd&"Next"&@crlf, SCI_GetCurrentLine($Sci)+1)
SCI_SetCurrentPos($Sci, $CurrentPos)

case "switch"
SCI_AddLines($Sci, $TabsAdd&"EndSwitch"&@crlf, SCI_GetCurrentLine($Sci)+1)
SCI_SetCurrentPos($Sci, $CurrentPos)

case "func"
SCI_AddLines($Sci, $TabsAdd&"EndFunc"&@crlf, SCI_GetCurrentLine($Sci)+1)
SCI_SetCurrentPos($Sci, $CurrentPos)

case "do"
SCI_AddLines($Sci, $TabsAdd&"Until"&@crlf, SCI_GetCurrentLine($Sci)+1)
SCI_SetCurrentPos($Sci, $CurrentPos)

EndSwitch
EndIf


if $Auto_dollar_for_declarations = "true" then
switch $Letztes_Wort

case "global"
Send ("$")

case "local"
Send ("$")

case "const"
Send ("$")

EndSwitch
EndIf


endif


					$style = SendMessage($Sci, $SCI_GETSTYLEAT, $CurrentPos - 2, 0)
					If $style = $SCE_AU3_EXPAND Then
						$WordPos = SCI_GetWordPositions($Sci, $CurrentPos - 2)
						$Replace = StringRegExp($SCI_ABBREVFILE, "(?:\n|\r|\A)" & SCI_GETTEXTRANGE($Sci, $WordPos[0], $WordPos[1]) & "=(.*)", 1)
						If Not @error Then
							$Replace = StringFormat(StringRegExpReplace($Replace[0], "\r|\n", ""))

							SCI_SetSelection($Sci, $WordPos[0], $WordPos[1] + 1)
							$WordPos[0] += StringInStr($Replace, "|", 1, 1) - 1
							If Not StringInStr($Replace, "|", 1, 1) Then $WordPos[0] = $WordPos[1] + 1
							SendMessageString($Sci, $SCI_REPLACESEL, 0, StringReplace($Replace, "|", "", 1))
							SCI_SetCurrentPos($Sci, $WordPos[0])

							;by isi360
							$linechecker = Sci_GetLine($Sci, Sci_GetCurrentLine($Sci) - 1)
							$linechecker = StringReplace($linechecker, " ", "")
							$linechecker = StringReplace($linechecker, @TAB, "")
							If StringInStr($linechecker, "=") Then $linechecker = ""
							$linechecker = StringTrimRight($linechecker, StringLen($linechecker) - 1)

							If $disableintelisense = "false" And $linechecker <> "$" Then
								Local $Ret, $sText, $iPos = SendMessage($Sci, $SCI_GETCURRENTPOS, 0, 0), $sFuncName
								Local $iLen = SendMessage($Sci, $SCI_GETCURLINE, 0, 0)
								Local $sBuf = DllStructCreate("byte[" & $iLen & "]")
								Local $Ret = DllCall($user32, "long", "SendMessageA", "long", $Sci, "int", $SCI_GETCURLINE, "int", $iLen, "ptr", DllStructGetPtr($sBuf))
								Local $current = $Ret[0]
								Local $startword = $current
								While $startword > 0 And StringIsAlNum(Chr(DllStructGetData($sBuf, 1, $startword - 1))) Or Chr(DllStructGetData($sBuf, 1, $startword - 1)) = "_"
									$startword -= 1
									$sFuncName = Chr(DllStructGetData($sBuf, 1, $startword)) & $sFuncName
								WEnd
;~ 						$sFuncName = _StringReverse($sFuncName)
								$SCI_sCallTipFoundIndices = ArraySearchAll($SCI_sCallTip_Array, $sFuncName, 0, 0, 1)
								$sBuf = 0
								$SCI_sCallTipSelectedIndice = 0
								$SCI_sCallTip = ""
								If IsArray($SCI_sCallTipFoundIndices) Then

									;$SCI_sCallTip = Chr(1) & "1/" & UBound($SCI_sCallTipFoundIndices) & Chr(2) & $SCI_sCallTip_Array[$SCI_sCallTipFoundIndices[0]]
									$SCI_sCallTip = $SCI_sCallTip_Array[$SCI_sCallTipFoundIndices[0]]

									$SCI_sCallTip = StringReplace(StringRegExpReplace(StringReplace($SCI_sCallTip, ")", ")" & @LF, 1), "(.{70,110} )", "$1" & @LF), @LF & @LF, @LF)

									$SCI_sCallTipPos = $iPos - StringLen($sFuncName)
									SendMessageString($Sci, $SCI_CALLTIPSHOW, $SCI_sCallTipPos, $SCI_sCallTip)

									$SCI_hlStart = StringInStr($SCI_sCallTip, "(")
									$SCI_hlEnd = StringInStr($SCI_sCallTip, ",")
									If $SCI_hlEnd = 0 Then $SCI_hlEnd = StringInStr($SCI_sCallTip, ")")
									SendMessage($Sci, $SCI_CALLTIPSETHLT, $SCI_hlStart, $SCI_hlEnd)
									Return
								EndIf
							EndIf

						EndIf
					EndIf
;~ 					ConsoleWrite(SCI_GetWordFromPos($Sci,SCI_GetCurrentPos($Sci)-2) & " - " & $style &":"& $SCE_AU3_EXPAND & @CRLF)
;~ 			Else
				Case Else
;~ 						#CS ; Uncomment this to add autocomplete for variables
					$style = SendMessage($Sci, $SCI_GETSTYLEAT, SCI_GetCurrentPos($Sci), 0)
					If Not SendMessage($Sci, $SCI_AUTOCACTIVE, 0, 0) And _
							$style <> $SCE_AU3_COMMENT And $style <> $SCE_AU3_COMMENTBLOCK _
							And $style <> $SCE_AU3_STRING And $style <> $SCE_AU3_SENT Then

						$Word = SCI_GetCurrentWordEx($Sci, 0, 1)
						While $Word And Not StringRegExp($Word, "\A([@$#_]|\w)")
							$Word = StringTrimLeft($Word, 1)
						WEnd
						While $Word And Not StringRegExp($Word, "([@$#_]|\w)\Z")
							$Word = StringTrimRight($Word, 1)
						WEnd

;~ 						ConsoleWrite($Word & @CRLF)
						If $Word And StringLeft($Word, 1) = "$" Then

							; Shows the filenames of all files in the current directory

							;AU3 Files

							;$AllWords = StringSplit($file, " []()-+*=/<>," & @CRLF & @TAB)
							;	$AllWords = StringSplit(SCI_GetText($Sci), " []()-+*=/<>," & @CRLF & @TAB)

							If $globalautocomplete = "true" Then
								$AllVariables = @CR
								Local $globale_variablen_einlesen_fortschritt = 0
								_GUICtrlStatusBar_SetText_ISN($Status_bar, StringReplace(_Get_langstr(747), "%1", $globale_variablen_einlesen_fortschritt))
								;_ArrayDisplay(StringSplit(SCI_GetText($Sci), " []()-+*=/<>," & @CRLF & @TAB))

								Dim $tmp_empty
								Dim $ALL_CODE
								Dim $tmp_CODE
								Dim $aRecords
								Local $str
								$str = ""
								$tmp_CODE = $tmp_empty

								If $globalautocomplete_current_script = "false" Then
									If $Studiomodus = 1 Then
;~ 										$FILES = _GetFileList($Offenes_Projekt, "*." & $Autoitextension)
										$files = _Skripteditor_hole_Inludes($Offenes_Projekt & "\" & IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "mainfile", "")) ;Hole Variablen aus au3 Dateien die in der Hauptdatei als Include gesetzt sind
									Else
										$files = StringSplit($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], @CRLF) ;Nur im aktuellen Skript suchen im Editormodus
									EndIf
								Else
									$files = StringSplit($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], @CRLF) ;Nur im aktuellen Skript suchen
								EndIf

								$AllVariables = ""
								For $x = 0 To UBound($files) - 1
									If FileExists($files[$x]) Then
										_FileReadToArray($files[$x], $tmp_CODE)
										$str = $str & _ArrayToString($tmp_CODE, @CRLF)
									EndIf
								Next


								$AllWords = $AllWords_empty
								$AllWords = StringSplit($str, " []()-+*=/\<>:&," & @CRLF & @TAB)

								$gefundene_elemente_array = _Scanne_array_nach_Variablen($AllWords, "$", 0, 0, 0, 1)
								$gefundene_elemente_array = __ArrayUnique($gefundene_elemente_array) ;Doppelte einträge aussortieren
								For $f = 0 To UBound($gefundene_elemente_array) - 1
									$gefundene_elemente_array[$f] = $gefundene_elemente_array[$f] & "?15"
								Next
								_ArraySort($gefundene_elemente_array, 0, 0)

								$AllVariables = _ArrayToString($gefundene_elemente_array, @CR)

								If $AllVariables = "" Then Return
								If $AllVariables = " " Then Return
								If $AllVariables = @CR Then Return

								SendMessageString($Sci, $SCI_AUTOCSHOW, StringLen($Word), $AllVariables)


							EndIf

						ElseIf StringLen($Word) Then

							;by isi360
							$linechecker = Sci_GetLine($Sci, Sci_GetCurrentLine($Sci) - 1)
							$linechecker = StringReplace($linechecker, " ", "")
							$linechecker = StringReplace($linechecker, @TAB, "")
							If StringInStr($linechecker, "=") Then $linechecker = ""
							$linechecker = StringTrimRight($linechecker, StringLen($linechecker) - 1)
							If $disableautocomplete = "false" And $linechecker <> "$" Then
;~ 								If Not SendMessage($Sci, $SCI_AUTOCACTIVE, 0,0) Then
;~ 							ConsoleWrite($Word & @CRLF)

								If StringRegExp($Word, "\A[A-Za-z0-9_@#]+\Z") Then ;And StringInStr(@CR & $SCI_AUTOCLIST,@CR & $Word,0) Then
									Local $pos = ArraySearchAll($SCI_AUTOCLIST, $Word, 1, 0, 1)

									If $pos = -1 Then Return 'GUI_RUNDEFMSG'
;~ 									_ArraySort($SCI_AUTOCLIST,0,1)
									$AllVariables = _ArrayToString($SCI_AUTOCLIST, @CR, $pos[0], $pos[UBound($pos) - 1])

;~ 									$AllVariables = _ArrayToString($SCI_AUTOCLIST, @CR,1)
;~ 										ConsoleWrite($AllVariables & @CRLF)
									$err = SendMessageString($Sci, $SCI_AUTOCSHOW, StringLen($Word), $AllVariables)
;~ 										ConsoleWrite($err & @CRLF)
								EndIf
;~ 								EndIf

							EndIf
						EndIf
					EndIf
;~ 						#CE
					;		EndIf
			EndSwitch

		Case $SCN_UPDATEUI
			$Automatische_Speicherung_eingabecounter = 0 ;Eingabecounter resetten
$SCI_Pos_vor_Enter = (Sci_GetCurrentPos($Sci) - Sci_GetLineStartPos($Sci, $line)) + 1
			;Für inteli Matches
			If SendMessage($Sci, $SCI_GETSELECTIONSTART, 0, 0) <> 0 And $verwende_intelimark = "true" Then
				$Selection = Sci_GetSelection($Sci)
				If IsArray($Selection) Then
					If($Selection[1] - $Selection[0] > 3) And($Selection[1] - $Selection[0] < 51) Then ;erst ab 3 wörtern suchen (max. 50 zeichen)
						Local $Suchwort = SCI_GetTextRange($Sci, $Selection[0], $Selection[1])
						If StringLen($Suchwort) < StringLen($letztes_Suchwort) Then
							$letztes_Suchwort = ""
						EndIf
						If $letztes_Suchwort <> $Suchwort Then
							SendMessage($Sci, $SCI_INDICATORCLEARRANGE, 0, Sci_GetLenght($Sci))
							$letztes_Suchwort = $Suchwort
							Local $Array_Gefundene_Elemente[1]
							$pos = 0
							For $zeile = 0 To Sci_GetLineCount($Sci)
								$Search = Sci_Search($Sci, $Suchwort, $pos)
								If $Search = -1 Then ExitLoop ;Nichts mehr gefunden
								If $Search <> -1 Then
									_ArrayAdd($Array_Gefundene_Elemente, $Search)
									$pos = $Search + 1
								EndIf
							Next
							_ArrayDelete($Array_Gefundene_Elemente, 0)
							SendMessage($Sci, $SCI_INDICSETSTYLE, 0, 8) ; Markierungsstyle
							$r = _ColorGetRed($scripteditor_highlightcolour)
							$g = _ColorGetGreen($scripteditor_highlightcolour)
							$B = _ColorGetBlue($scripteditor_highlightcolour)
							$bgclr = "0x" & Hex($B, 2) & Hex($g, 2) & Hex($r, 2)
							SendMessage($Sci, $SCI_INDICSETFORE, 0, $bgclr)

							For $x = 0 To UBound($Array_Gefundene_Elemente) - 1
								If $Array_Gefundene_Elemente[$x] = $Selection[0] Then ContinueLoop ;Makierung selbst überspringen
								SendMessage($Sci, $SCI_INDICATORFILLRANGE, $Array_Gefundene_Elemente[$x], StringLen($Suchwort))
							Next

						EndIf

					Else
						SendMessage($Sci, $SCI_INDICATORCLEARRANGE, 0, Sci_GetLenght($Sci))
						$letztes_Suchwort = ""
					EndIf
				Else
					SendMessage($Sci, $SCI_INDICATORCLEARRANGE, 0, Sci_GetLenght($Sci))
					$letztes_Suchwort = ""
				EndIf
			Else
				SendMessage($Sci, $SCI_INDICATORCLEARRANGE, 0, Sci_GetLenght($Sci))
				$letztes_Suchwort = ""
			EndIf



		Case $SCN_MODIFIED
			If(BitAND($modificationType, $SC_MOD_INSERTTEXT) Or BitAND($modificationType, $SC_MOD_DELETETEXT)) And $Parameter_Editor_Laedt_gerade_text = 0 Then
				If WinActive($ParameterEditor_GUI) And _GUICtrlListView_GetSelectionMark($ParameterEditor_ListView) <> -1 Then
					_GUICtrlListView_SetItemText($ParameterEditor_ListView, _GUICtrlListView_GetSelectionMark($ParameterEditor_ListView), StringReplace(Sci_GetText($ParameterEditor_SCIEditor), @CRLF, ""), 1)
					_Parameter_Editor_Aktualisiere_Vorschaulabel()
				EndIf
			EndIf


			If SendMessage($Sci, $SCI_CALLTIPACTIVE, 0, 0) Then

				;by isi360
				$linee = Sci_GetLine($Sci, Sci_GetLineFromPos($Sci, Sci_GetCurrentPos($Sci)))
;~ 				if stringinstr(StringTrimleft($linee,stringinstr($linee,",")),",") then $linee = StringTrimleft($linee,stringinstr($linee,","))

				$linee = StringTrimLeft($linee, StringInStr($linee, "(", 0, -1, Sci_GetCurrentPos($Sci) - Sci_GetLineStartPos($Sci, $linee)))
				StringReplace($linee, ",", "")

				$SCI_hlStart = StringInStr($SCI_sCallTip, ",", 0, @extended)
				Local $iTemp = StringInStr(StringTrimLeft($SCI_sCallTip, $SCI_hlStart + 1), ",") + $SCI_hlStart
				If StringInStr(StringTrimLeft($SCI_sCallTip, $SCI_hlStart + 1), ")") + $SCI_hlStart < $iTemp Or $iTemp - $SCI_hlStart = 0 Then
					$SCI_hlEnd = StringInStr(StringTrimLeft($SCI_sCallTip, $SCI_hlStart + 1), ")") + $SCI_hlStart
				Else
					$SCI_hlEnd = $iTemp
				EndIf

				SendMessage($Sci, $SCI_CALLTIPSETHLT, $SCI_hlStart, $SCI_hlEnd)

				$selected_calltip_text = StringTrimRight($SCI_sCallTip, StringLen($SCI_sCallTip) - $SCI_hlEnd)
				$selected_calltip_text = StringTrimLeft($selected_calltip_text, $SCI_hlStart)
				If StringInStr($selected_calltip_text, "(") Then $selected_calltip_text = StringTrimLeft($selected_calltip_text, StringInStr($selected_calltip_text, "("))
				If Not StringInStr($selected_calltip_text, "(") And Not StringInStr($selected_calltip_text, ",") And(StringInStr($selected_calltip_text, "color") Or StringInStr($selected_calltip_text, "colour") Or StringInStr($selected_calltip_text, "background")) Then
					_Colour_Calltipp_Set_State("show")
				Else
					$farb_picker_GUIstate = WinGetState($mini_farb_picker_GUI, "")
					If BitAND($farb_picker_GUIstate, 2) Then _Colour_Calltipp_Set_State("hide")
				EndIf

			EndIf

		Case $SCN_MARGINCLICK
			SendMessage($Sci, $SCI_TOGGLEFOLD, $line_number, 0)

		Case $SCN_SAVEPOINTREACHED

		Case $SCN_SAVEPOINTLEFT

	EndSwitch


	;EndIf
	;EndSelect
	$structNMHDR = 0
	$event = 0
	$lParam = 0
EndFunc   ;==>_WM_NOTIFY_EDITOR

;########################### NOTIF´s für den Projektbaum ###########################

Func _Projecttree_event($hWnd, $iMsg, $sPath, $hItem)
	Switch $iMsg
		Case $TV_NOTIFY_BEGINUPDATE
			GUISetCursor(1, 0, $Studiofenster)
		Case $TV_NOTIFY_ENDUPDATE
			GUISetCursor(2, 0, $Studiofenster)
		Case $TV_NOTIFY_SELCHANGED
			; Nothing
		Case $TV_NOTIFY_DBLCLK
			If _GUICtrlTreeView_GetSelection($hTreeview) = 0 Then Return
			If StringInStr(_GUICtrlTreeView_GetTree($hTreeview, _GUICtrlTreeView_GetSelection($hTreeview)), ".", 1, -1) = 0 Then Return
			Try_to_opten_file(_GUICtrlTVExplorer_GetSelected($hWndTreeview))

		Case $TV_NOTIFY_RCLICK
			If $hWnd <> $hWndTreeview Then Return ;Rechtsklick nur im Projektbaum!
			;Prüfe was eigentlich markiert wurde
			GUICtrlSetState($TreeviewContextMenu_Item1, $GUI_ENABLE)
			GUICtrlSetState($TreeviewContextMenu_Item2, $GUI_ENABLE)
			GUICtrlSetState($TreeviewContextMenu_Item3, $GUI_ENABLE)
			GUICtrlSetState($TreeviewContextMenu_Item4, $GUI_ENABLE)
			GUICtrlSetState($TreeviewContextMenu_Item7, $GUI_ENABLE)
			GUICtrlSetState($TreeviewContextMenu_Item10, $GUI_ENABLE)
			GUICtrlSetState($TreeviewContextMenu_Item5, $GUI_ENABLE)
			GUICtrlSetState($TreeviewContextMenu_Item_Kompilieren, $GUI_DISABLE)
			GUICtrlSetState($TreeviewContextMenu_Item_Jetzt_Kompilieren, $GUI_DISABLE)
			GUICtrlSetState($TreeviewContextMenu_Item_Makro_kompilieren_neu, $GUI_DISABLE)
			GUICtrlSetState($TreeviewContextMenu_Item_Makro_kompilieren_bestehend, $GUI_DISABLE)

			If $Offenes_Projekt = $Projectfolder & "\" & _GUICtrlTreeView_GetTree($hTreeview, _GUICtrlTreeView_GetSelection($hTreeview)) Then
				GUICtrlSetState($TreeviewContextMenu_Item1, $GUI_DISABLE)
				GUICtrlSetState($TreeviewContextMenu_Item3, $GUI_DISABLE)
				GUICtrlSetState($TreeviewContextMenu_Item4, $GUI_DISABLE)
				GUICtrlSetState($TreeviewContextMenu_Item7, $GUI_DISABLE)
				GUICtrlSetState($TreeviewContextMenu_Item10, $GUI_DISABLE)
			EndIf


			If StringInStr(_GUICtrlTVExplorer_GetSelected($hWndTreeview), "." & $Autoitextension) And Not _IsDir(_GUICtrlTVExplorer_GetSelected($hWndTreeview)) Then ;Für Au3 Dateien
				GUICtrlSetState($TreeviewContextMenu_Item_Kompilieren, $GUI_ENABLE)
				GUICtrlSetState($TreeviewContextMenu_Item_Jetzt_Kompilieren, $GUI_ENABLE)
				GUICtrlSetState($TreeviewContextMenu_Item_Makro_kompilieren_neu, $GUI_ENABLE)
				GUICtrlSetState($TreeviewContextMenu_Item_Makro_kompilieren_bestehend, $GUI_ENABLE)

			EndIf

			If _WinAPI_PathIsRoot(_GUICtrlTVExplorer_GetSelected($hWndTreeview)) Or(_GUICtrlTVExplorer_GetSelected($hWndTreeview) == @MyDocumentsDir Or _GUICtrlTVExplorer_GetSelected($hWndTreeview) == @DesktopDir Or _GUICtrlTVExplorer_GetSelected($hWndTreeview) == $Projectfolder) Then
				GUICtrlSetState($TreeviewContextMenu_Item1, $GUI_DISABLE)
				GUICtrlSetState($TreeviewContextMenu_Item2, $GUI_DISABLE)
				GUICtrlSetState($TreeviewContextMenu_Item3, $GUI_DISABLE)
				GUICtrlSetState($TreeviewContextMenu_Item4, $GUI_DISABLE)
				GUICtrlSetState($TreeviewContextMenu_Item7, $GUI_DISABLE)
				GUICtrlSetState($TreeviewContextMenu_Item10, $GUI_DISABLE)
			EndIf
			If _GUICtrlTVExplorer_GetSelected($hWndTreeview) == @DesktopDir Then GUICtrlSetState($TreeviewContextMenu_Item5, $GUI_DISABLE)


;~ _GUICtrlMenu_TrackPopupMenu(GUICtrlGetHandle($TreeviewContextMenu), $studiofenster);, $aRet[0], $aRet[1], 1, 1, 2)
			Show_KontextMenu($Studiofenster, $TreeviewContextMenu) ;Zeige Contextmenü für den Projektbaum
			; Nothing
		Case $TV_NOTIFY_VERIFY
			If $hWnd = $Weitere_Dateien_Kompilieren_GUI_hTreeview Then _Weitere_Dateien_Kompilieren_Treeview_Event()

		Case $TV_NOTIFY_DELETINGITEM
			; Nothing
		Case $TV_NOTIFY_DISKMOUNTED
			; Nothing
		Case $TV_NOTIFY_DISKUNMOUNTED
			; Nothing
	EndSwitch
EndFunc   ;==>_Projecttree_event

Func _WM_NOTIFY($hWnd, $iMsg, $iwParam, $ilParam)
	_WM_NOTIFY_EDITOR($hWnd, $iMsg, $iwParam, $ilParam) ;Versuche zuerst NOTIFY´s für das Scintilla Control
	$nID = BitAND($iwParam, 0x0000FFFF) ;für Alle ;)

	;########################### NOTIF´s für den TAB ###########################
	Local $hWndtabView, $tNMHDR, $hwndFrom, $iCode
	$hWndtabView = $htab
	If Not IsHWnd($hWndtabView) Then $hWndtabView = GUICtrlGetHandle($hWndtabView)
	$tNMHDR = DllStructCreate($tagNMHDR, $ilParam)
	$hwndFrom = HWnd(DllStructGetData($tNMHDR, "hWndFrom"))
	$iCode = DllStructGetData($tNMHDR, "Code")
	Switch $hwndFrom
		Case $hWndtabView
			Switch $iCode
				Case $NM_RCLICK
					Local $tPOINT = _WinAPI_GetMousePos(True, $hwndFrom)
					Local $iX = DllStructGetData($tPOINT, "X")
					Local $iY = DllStructGetData($tPOINT, "Y")
					Local $hItem = _GUICtrlTab_HitTest($hwndFrom, $iX, $iY)
					If $hItem <> 0 Then
						If $hItem[0] = _GUICtrlTab_GetCurFocus($htab) Then Return
						_GUICtrlTab_ActivateTabX($htab, $hItem[0])
						_Show_Tab($hItem[0])
					EndIf
			EndSwitch
	EndSwitch

	;########################### NOTIF´s für diverse Listviews (Startupscreen,Einstellungen...) ###########################
	$tNMHDR = DllStructCreate($tagNMHDR, $ilParam)
	$hwndFrom = HWnd(DllStructGetData($tNMHDR, "hWndFrom"))
	$iIDFrom = DllStructGetData($tNMHDR, "IDFrom")
	$iCode = DllStructGetData($tNMHDR, "Code")

	Switch $iCode

		Case $LVN_KEYDOWN
			If _IsPressed("26", $user32) Or _IsPressed("28", $user32) Then
				If $nID = $changelogmanager_listview Then AdlibRegister("_changelogmanager_lade_eintrag", 0)
				If $nID = $Projects_Listview_projectman Then AdlibRegister("_Load_Details_Manager", 0)
				If $nID = $Pugins_Listview Then AdlibRegister("_load_plugindetails", 0)
				If $nID = $config_skin_list Then AdlibRegister("_load_skindetails", 0)
			EndIf





		Case $NM_CLICK
			If $nID = $config_selectorlist Then
				AdlibRegister("_select_settingscategory", 0)
				Return
			 EndIf
			If $nID = $projekteinstellungen_navigation Then
				AdlibRegister("_Projekteinstellungen_Navigation_Event", 0)
				Return
			EndIf
			If $nID = $listview_projectrules Then _load_ruledetails()
			If $nID = $Pugins_Listview Then _load_plugindetails()
			If $nID = $config_skin_list Then _load_skindetails()
			If $nID = $Projects_Listview_projectman Then _Load_Details_Manager()
			If $nID = $changelogmanager_listview Then _changelogmanager_lade_eintrag()
			If $nID = $FuncListview Then GUICtrlSetData($Funcinput, _GUICtrlListView_GetItemText($FuncListview, _GUICtrlListView_GetSelectionMark($FuncListview), 0))


		Case $NM_DBLCLK
			If $nID = $Projects_Listview Then _Try_to_Open_project()
			If $nID = $new_rule_triggerlist Then _edit_trigger()
			If $nID = $listview_projectrules Then _Editiere_Regel()
			If $nID = $makro_auswaehlen_listview Then _AU3_mit_vorhandenen_Makro_kompilieren_Makro_auswaehlen()
			If $nID = $Projects_Listview_projectman Then _Try_to_Open_projectman()
			If $nID = $vorlagen_Listview_projectman Then _Try_to_Open_template()
			If $nID = $new_rule_actionlist Then _edit_action()
			If $nID = $settings_hotkeylistview Then _show_Edit_Hotkey()
			If $nID = $einstellungen_toolbar_verfuegbareelemente_listview Then _Einstellungen_Toolbar_Eintrag_hinzufuegen()
			If $nID = $einstellungen_toolbar_aktiveelemente_listview Then _Einstellungen_Toolbar_entferne_Eintrag()
			If $nID = $FuncListview Then
				GUICtrlSetData($Funcinput, _GUICtrlListView_GetItemText($FuncListview, _GUICtrlListView_GetSelectionMark($FuncListview), 0))
				_func_select_ok()
			EndIf

		Case $LVN_COLUMNCLICK ; A column was clicked
			$tInfo = DllStructCreate($tagNMLISTVIEW, $ilParam)
			$iColumnIndex = DllStructGetData($tInfo, "SubItem")
			If $nID = $Projects_Listview Then _HeaderSort($Projects_Listview, $iColumnIndex)
			If $nID = $Projects_Listview_projectman Then _HeaderSort($Projects_Listview_projectman, $iColumnIndex)
			If $nID = $vorlagen_Listview_projectman Then _HeaderSort($vorlagen_Listview_projectman, $iColumnIndex)
			If $nID = $FuncListview Then _HeaderSort($FuncListview, $iColumnIndex)

		Case $NM_RCLICK

			$tPOINT = _WinAPI_GetMousePos(True, $Studiofenster)
			Local $iX = DllStructGetData($tPOINT, "X")
			Local $iY = DllStructGetData($tPOINT, "Y")

			Local $aPos = ControlGetPos($Studiofenster, "", $htab)

			Local $aHit = _GUICtrlTab_HitTest($htab, $iX - $aPos[0], $iY - $aPos[1])
			If $aHit[0] <> -1 And _GUICtrlTab_GetCurFocus($htab) <> -1 Then _GUICtrlTab_SetCurSel($htab, _GUICtrlTab_GetCurFocus($htab))
			If _GUICtrlTab_GetCurFocus($htab) = -1 And _GUICtrlTab_GetItemCount($htab) > 0 Then
				_GUICtrlTab_SetCurSel($htab, 0)
				_Show_Tab(0)
			EndIf

	EndSwitch

	;########################### NOTIF´s für die Toolbar (Dropdown zb. für Dropdownmenüs) ###########################
	$tNMHDR = DllStructCreate($tagNMHDR, $ilParam)
	$hwndFrom = DllStructGetData($tNMHDR, "hWndFrom")
	$idFrom = DllStructGetData($tNMHDR, "IDFrom")
	$code = DllStructGetData($tNMHDR, "Code")

	Switch $hwndFrom
		Case $hToolbar
			Switch $code
				Case $TBN_DROPDOWN

					$hMenu = _GUICtrlMenu_CreatePopup()
					Switch $iItem
						Case $id1
							_GUICtrlMenu_AddMenuItem($hMenu, _Get_langstr(154), $Toolbarmenu1)
							_GUICtrlMenu_SetItemBmp($hMenu, 0, _CreateBitmapFromIcon(_WinAPI_GetSysColor(4), $smallIconsdll, 1788, 16, 16))
							_GUICtrlMenu_AddMenuItem($hMenu, _Get_langstr(1094), $Kontextmenu_tempau3file)
							_GUICtrlMenu_SetItemBmp($hMenu, 1, _CreateBitmapFromIcon(_WinAPI_GetSysColor(4), $smallIconsdll, 1788, 16, 16))
							If $Studiomodus = 1 Then
							   _GUICtrlMenu_SetItemGrayed($hMenu, 1, False)
							Else
							   _GUICtrlMenu_SetItemGrayed($hMenu, 1, True)
						   Endif
							_GUICtrlMenu_AddMenuItem($hMenu, _Get_langstr(153), $Toolbarmenu2)
							_GUICtrlMenu_SetItemBmp($hMenu, 2, _CreateBitmapFromIcon(_WinAPI_GetSysColor(4), $smallIconsdll, 780, 16, 16))
;~ 							_GUICtrlMenu_SetItemBmp($hMenu, 1, _WinAPI_Create32BitHBITMAP(_WinAPI_ShellExtractIcon($smallIconsdll, 780, 16, 16), 1, 1))
							_GUICtrlMenu_AddMenuItem($hMenu, _Get_langstr(155), $Toolbarmenu3)
							_GUICtrlMenu_SetItemBmp($hMenu, 3, _CreateBitmapFromIcon(_WinAPI_GetSysColor(4), $smallIconsdll, 1176, 16, 16))
;~ 							_GUICtrlMenu_SetItemBmp($hMenu, 2, _WinAPI_Create32BitHBITMAP(_WinAPI_ShellExtractIcon($smallIconsdll, 1176, 16, 16), 1, 1))
							_GUICtrlMenu_AddMenuItem($hMenu, _Get_langstr(156), $Toolbarmenu4)
;~ 							_GUICtrlMenu_SetItemBmp($hMenu, 3, _WinAPI_Create32BitHBITMAP(_WinAPI_ShellExtractIcon($smallIconsdll, 1177, 16, 16), 1, 1))
							_GUICtrlMenu_SetItemBmp($hMenu, 4, _CreateBitmapFromIcon(_WinAPI_GetSysColor(4), $smallIconsdll, 1177, 16, 16))

						Case $id7
							If $Studiomodus = 1 Then
								_GUICtrlMenu_AddMenuItem($hMenu, _Get_langstr(50) & @TAB & _Keycode_zu_Text($Hotkey_Keycode_Testprojekt), $Toolbarmenu_project1)
								_GUICtrlMenu_SetItemGrayed($hMenu, 0, False)
							Else
								_GUICtrlMenu_AddMenuItem($hMenu, _Get_langstr(668) & @TAB & _Keycode_zu_Text($Hotkey_Keycode_Testprojekt), $Toolbarmenu_project1)
								_GUICtrlMenu_SetItemGrayed($hMenu, 0, True)
								If Not _GUICtrlTab_GetItemCount($htab) = 0 Then
									If StringTrimLeft($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], StringInStr($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], ".", 0, -1)) = $Autoitextension Then
										_GUICtrlMenu_SetItemGrayed($hMenu, 0, False)
									EndIf
								EndIf
							EndIf
							_GUICtrlMenu_SetItemBmp($hMenu, 0, _CreateBitmapFromIcon(_WinAPI_GetSysColor(4), $smallIconsdll, 220, 16, 16))
;~ 							_GUICtrlMenu_SetItemBmp($hMenu, 0, _WinAPI_Create32BitHBITMAP(_WinAPI_ShellExtractIcon($smallIconsdll, 220, 16, 16), 1, 1))
							If $Studiomodus = 1 Then
								_GUICtrlMenu_AddMenuItem($hMenu, _Get_langstr(488) & @TAB & _Keycode_zu_Text($Hotkey_Keycode_Testprojekt_ohne_Parameter), $Toolbarmenu_project2)
								_GUICtrlMenu_SetItemGrayed($hMenu, 1, False)
							Else
								_GUICtrlMenu_AddMenuItem($hMenu, _Get_langstr(669) & @TAB & _Keycode_zu_Text($Hotkey_Keycode_Testprojekt_ohne_Parameter), $Toolbarmenu_project2)
								_GUICtrlMenu_SetItemGrayed($hMenu, 1, True)
								If Not _GUICtrlTab_GetItemCount($htab) = 0 Then
									If StringTrimLeft($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], StringInStr($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], ".", 0, -1)) = $Autoitextension Then
										_GUICtrlMenu_SetItemGrayed($hMenu, 1, False)
									EndIf
								EndIf
							EndIf
							_GUICtrlMenu_SetItemBmp($hMenu, 1, _CreateBitmapFromIcon(_WinAPI_GetSysColor(4), $smallIconsdll, 220, 16, 16))
;~ 							_GUICtrlMenu_SetItemBmp($hMenu, 1, _WinAPI_Create32BitHBITMAP(_WinAPI_ShellExtractIcon($smallIconsdll, 220, 16, 16), 1, 1))
							_GUICtrlMenu_AddMenuItem($hMenu, "")
							_GUICtrlMenu_AddMenuItem($hMenu, _Get_langstr(490), $Toolbarmenu_project3)
							_GUICtrlMenu_SetItemBmp($hMenu, 3, _CreateBitmapFromIcon(_WinAPI_GetSysColor(4), $smallIconsdll, 1376, 16, 16))
;~ 							_GUICtrlMenu_SetItemBmp($hMenu, 3, _WinAPI_Create32BitHBITMAP(_WinAPI_ShellExtractIcon($smallIconsdll, 1376, 16, 16), 1, 1))

						Case $id8
							$str = ""
							If $Studiomodus = 1 Then
								$str = _Get_langstr(52)
							Else
								$str = _Get_langstr(601)
							EndIf
							_GUICtrlMenu_AddMenuItem($hMenu, $str & @TAB & _Keycode_zu_Text($Hotkey_Keycode_compile), $Toolbarmenu_compile1)
							_GUICtrlMenu_SetItemBmp($hMenu, 0, _CreateBitmapFromIcon(_WinAPI_GetSysColor(4), $smallIconsdll, 527, 16, 16))
							_GUICtrlMenu_SetItemGrayed($hMenu, 0, True)
;~ 							_GUICtrlMenu_SetItemBmp($hMenu, 0, _WinAPI_Create32BitHBITMAP(_WinAPI_ShellExtractIcon($smallIconsdll, 527, 16, 16), 1, 1))
							_GUICtrlMenu_AddMenuItem($hMenu, _Get_langstr(1063), $Toolbarmenu_compile_daten_waehlen)
							_GUICtrlMenu_SetItemBmp($hMenu, 1, _CreateBitmapFromIcon(_WinAPI_GetSysColor(4), $smallIconsdll, 529, 16, 16))
							_GUICtrlMenu_SetItemGrayed($hMenu, 1, True)

							_GUICtrlMenu_AddMenuItem($hMenu, _Get_langstr(563) & @TAB & _Keycode_zu_Text($Hotkey_Keycode_compile_Settings), $Toolbarmenu_compile2)
							_GUICtrlMenu_SetItemBmp($hMenu, 2, _CreateBitmapFromIcon(_WinAPI_GetSysColor(4), $smallIconsdll, 529, 16, 16))
							_GUICtrlMenu_SetItemGrayed($hMenu, 2, True)
;~ 							_GUICtrlMenu_SetItemBmp($hMenu, 1, _WinAPI_Create32BitHBITMAP(_WinAPI_ShellExtractIcon($smallIconsdll, 529, 16, 16), 1, 1))
							If $Studiomodus = 1 Then
								_GUICtrlMenu_SetItemGrayed($hMenu, 0, False)
								_GUICtrlMenu_SetItemGrayed($hMenu, 1, False)
								_GUICtrlMenu_SetItemGrayed($hMenu, 2, False)
							EndIf
							If $Studiomodus = 2 And _GUICtrlTab_GetItemCount($htab) <> 0 Then
								If StringTrimLeft($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], StringInStr($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], ".", 0, -1)) = $Autoitextension Then
									_GUICtrlMenu_SetItemGrayed($hMenu, 0, False)
									_GUICtrlMenu_SetItemGrayed($hMenu, 1, true)
									_GUICtrlMenu_SetItemGrayed($hMenu, 2, False)
								EndIf
							EndIf

					EndSwitch
					$aRet = _GetToolbarButtonScreenPos($Studiofenster, $hToolbar, $iItem, 2)
					If Not IsArray($aRet) Then
						Dim $aRet[2] = [-1, -1]
					EndIf

					; send button dropdown menu item commandID to dummy control for use in GuiGetMsg() or GUICtrlSetOnEvent()
					; allows quick return from message handler : See warning for GUIRegisterMsg() in helpfile
					$iMenuID = _GUICtrlMenu_TrackPopupMenu($hMenu, $hToolbar, $aRet[0], $aRet[1], 1, 1, 2)
					If $iMenuID = $Toolbarmenu1 Then _Show_new_Filgui_au3()
					If $iMenuID = $Kontextmenu_tempau3file Then _erstelle_neues_temporaeres_skript()
					If $iMenuID = $Toolbarmenu2 Then _Show_new_Filgui_isf()
					If $iMenuID = $Toolbarmenu3 Then _Show_new_Filgui_ini()
					If $iMenuID = $Toolbarmenu4 Then _Show_new_Filgui_txt()

					If $iMenuID = $Toolbarmenu_project1 Then
						If $Studiomodus = 1 Then
							_Testscript($Offenes_Projekt & "\" & IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "mainfile", "#ERROR#"))
						Else
							If _GUICtrlTab_GetItemCount($htab) = 0 Then Return
							If StringTrimLeft($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], StringInStr($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], ".", 0, -1)) = $Autoitextension Then _Testscript($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)])
						EndIf
					EndIf
					If $iMenuID = $Toolbarmenu_project2 Then
						If $Studiomodus = 1 Then
							_Testscript($Offenes_Projekt & "\" & IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "mainfile", "#ERROR#"), 1)
						Else
							If _GUICtrlTab_GetItemCount($htab) = 0 Then Return
							If StringTrimLeft($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], StringInStr($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], ".", 0, -1)) = $Autoitextension Then _Testscript($Datei_pfad[_GUICtrlTab_GetCurFocus($htab)], 1)
						EndIf

					EndIf

					If $iMenuID = $Toolbarmenu_project3 Then _Show_Parameterconfig()

					If $iMenuID = $Toolbarmenu_compile1 Then _Start_Compiling()
					If $iMenuID = $Toolbarmenu_compile2 Then _Show_Compile()
					If $iMenuID = $Toolbarmenu_compile_daten_waehlen Then _Weitere_Dateien_zum_Kompilieren_waehlen()
					_GUICtrlMenu_DestroyMenu($hMenu)
					;If $iMenuID Then Return $TBDDRET_TREATPRESSED
					Return $TBDDRET_DEFAULT

				Case $TBN_HOTITEMCHANGE
					$tNMTBHOTITEM = DllStructCreate($tagNMTBHOTITEM, $ilParam)
					$i_idOld = DllStructGetData($tNMTBHOTITEM, "idOld")
					$i_idNew = DllStructGetData($tNMTBHOTITEM, "idNew")
					$iItem = $i_idNew
					$dwFlags = DllStructGetData($tNMTBHOTITEM, "dwFlags")

			EndSwitch
	EndSwitch

	;########################### NOTIF´s für den Skriptbaum (Treeview2) ###########################
	Local $hWndTreeView2, $tNMHDR2, $hWndFrom2, $iCode2
	$hWndTreeView2 = $hTreeview2
	If Not IsHWnd($hWndTreeView2) Then $hWndTreeView2 = GUICtrlGetHandle($hWndTreeView2)
	$tNMHDR2 = DllStructCreate($tagNMHDR, $ilParam)
	$hWndFrom2 = HWnd(DllStructGetData($tNMHDR2, "hWndFrom"))
	$iIDFrom2 = DllStructGetData($tNMHDR2, "IDFrom")
	$iCode2 = DllStructGetData($tNMHDR2, "Code")

	Switch $hWndFrom2
		Case $hWndTreeView2
			Switch $iCode2

				Case $NM_DBLCLK
					Local $tPOINT = _WinAPI_GetMousePos(True, $hWndFrom2)
					Local $iX = DllStructGetData($tPOINT, "X")
					Local $iY = DllStructGetData($tPOINT, "Y")
					Local $hItem = _GUICtrlTreeView_HitTestItem($hWndFrom2, $iX, $iY)
					If $hItem <> 0 Then
						If $hItem = $hRoot2 Then Return
						_Scripttree_DB_Klick()
					EndIf

				Case $NM_RCLICK
					Local $tPOINT = _WinAPI_GetMousePos(True, $hWndFrom2)
					Local $iX = DllStructGetData($tPOINT, "X")
					Local $iY = DllStructGetData($tPOINT, "Y")
					Local $hItem = _GUICtrlTreeView_HitTestItem($hWndFrom2, $iX, $iY)
					If $hItem <> 0 Then
						_GUICtrlTreeView_SelectItem($hWndFrom2, $hItem, $TVGN_CARET)
						_GUICtrlTreeView_SelectItem($hTreeView2, $hItem)
						GUICtrlSetState($Scripttree_includemenu_menu0, $GUI_DISABLE)
						GUICtrlSetState($Scripttree_includemenu_menu1, $GUI_ENABLE)
						GUICtrlSetState($Scripttree_includemenu_menu2, $GUI_ENABLE)
						GUICtrlSetState($Scripttree_includemenu_menu3, $GUI_DISABLE)

						If $hItem = $hRoot2 Then Return

						If $hItem = $functiontree Then
							GUICtrlSetState($Scripttree_includemenu_menu0, $GUI_DISABLE)
							GUICtrlSetState($Scripttree_includemenu_menu1, $GUI_DISABLE)
							GUICtrlSetState($Scripttree_includemenu_menu2, $GUI_DISABLE)
							_GUICtrlMenu_TrackPopupMenu($Scripttree_includemenu_Handle, $Studiofenster)
							Return
						EndIf

						If $hItem = $globalvariablestree Then
							GUICtrlSetState($Scripttree_includemenu_menu0, $GUI_DISABLE)
							GUICtrlSetState($Scripttree_includemenu_menu1, $GUI_DISABLE)
							GUICtrlSetState($Scripttree_includemenu_menu2, $GUI_DISABLE)
							_GUICtrlMenu_TrackPopupMenu($Scripttree_includemenu_Handle, $Studiofenster)
							Return
						EndIf

						If $hItem = $includestree Then
							GUICtrlSetState($Scripttree_includemenu_menu0, $GUI_DISABLE)
							GUICtrlSetState($Scripttree_includemenu_menu1, $GUI_DISABLE)
							GUICtrlSetState($Scripttree_includemenu_menu2, $GUI_DISABLE)
							_GUICtrlMenu_TrackPopupMenu($Scripttree_includemenu_Handle, $Studiofenster)
							Return
						EndIf

						If $hItem = $localvariablestree Then
							GUICtrlSetState($Scripttree_includemenu_menu0, $GUI_DISABLE)
							GUICtrlSetState($Scripttree_includemenu_menu1, $GUI_DISABLE)
							GUICtrlSetState($Scripttree_includemenu_menu2, $GUI_DISABLE)
							_GUICtrlMenu_TrackPopupMenu($Scripttree_includemenu_Handle, $Studiofenster)
							Return
						EndIf

						If $hItem = $regionstree Then
							GUICtrlSetState($Scripttree_includemenu_menu0, $GUI_DISABLE)
							GUICtrlSetState($Scripttree_includemenu_menu1, $GUI_DISABLE)
							GUICtrlSetState($Scripttree_includemenu_menu2, $GUI_DISABLE)
							_GUICtrlMenu_TrackPopupMenu($Scripttree_includemenu_Handle, $Studiofenster)
							Return
						EndIf

						If $hItem = $hroot_forms Then Return

						If StringInStr(_GUICtrlTreeView_GetTree($hTreeview2, _GUICtrlTreeView_GetSelection($hTreeview2)), _Get_langstr(83)) Then GUICtrlSetState($Scripttree_includemenu_menu3, $GUI_ENABLE)
						If StringInStr(_GUICtrlTreeView_GetTree($hTreeview2, _GUICtrlTreeView_GetSelection($hTreeview2)), _Get_langstr(324)) Then GUICtrlSetState($Scripttree_includemenu_menu0, $GUI_ENABLE)
						If StringInStr(_GUICtrlTreeView_GetTree($hTreeview2, _GUICtrlTreeView_GetSelection($hTreeview2)), _Get_langstr(323)) Then GUICtrlSetState($Scripttree_includemenu_menu2, $GUI_DISABLE)
						_GUICtrlMenu_TrackPopupMenu($Scripttree_includemenu_Handle, $Studiofenster) ;default menu
					EndIf

			EndSwitch
	EndSwitch

	;########################### NOTIF´s für den Dateiexplorer (TVExplorer UDF) ###########################
;~	Local $tNMTREEVIEW = DllStructCreate($tagNMTREEVIEW, $ilParam)
	If @AutoItX64 Then
		Local $tNMTREEVIEW = DllStructCreate($tagNMHDR & ';uint Aligment1;uint Action;uint Aligment2;uint OldMask;ptr OldhItem;uint OldState;uint OldStateMask;ptr OldText;int OldTextMax;int OldImage;int OldSelectedImage;int OldChildren;lparam OldParam;uint Aligment3;uint NewMask;ptr NewhItem;uint NewState;uint NewStateMask;ptr NewText;int NewTextMax;int NewImage;int NewSelectedImage;int NewChildren;lparam NewParam;int X; int Y', $ilParam)
	Else
		Local $tNMTREEVIEW = DllStructCreate($tagNMHDR & ';uint Action;uint OldMask;ptr OldhItem;uint OldState;uint OldStateMask;ptr OldText;int OldTextMax;int OldImage;int OldSelectedImage;int OldChildren;lparam OldParam;uint NewMask;ptr NewhItem;uint NewState;uint NewStateMask;ptr NewText;int NewTextMax;int NewImage;int NewSelectedImage;int NewChildren;lparam NewParam;int X; int Y', $ilParam)
	EndIf
	Local $hTV = DllStructGetData($tNMTREEVIEW, 'hWndFrom')
	Local $index = _TV_Index($hTV)

	If(Not $index) Or($tvData[$index][27]) Then
		Return 'GUI_RUNDEFMSG'
	EndIf

	Local $hItem = DllStructGetData($tNMTREEVIEW, 'NewhItem')
	Local $hPrev = DllStructGetData($tNMTREEVIEW, 'OldhItem')
	Local $state = DllStructGetData($tNMTREEVIEW, 'NewState')
	Local $id = DllStructGetData($tNMTREEVIEW, 'Code')
	Local $Mode = _WinAPI_SetErrorMode(BitOR($SEM_FAILCRITICALERRORS, $SEM_NOOPENFILEERRORBOX))
	Local $tPOINT, $flag, $path
	Local $tTVHTI

	Do
		Switch $id
			Case $TVN_BEGINDRAGA, $TVN_BEGINDRAGW ;Beginne Drag&Drop Aktion

				$Quelldatei = _GUICtrlTVExplorer_GetSelected($hWndTreeview)
				$hItemHover = TreeItemFromPoint($hTV)

				;On click Drag fix
				if $Quelldatei <> _TV_GetPath($index, $hItemHover) then
					MouseUp("primary")
					return
				endif

				while _IsPressed("01", $user32)
					sleep(50)
					$MausPosition = MouseGetPos()
					$hItemHover = TreeItemFromPoint($hTV)
					$zielpfad = _TV_GetPath($index, $hItemHover)
					if IsArray($MausPosition) then
						if _Pruefe_Ob_Drag_and_Drop_erlaubt_ist($Quelldatei, $zielpfad) = 1 Then

							GUISetCursor(2, 1, $Studiofenster)
							ToolTip(_Get_langstr(152)&" " & StringReplace($zielpfad, $Offenes_Projekt & "\", ""), $MausPosition[0] + 10, $MausPosition[1], StringTrimLeft($Quelldatei, StringInStr($Quelldatei, "\", 0, -1)))
						Else
							GUISetCursor(7, 1, $Studiofenster)
							ToolTip("")
						endif
					endif

					If $hItemHover = 1 Then
						;nix
					Else
						_SendMessage($hTV, $TVM_SELECTITEM, $TVGN_DROPHILITE, $hItemHover) ;add DropTarget
					EndIf
				WEnd

				_SendMessage($hTV, $TVM_SELECTITEM, $TVGN_DROPHILITE, 0) ;remove DropTarget
				ToolTip("")
				GUISetCursor(2, 0, $Studiofenster)
				_Try_to_move_file_drag_and_Drop($Quelldatei, $zielpfad)

			Case $TVN_ITEMEXPANDINGW
				If $tvData[$index][28] Then
					ExitLoop
				EndIf
				If Not _GUICtrlTreeView_ExpandedOnce($hTV, $hItem) Then
;~					_GUICtrlTreeView_SetState($hTV, $hItem, $TVIS_EXPANDEDONCE, 1)
					_TV_Send(3, $index, $hItem)
				EndIf
			Case $TVN_ITEMEXPANDEDW
				$path = _TV_GetPath($index, $hItem)
				If BitAND($TVIS_EXPANDED, $state) Then
					$flag = 1
				Else
					$flag = 0
				EndIf
				If FileExists($path) Then
					_TV_SetImage($hTV, $hItem, _TV_AddIcon($index, $path, $flag))
				Else
					_TV_Send(4, $index, $hItem)
				EndIf
			Case $TVN_SELCHANGEDW
				If BitAND($TVIS_SELECTED, $state) Then
					_TV_Send(4, $index, $hItem)
				EndIf
			Case $TVN_DELETEITEMW
				_TV_DeleteShortcut($index, $hPrev)
			Case -5 ; NM_RCLICK
				If $tvData[$index][28] Then
					ExitLoop
				EndIf
				$tPOINT = _WinAPI_GetMousePos(1, $hTV)
				$tTVHTI = _GUICtrlTreeView_HitTestEx($hTV, DllStructGetData($tPOINT, 1), DllStructGetData($tPOINT, 2))
				$hItem = DllStructGetData($tTVHTI, 'Item')
				If BitAND(DllStructGetData($tTVHTI, 'Flags'), $TVHT_ONITEM) Then
					_GUICtrlTreeView_SelectItem($hTV, $hItem)
					$path = _TV_GetPath($index, $hItem)
					If FileExists($path) Then
						_TV_SetSelected($index, $hItem)
						_TV_Send(7, $index, $hItem)
					Else
						_TV_Send(4, $index, $hItem)
					EndIf
				EndIf
			Case -3 ; NM_DBLCLK
				If $tvData[$index][28] Then
					ExitLoop
				EndIf
				$tPOINT = _WinAPI_GetMousePos(1, $hTV)
				$tTVHTI = _GUICtrlTreeView_HitTestEx($hTV, DllStructGetData($tPOINT, 1), DllStructGetData($tPOINT, 2))
				$hItem = DllStructGetData($tTVHTI, 'Item')
				If BitAND(DllStructGetData($tTVHTI, 'Flags'), $TVHT_ONITEM) Then
					$path = _TV_GetPath($index, $hItem)
					If Not _WinAPI_PathIsDirectory($path) Then
						_TV_Send(6, $index, $hItem)
					EndIf
				EndIf
		EndSwitch
	Until 1
	_WinAPI_SetErrorMode($Mode)


	;########################### NOTIF´s für Checkboxen in einem Treeview (TristateTreeViewLib UDF) ###########################
	_WM_NOTIFY_Treeview($hWnd, $iMsg, $iwParam, $ilParam, $hWndFrom2) ;Versuche zuerst NOTIFY´s für das Scintilla Control

;~ 	Return
;~

	Return $GUI_RUNDEFMSG
EndFunc   ;==>_WM_NOTIFY


Func _Pruefe_Ob_Drag_and_Drop_erlaubt_ist($Quelle = "", $Ziel = "")
	if $Quelle = "" then return 0
	if $Ziel = "" then return 0

	if $Quelle = $Offenes_Projekt & "\project.isn" then return 0
	if not _WinAPI_PathIsDirectory($Ziel) then return 0
	if $Ziel = $Projectfolder then return 0
	if $Quelle = $Offenes_Projekt & "\" & IniRead($Offenes_Projekt & "\project.isn", "ISNAUTOITSTUDIO", "mainfile", "") then return 0

	return 1
EndFunc   ;==>_Pruefe_Ob_Drag_and_Drop_erlaubt_ist


Func _Try_to_move_file_drag_and_Drop($Quelle = "", $Ziel = "")
	if _Pruefe_Ob_Drag_and_Drop_erlaubt_ist($Quelle, $Ziel) = 0 then return


	$alreadyopen = _GUICtrlTab_FindTab($htab, StringTrimLeft($Quelle, StringInStr($Quelle, "\", 0, -1)))
	If $alreadyopen <> -1 Then
		$res = _ArraySearch($Datei_pfad, $Quelle)
		If $res <> -1 Then
			$alreadyopen = $res
		Else
			$alreadyopen = -1
		EndIf
	EndIf
	If $alreadyopen = -1 Then

		If _WinAPI_PathIsDirectory($Quelle) Then
			DirMove($Quelle, $Ziel & "\", 1)
		Else
			FileMove($Quelle, $Ziel, 0)
		EndIf
		AdlibRegister("_Update_Treeview")
	Else
		MsgBox(262144 + 16, _Get_langstr(25), StringTrimLeft($Quelle, StringInStr($Quelle, "\", 0, -1)) & " " & _Get_langstr(78), 0, $Studiofenster)
	EndIf


EndFunc   ;==>_Try_to_move_file_drag_and_Drop



Func TreeCreateDragImage($hWnd, $hItem)
	If _GUICtrlTreeView_GetNormalImageList($hWnd) <> 0 Then Return _GUICtrlTreeView_CreateDragImage($hWnd, $hItem)
	Local $aItemRect = _GUICtrlTreeView_DisplayRect($hWnd, $hItem, True)
	Local $iImgW = $aItemRect[2] - $aItemRect[0]
	Local $iImgH = $aItemRect[3] - $aItemRect[1]
	ConsoleWrite($iImgW & " " & $iImgH & @CRLF)
	Local $hTreeDC = _WinAPI_GetDC($hWnd)
	Local $hMemDC = _WinAPI_CreateCompatibleDC($hTreeDC)
	Local $hMemBmp = _WinAPI_CreateCompatibleBitmap($hTreeDC, $iImgW, $iImgH)
	Local $hMemBmpOld = _WinAPI_SelectObject($hMemDC, $hMemBmp)
	_WinAPI_BitBlt($hMemDC, 0, 0, $iImgW, $iImgH, $hTreeDC, $aItemRect[0], $aItemRect[1], $SRCCOPY)
	_WinAPI_SelectObject($hMemDC, $hMemBmpOld)
	_WinAPI_ReleaseDC($hWnd, $hTreeDC)
	_WinAPI_DeleteDC($hMemDC)
	Local $hImgList = _GUIImageList_Create($iImgW, $iImgH, 6)
	_GUIImageList_Add($hImgList, $hMemBmp)
	_WinAPI_DeleteObject($hMemBmp)
	Return $hImgList
EndFunc   ;==>TreeCreateDragImage

Func DrawDragImage(ByRef $hControl, ByRef $aDrag)
	Local $tPOINT, $hDC
	$hDC = _WinAPI_GetWindowDC($hControl)
	$tPOINT = _WinAPI_GetMousePos(True, $hControl)
	_WinAPI_InvalidateRect($hControl)
	_GUIImageList_Draw($aDrag, 0, $hDC, DllStructGetData($tPOINT, "X") - 10, DllStructGetData($tPOINT, "Y") - 8)
	_WinAPI_ReleaseDC($hControl, $hDC)
EndFunc   ;==>DrawDragImage

Func TreeItemFromPoint($hWnd)
	Local $tMPos = _WinAPI_GetMousePos(True, $hWnd)
	Return _GUICtrlTreeView_HitTestItem($hWnd, DllStructGetData($tMPos, 1), DllStructGetData($tMPos, 2))
EndFunc   ;==>TreeItemFromPoint


func _ISN_AutoIt_Studio_Dateien_und_Ordner_reorganisieren()
;Dateien Reorganisieern
;Unnötige Dateien sauber umsortieren bzw. löschen.
;Falls dies aus berechtigungsgründen nicht möglich ist herscht halt Chaos im Data Ordner :P (Is aber auch kein Problem da die neuen Ordner und Daten eh über Updates eingespielt werden)

if IsAdmin() then

;Datenübernaheme für den alten Au3Defs Ordner
if FileExists(@scriptdir&"\Data\Au3Defs") Then
DirCreate(@scriptdir&"\Data\Api\")
FileMove(@scriptdir&"\Data\Au3Defs\*.api",@scriptdir&"\Data\Api\")
if @error then msgbox(0,"Error","Error while moving .api files from \Data\Au3Defs to \Data\Api!")
DirCreate(@scriptdir&"\Data\Properties\")
FileMove(@scriptdir&"\Data\Au3Defs\*.properties",@scriptdir&"\Data\Properties\")
if @error then msgbox(0,"Error","Error while moving *.properties files from \Data\Au3Defs to \Data\Properties!")
FileRecycle(@scriptdir&"\Data\Au3Defs")
if @error then msgbox(0,"Error","Error while removing the \Data\Au3Defs folder!")
EndIf

;Obfuscator löschen -> Gibt es nicht mehr (wurde durch Au3Stripper ersetzt)
if FileExists(@scriptdir&"\Data\Obfuscator") Then
FileRecycle(@scriptdir&"\Data\Obfuscator")
if @error then msgbox(0,"Error","Error while removing the \Data\Obfuscator folder!")
endif

;Alte Hilfe löschen
if FileExists(@scriptdir&"\Data\ISNAutoitStudiHilfe.chm") Then
   FileRecycle(@scriptdir&"\Data\ISNAutoitStudiHilfe.chm")
   if @error then msgbox(0,"Error","Error while removing the file Data\ISNAutoitStudiHilfe.chm!")
endif




EndIf
EndFunc

Func _ISN_Pfeil_ID_aus_smallicons_DLL()
if $ISN_Dark_Mode = "true" Then
return 1922
Else
return 1910
endif
endfunc

Func _GUICtrlStatusBar_SetColor($hWnd, $sText = "", $iPart = 0, $iColor = 0, $iBkColor = -1)
;Author: rover - modified ownerdraw version of _GUICtrlStatusBar_SetText_ISN() from GuiStatusBar.au3
;Includes RGB2BGR() - Author: Siao - <a href='http://www.autoitscript.com/forum/index.php?s=&showtopic=57161&view=findpost&p=433593' class='bbc_url' title=''>http://www.autoitscript.com/forum/index.php?s=&showtopic=57161&view=findpost&p=433593</a>
;sets itmData element of statusbar DRAWITEMSTRUCT with pointer to struct with text and colour for part number
;~     If $Debug_SB Then _GUICtrlStatusBar_ValidateClassName($hWnd)
    Local $ret, $tStruct, $pStruct, $iBuffer
; In Microsoft Windows XP and earlier, the text for each part is limited to 127 characters.
; This limitation has been removed in Windows Vista.
; set sufficiently large buffer for use with Vista (can exceed XP limit of 128 chars)
    $tStruct = DllStructCreate("wchar Text[512];dword Color;dword BkColor;dword Trans")
    Switch $iBkColor
        Case -1
            DllStructSetData($tStruct, "Trans", 1)
        Case Else
            $iBkColor = BitAND(BitShift(String(Binary($iBkColor)), 8), 0xFFFFFF)
            DllStructSetData($tStruct, "Trans", 0)
            DllStructSetData($tStruct, "BkColor", $iBkColor)
    EndSwitch
    $iColor = BitAND(BitShift(String(Binary($iColor)), 8), 0xFFFFFF); From RGB2BGR() Author: Siao
    DllStructSetData($tStruct, "Text", $sText)
    DllStructSetData($tStruct, "Color", $iColor)
    $pStruct = DllStructGetPtr($tStruct)
    If _GUICtrlStatusBar_IsSimple($hWnd) Then $iPart = $SB_SIMPLEID
;FOR INTERNAL STATUSBARS ONLY
;~     If _WinAPI_InProcess($hWnd, $__ghSBLastWnd) Then
        $ret = _SendMessage($hWnd, $SB_SETTEXTW, BitOR($iPart, $SBT_OWNERDRAW), $pStruct, 0, "wparam", "ptr")
        Return $tStruct; returns struct to global variable
;~     EndIf
    Return 0
 EndFunc ;==>_GUICtrlStatusBar_SetColor

; Handle WM_CONTEXTMENU messages
Func WM_CONTEXTMENU_EDITOR($hWnd, $iMsg, $iwParam, $ilParam)

	Local $tmenu
	If _GUICtrlTab_GetCurFocus($htab) = -1 Then Return
	If Not _hit_win($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)]) Then Return ;Kontextmenü kann nur geöffnet werden wenn sich Mauszeiger im Fenster befindet

	;Prüfe ob Punkt "Datei öffnen" aktiviert werden soll (Für Includes)
	$str = Sci_GetLine($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)], Sci_GetCurrentLine($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)]) - 1)
	If StringInStr($str, "#include") And StringInStr($str, ".") Then
		GUICtrlSetState($SCI_EDITOR_CONTEXT_oeffneInclude, $GUI_ENABLE)
	Else
		GUICtrlSetState($SCI_EDITOR_CONTEXT_oeffneInclude, $GUI_DISABLE)
	EndIf

	;Prüfe auf Dateipfade
	$array = _StringBetween($str, '"', '"', -1)
	For $u = 0 To UBound($array) - 1
		If FileExists($array[$u]) Then GUICtrlSetState($SCI_EDITOR_CONTEXT_oeffneInclude, $GUI_ENABLE)
	Next

	$array = _StringBetween($str, "'", "'", -1)
	For $u = 0 To UBound($array) - 1
		If FileExists($array[$u]) Then GUICtrlSetState($SCI_EDITOR_CONTEXT_oeffneInclude, $GUI_ENABLE)
	Next


	;Prüfe ob Punkt Rückgängig aktiviert werden soll
	If SendMessage($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)], $SCI_CANUNDO, 0, 0) = 1 Then
		GUICtrlSetState($SCI_EDITOR_CONTEXT_rueckgaengig, $GUI_ENABLE)
	Else
		GUICtrlSetState($SCI_EDITOR_CONTEXT_rueckgaengig, $GUI_DISABLE)
	EndIf

	;Prüfe ob Punkt Wiederholen aktiviert werden soll
	If SendMessage($SCE_EDITOR[_GUICtrlTab_GetCurFocus($htab)], $SCI_CANREDO, 0, 0) = 1 Then
		GUICtrlSetState($SCI_EDITOR_CONTEXT_wiederholen, $GUI_ENABLE)
	Else
		GUICtrlSetState($SCI_EDITOR_CONTEXT_wiederholen, $GUI_DISABLE)
	EndIf

;~ 	MouseClick("left")
	Sleep(10)
	Show_KontextMenu($Studiofenster, $ScripteditorContextMenu)

	Return True
EndFunc   ;==>WM_CONTEXTMENU_EDITOR

Func WM_GETMINMAXINFO($hWnd, $msg, $wParam, $lParam)

	$tagMaxinfo = DllStructCreate("int;int;int;int;int;int;int;int;int;int", $lParam)
	DllStructSetData($tagMaxinfo, 7, $GUIMINWID) ; min X
	DllStructSetData($tagMaxinfo, 8, $GUIMINHT) ; min Y
;~     DllStructSetData($tagMaxinfo, 9, $GUIMAXWID ); max X
;~     DllStructSetData($tagMaxinfo, 10, $GUIMAXHT ) ; max Y
	_GUICtrlStatusBar_Resize($Status_bar)
	Return 0
EndFunc   ;==>WM_GETMINMAXINFO

Func WM_ACTIVATE($hWnd, $iMsg, $wParam, $lParam)
	Return
	Local $nNotifyCode = BitShift($wParam, 16)
	Local $nID = BitAND($wParam, 0x0000FFFF)
	Local $hCtrl = $lParam
	#forceref $hWnd, $iMsg, $wParam, $lParam
	Switch $iMsg
		Case $WM_ACTIVATE
;~ 	   msgbox(0,"j",wingettitle("[ACTIVE]"))
			Switch $wParam
				Case 1, 2
					If $hWnd = $Studiofenster Then
						For $win = 0 To UBound($Plugin_Handle) - 1 Step 1
							If $Plugin_Handle[$win] = "" Then ContinueLoop
							If $Plugin_Handle[$win] = "-1" Then ContinueLoop
							ConsoleWrite(_WinAPI_GetAncestor($hWnd, $GA_ROOTOWNER) & "    " & $Studiofenster & @CRLF)
							If _WinAPI_GetAncestor($hWnd, $GA_ROOTOWNER) = $Studiofenster Then Return
							If $hWnd = $Plugin_Handle[$win] Then Return
							If $hWnd = $SCE_EDITOR[$win] Then Return
						Next

;~                     ConsoleWrite("!Window Activated" &random(0,1232323)& @CRLF)

						WinSetOnTop($Studiofenster, "", 1)
						WinSetOnTop($Studiofenster, "", 0)
					EndIf
				Case 0
;~                     ConsoleWrite("!Window Deactivated" & @CRLF)
			EndSwitch

	EndSwitch
	Return $GUI_RUNDEFMSG
EndFunc   ;==>WM_ACTIVATE









func _ISN_Automatische_Speicherung_Sekundenevent()
if $Offenes_Projekt = "" then return
If _GUICtrlTab_GetItemCount($htab) = 0 Then Return
if $Automatische_Speicherung_Aktiv <> "true" then
   AdlibUnRegister("_ISN_Automatische_Speicherung_Sekundenevent")
   return
EndIf

If $Automatische_Speicherung_eingabecounter = -1 Then Return
if $Automatische_Speicherung_Modus <> "2" then
   AdlibUnRegister("_ISN_Automatische_Speicherung_Sekundenevent")
   return
endif


$Automatische_Speicherung_eingabecounter = $Automatische_Speicherung_eingabecounter+1 ;Zähle...

if $Automatische_Speicherung_eingabecounter*1000 > _TimeToTicks ($Automatische_Speicherung_Eingabe_Stunden, $Automatische_Speicherung_Eingabe_Minuten, $Automatische_Speicherung_Eingabe_Sekunden) Then
_ISN_Automatische_Speicherung_starten() ;Automatische speicherung ausführen da keine Eingabe erfolgt ist
endif

EndFunc


func _ISN_Automatische_Speicherung_starten()
   if $Automatische_Speicherung_Aktiv <> "true" then
   AdlibUnRegister("_ISN_Automatische_Speicherung_starten")
   return
   EndIf
   if $Offenes_Projekt = "" then return
   If _GUICtrlTab_GetItemCount($htab) = 0 Then Return

   _Write_ISN_Debug_Console("AutoSave initiated ["&$Automatische_Speicherung_eingabecounter&" secounds without an input]...", 1)
   _Write_log(_Get_langstr(1084), "368DB6")

   local $Nur_Skripttabs_sichern = 0
   if $Automatische_Speicherung_Nur_Skript_Tabs_Sichern = "true" then $Nur_Skripttabs_sichern = 1

   if $Automatische_Speicherung_Eingabe_Nur_einmal_sichern = "true" Then
	 $Automatische_Speicherung_eingabecounter = -1
   Else
	 $Automatische_Speicherung_eingabecounter = 0 ;reset
   EndIf

   if $Automatische_Speicherung_Nur_aktuellen_Tabs_Sichern = "true" Then
	  _try_to_save_file(_GUICtrlTab_GetCurFocus($htab),1,$Nur_Skripttabs_sichern)
   Else
	  _Save_All_tabs($Nur_Skripttabs_sichern)
   EndIf


EndFunc


func _erstelle_neues_temporaeres_skript($Erweiterung=$Autoitextension)
local $Pfad = ""
local $Dateinummerierung = 1
local $Dateiname = ""
$Pfad = _ISN_Variablen_aufloesen(_ProjectISN_Config_Read("temp_script_path", "%projectdir%\Temp"))
$Pfad = _WinAPI_PathRemoveBackslash ($Pfad)
if $Pfad = "" then Return
if DirCreate($Pfad) = 0 then return ;Fehler -> Return

$Dateiname = _ProjectISN_Config_Read("temp_script_name", "Tempscript_%count%")
if not StringInStr($Dateiname,"%count%") then Return ;Kein %count% -> Return

;Zähle nach Daten
for $Dateinummerierung = 1 to 999 step +1
if not FileExists($Pfad&"\"&StringReplace($Dateiname,"%count%",$Dateinummerierung)&"."&$Erweiterung) then exitloop
next

;Skript erstellen
$Pfad = $Pfad&"\"&StringReplace($Dateiname,"%count%",$Dateinummerierung)&"."&$Erweiterung
$dateihandle = FileOpen($Pfad, 2)
If $dateihandle = -1 Then
MsgBox(0, "Error", "Unable to create new file. Maybe you do not have write access to this folder!")
Return
EndIf
FileClose($dateihandle)

_Update_Treeview()

Try_to_opten_file($Pfad)
_GUICtrlTVExplorer_Expand($hWndTreeview, $Pfad)
EndFunc

func _Pruefe_ob_sich_Datei_im_Temp_Ordner_befindet($Dateipfad = "")
if $Studiomodus = "2" then return
local $Pfad = ""
$Pfad = _ISN_Variablen_aufloesen(_ProjectISN_Config_Read("temp_script_path", "%projectdir%\Temp"))
$Pfad = _WinAPI_PathRemoveBackslash ($Pfad)
if $Pfad = "" then Return
if StringInStr($Dateipfad,$Pfad) Then ;Datei ist im Temp Ordner (Für Temporäre Daten)
Switch	_ProjectISN_Config_Read("temp_script_delete_mode", "2") ;1 lösche, 2 fragen, 3 nichts tun

case "1"
FileDelete($Dateipfad)
_Update_Treeview()

case "2"
$antwort = MsgBox (4+32+262144, _Get_langstr(48), StringReplace(_Get_langstr(1103),"%1",StringTrimleft($Dateipfad,StringInStr($Dateipfad,"\",0,-1))), 0,$Studiofenster)
if $antwort = 6 Then
FileDelete($Dateipfad)
_Update_Treeview()
EndIf
EndSwitch
endif
EndFunc



