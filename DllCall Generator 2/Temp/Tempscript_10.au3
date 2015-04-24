#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#Include <GuiListView.au3>

Opt('MustDeclareVars', 0)

Global $ListView, $GUI, $msg, $Label1, $ComboList, $Show

$GUI = GUICreate("Bug Tracker", 650, 550, @DesktopHeight / 4, @DesktopHeight / 4) ; trying the make the GUI to appear on the center of the monitor
GUISetBkColor(0x00E0FFFF)
$Label1 = GUICtrlCreateLabel("Selet the Application", 10, 7, 100, 30)
$ComboList = GUICtrlCreateCombo("Internet Explorer", 120, 5, 150, 30)
GUICtrlSetData(-1, "Adobe Reader|Adobe Flash|Java|Office 2010|SAP GUI 7.20")
$Show = GUICtrlCreateButton("Show", 320, 5, 50, 30)
$ListView = GUICtrlCreateListView("S.NO|Reported Issue|Resolution", 10, 60, 630, 670)

 _GUICtrlListView_SetColumnWidth($ListView, 0, 100)
 _GUICtrlListView_SetColumnWidth($ListView, 1, 100)
 _GUICtrlListView_SetColumnWidth($ListView, 2, $LVSCW_AUTOSIZE_USEHEADER)

GUISetState()

Do
    $msg = GUIGetMsg()
Until $msg = $GUI_EVENT_CLOSE