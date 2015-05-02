#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <constants.au3>
#include <WinAPI.au3>
#include <debug.au3>
#include "CUIAutomation2.au3"
#include "UIAWrappers.au3"
#include "startprocess.au3"
#include "_FFLoadWait.au3"
#include "prova.au3"

#AutoIt3Wrapper_UseX64=Y  ;Should be used for stuff like tagpoint having right struct etc. when running on a 64 bits os

;~ Make this language specific
const $cToolbarByName = "name:=Navigation Toolbar"
const $cAddressBarByName = "name:=Search or enter address"
const $cFFNewTabByName="name:=Open a new tab"

$strFFExeFolder="C:\Program Files (x86)\Mozilla Firefox\"
$strFFStartup=""
$strFFExe=$strFFExeFolder & "firefox.exe "

;~ Start chrome
if fileexists($strFFExe) Then
    if not processexists("firefox.exe") Then
        run($strFFExe & $strFFStartup,"", @SW_MAXIMIZE )
        ProcessWait("firefox.exe")
        ;~ Just to give some time to start
        sleep(10000)
    endif
Else
    consolewrite("No clue where to find firefox on your system, please start manually:" & @CRLF )
    consolewrite($strFFExe & $strFFStartup & @CRLF)
EndIf

;~ Find the FF window
$oFF=_UIA_getFirstObjectOfElement($oDesktop,"class:=MozillaWindowClass", $treescope_children)
if not isobj($oFF) Then
    _UIA_DumpThemAll($oDesktop,$treescope_children)
EndIf

;~ Make sure chrome is front window
$oFF.setfocus()

if isobj($oFF) Then
    consolewrite("Action 1" & @CRLF)

;~  get the chrome toolbar
;~  $oFFToolbar=_UIA_getFirstObjectOfElement($oFF,"controltype:=" & $UIA_ToolBarControlTypeId, $treescope_subtree)
    $oFFToolbar=_UIA_getFirstObjectOfElement($oFF,$cToolbarByName, $treescope_subtree)
    if not isobj($oFFToolbar) Then
        _UIA_DumpThemAll($oFF,$treescope_subtree)
    EndIf

consolewrite("Action 2" & @CRLF)
;~  get the addressbar
;~  $oFFAddressBar=_UIA_getFirstObjectOfElement($oFFToolbar,"class:=Chrome_OmniboxView", $treescope_children) ;worked in chrome 28
;~  $oFFAddressBar=_UIA_getFirstObjectOfElement($oFFToolbar,"controltype:=" & $UIA_EditControlTypeId , $treescope_subtree) ;works in chrome 29
;~  $oFFAddressBar=_UIA_getFirstObjectOfElement($oFFToolbar,"name:=Adres- en zoekbalk"  , $treescope_children) ;works in chrome 29
    $oFFAddressBar=_UIA_getObjectByFindAll($oFFToolbar, $cAddressBarByName  , $treescope_subtree) ;works in chrome 29
    if not isobj($oFFAddressbar) Then
        _UIA_DumpThemAll($oFFToolbar,$treescope_subtree)
    EndIf

;~  $oValueP=_UIA_getpattern($oFFAddressBar,$UIA_ValuePatternId)
;~  sleep(2000)

;~  get the value of the addressbar
;~  $myText=""
;~  $oValueP.CurrentValue($myText)
;~  consolewrite("address: " & $myText & @CRLF)

consolewrite("Action 3" & @CRLF)
;~ Get reference to the tabs
    $oFFTabs=_UIA_getFirstObjectOfElement($oFF,"controltype:=" & $UIA_TabControlTypeId, $treescope_subtree)
    if not isobj($oFFTabs) Then
        _UIA_DumpThemAll($oFF,$treescope_subtree)
    EndIf

;~ Lets open a new tab within chrome

consolewrite("Action 4" & @CRLF)
;~  $oFFNewTab= _UIA_getFirstObjectOfElement($oFFTabs,"controltype:=" & $UIA_ButtonControlTypeId, $treescope_subtree)
    $oFFNewTab= _UIA_getObjectByFindAll($oFFTabs, $cFFNewTabByName,$treescope_subtree)
    if not isobj($oFFNewTab) Then
        _UIA_DumpThemAll($oFFTabs,$treescope_subtree)
    EndIf
;~  _UIA_action($oFFNewtab,"leftclick")
;~  sleep(500)

consolewrite("Action 5" & @CRLF)
    $oFFAddressBar=_UIA_getObjectByFindAll($oFFToolbar, $cAddressBarByName  , $treescope_subtree) ;works in chrome 29

    if not isobj($oFFAddressbar) Then
        _UIA_DumpThemAll($oFFToolbar,$treescope_subtree)
    EndIf

    $t=stringsplit(_UIA_getPropertyValue($oFFAddressBar, $UIA_BoundingRectanglePropertyId),";")
    _DrawRect($t[1],$t[3]+$t[1],$t[2],$t[4]+$t[2])
    _UIA_action($oFFAddressBar,"leftclick")
    _UIA_action($oFFAddressBar,"setvalue using keys","www.autoitscript.com/{ENTER}")

consolewrite("Action 6" & @CRLF)

;~  give some time to open website
    sleep(2000)
    $oDocument=_UIA_getFirstObjectOfElement($oFF,"controltype:=" & $UIA_DocumentControlTypeId , $treescope_subtree)
    if not isobj($oDocument) Then
        _UIA_DumpThemAll($oFF,$treescope_subtree)
    Else
        $t=stringsplit(_UIA_getPropertyValue($oDocument, $UIA_BoundingRectanglePropertyId),";")
        _DrawRect($t[1],$t[3]+$t[1],$t[2],$t[4]+$t[2])
    EndIf

    sleep(500)

consolewrite("Action 7 retrieve document after clicking a hyperlink" & @CRLF)
    $oForumLink=_UIA_getObjectByFindAll($oDocument,"name:=Forum", $treescope_subtree)
;~ All document items
    if not isobj($oForumLink) Then
        _UIA_DumpThemAll($oDocument,$treescope_subtree)
    EndIf
    _UIA_action($oForumLink,"leftclick")
    sleep(3000)

consolewrite("Action 8 first refresh the document control" & @CRLF)

    $oDocument=_UIA_getFirstObjectOfElement($oFF,"controltype:=" & $UIA_DocumentControlTypeId , $treescope_subtree)
    if not isobj($oDocument) Then
        _UIA_DumpThemAll($oFF,$treescope_subtree)
    Else
        $t=stringsplit(_UIA_getPropertyValue($oDocument, $UIA_BoundingRectanglePropertyId),";")
        _DrawRect($t[1],$t[3]+$t[1],$t[2],$t[4]+$t[2])
    EndIf

;~ Now we get the searchfield

    $oEdtSearchForum=_UIA_getObjectByFindAll($oDocument,"name:=Search...", $treescope_subtree)
    if not isobj($oEdtSearchForum) Then
        _UIA_DumpThemAll($oDocument,$treescope_subtree)
    EndIf
    _UIA_action($oEdtSearchForum,"focus")
    _UIA_action($oEdtSearchForum,"setvalue using keys","Chrome can easy be automated with ui automation") ; {ENTER}")
    sleep(500)

;~ Exit
;~ Now we press the button, see relative syntax used as the button seems not to have a name its just 2 objects further then search field
    $oBtnSearch=_UIA_getObjectByFindAll($oDocument,"name:=Search...; indexrelative:=4", $treescope_subtree)
    if not isobj($oBtnSearch) Then
        _UIA_DumpThemAll($oDocument,$treescope_subtree)
    EndIf
    $t=stringsplit(_UIA_getPropertyValue($oDocument, $UIA_BoundingRectanglePropertyId),";")
    _DrawRect($t[1],$t[3]+$t[1],$t[2],$t[4]+$t[2])
    sleep(1000)
    _UIA_action($oBtnSearch,"leftclick")
    sleep(2000)

;~ consolewrite("Action 9 first refresh the document control" & @CRLF)

    $oDocument=_UIA_getFirstObjectOfElement($oFF,"controltype:=" & $UIA_DocumentControlTypeId , $treescope_subtree)
    if not isobj($oDocument) Then
        _UIA_DumpThemAll($oDocument,$treescope_subtree)
    EndIf
    $oHyperlink=_UIA_getObjectByFindAll($oDocument,"name:=controlsend doesn't work; controltype:=edit", $treescope_subtree)
    if not isobj($oBtnSearch) Then
        _UIA_DumpThemAll($oDocument,$treescope_subtree)
    EndIf
    sleep(1000)
    _UIA_action($oHyperlink,"leftclick")
    sleep(2000)

EndIf

exit
