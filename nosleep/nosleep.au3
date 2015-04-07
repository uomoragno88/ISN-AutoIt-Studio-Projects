#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Compression=4
#AutoIt3Wrapper_Res_Comment=Prevents your computer from locking or going to screensaver as it normally would when idle
#AutoIt3Wrapper_Res_Description=Prevents your computer from locking or going to screensaver as it normally would when idle
#AutoIt3Wrapper_Res_Fileversion=1.0.0.0
#AutoIt3Wrapper_Res_LegalCopyright=Copyright Mike Langford ©2009
#AutoIt3Wrapper_Res_Language=1033
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
Opt("TrayOnEventMode",1)
Opt("TrayMenuMode",1)

$AboutItem = TrayCreateItem("About")
TrayItemSetOnEvent(-1,"ReadList")
TrayCreateItem("")
$ExitItem = TrayCreateItem("Exit")
TrayItemSetOnEvent(-1,"ReadList")

Func ReadList()
	$SelectedItem = TrayItemGetText(@TRAY_ID)
	If $SelectedItem="Exit" Then
		Exit
	ElseIf $SelectedItem="About" Then
		Call("About")
	EndIf
EndFunc


Func About()
	MsgBox(064,"No Sleep Utility","Prevents your computer from automatically locking or going to screen saver as it normally would." & @CRLF & "Copyright Mike Langford ©2009")
EndFunc


While 1
	Sleep(30000)
	$CurPos = MouseGetPos ( )
	MouseMove ( $CurPos[0] + 1, $CurPos[1] )
	MouseMove ( $CurPos[0] - 1, $CurPos[1] )
WEnd