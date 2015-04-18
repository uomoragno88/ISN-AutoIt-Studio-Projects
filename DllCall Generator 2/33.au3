#include <GUIConstantsEx.au3>
#include <ListViewConstants.au3>
#include <GuiListView.au3>

$hGui = GUICreate("Some ListView operations ", 420, 400)
$hListView1 = GUICtrlCreateListView("Col1|Col2|Col3|col4", 10, 10, 400, 350, -1, BitOR($LVS_EX_GRIDLINES,$LVS_EX_FULLROWSELECT))
;some values for testing
$iRecords = 5
For $i=0 To 3
    GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, $i, 90)
Next
For $i=1 To $iRecords
    GUICtrlCreateListViewItem("a"&$i&"|b"&$i&"|c"&$i&"|d"&$i&"", $hListView1)
Next
Local $RotateLV = GUICtrlCreateButton("Rotate LV", 10, 370, 70, 25)
Local $SwapLV = GUICtrlCreateButton("Swap LV items", 85, 370, 90, 25)
Local $MoveItemUP = GUICtrlCreateButton("Move sel.item UP", 180, 370, 100, 25)
Local $MoveItemDOWN = GUICtrlCreateButton("Move sel.item DOWN", 285, 370, 120, 25)

GUISetState(@SW_SHOW)

While 1
    Sleep(10)
    $nMsg = GUIGetMsg()
    Switch $nMsg
        Case $GUI_EVENT_CLOSE
            Exit
        Case $RotateLV
            $iTimer = TimerInit()
            _ListView_RotateItems($hListView1)
            WinSetTitle($hGui,"","Rotated "&$iRecords&" in "&Round(TimerDiff($iTimer)/1000,2)&" sec.")
        Case $SwapLV
            _ListView_SwapItems($hListView1,0,5)
            WinSetTitle($hGui,"","Items 0 and 5 are swapped")
        Case $MoveItemUP
            ;i'm not in the mood to check if you have selected and item,
            ;so DON'T ASK if you don't see any change in the list
            WinSetTitle($hGui,"","Moving selected item up")
            _ListView_MoveSelectedItemUp($hListView1)
        Case $MoveItemDOWN
            ;same comment as above
            WinSetTitle($hGui,"","Moving selected item down")
            _ListView_MoveSelectedItemDown($hListView1)
    EndSwitch
WEnd

Func _ListView_SwapItems($hListView, $iItem1, $iItem2)
    Local $iColCount, $aItem1, $aItem2, $sT1, $sT2
    $iColCount = _GUICtrlListView_GetColumnCount($hListView);
    $aItem1 = _GUICtrlListView_GetItem($hListView, $iItem1);
    $aItem2 = _GUICtrlListView_GetItem($hListView, $iItem2);
    ;swap the items
    _GUICtrlListView_SetItem($hListView, $aItem1[3],$iItem2);
    _GUICtrlListView_SetItem($hListView, $aItem2[3],$iItem1);
    ;and subitems.
    For $iIndex = 1 To $iColCount-1
        $sT1 = _GUICtrlListView_GetItemText($hListView, $iItem1,$iIndex);
        $sT2 = _GUICtrlListView_GetItemText($hListView, $iItem2, $iIndex);
        _GUICtrlListView_SetItemText($hListView, $iItem2, $sT1,$iIndex);
        _GUICtrlListView_SetItemText($hListView, $iItem1, $sT2,$iIndex);
    Next
EndFunc

Func _ListView_MoveSelectedItemUp($hListView)
    Local $iCount = _GUICtrlListView_GetItemCount($hListView);
    For $iIndex = 1 To $iCount-1
        If _GUICtrlListView_GetItemState($hListView, $iIndex, $LVIS_SELECTED) <> 0 Then ;!= 0)
            _ListView_SwapItems($hListView, $iIndex, $iIndex - 1);
            _GUICtrlListView_SetItemState($hListView, $iIndex-1, $LVIS_SELECTED, $LVIS_SELECTED)
        EndIf
    Next
EndFunc

Func _ListView_MoveSelectedItemDown($hListView)
    Local $iCount = _GUICtrlListView_GetItemCount($hListView);
    For $iIndex = $iCount-1 To 0 Step -1
        If _GUICtrlListView_GetItemState($hListView, $iIndex-1, $LVIS_SELECTED) <> 0 Then ;!= 0)
            _ListView_SwapItems($hListView, $iIndex-1, $iIndex);
            _GUICtrlListView_SetItemState($hListView, $iIndex, $LVIS_SELECTED, $LVIS_SELECTED)
        EndIf
    Next
EndFunc

Func _ListView_RotateItems($hListView)
    Local $iCount = _GUICtrlListView_GetItemCount($hListView);
    For $i=$iCount-1 To 1 Step -1
        _ListView_SwapItems($hListView,$i,$i-1)
    Next
EndFunc

