#include <IE.au3>
#include <Array.au3>

$oIE = _IECreate ('http://www.google.com', 0, 1, 1)
$oForm = _IEFormGetObjByName ($oIE, "f")
$oQuery = _IEFormElementGetObjByName ($oForm, "q")
_IEFormElementSetValue ($oQuery, "AutoIt IE.au3")
_IEFormSubmit ($oForm )
$oLinks = _IELinkGetCollection ($oIE)
$iNumLinks = @extended
$_Display=0
Dim $_LinkArray[1]

For $oLink In $oLinks
    If $_Display Then _ArrayAdd ( $_LinkArray, $oLink.href )
    If StringInStr ( $oLink.href, 'advanced_search?' ) <> 0 Then $_Display=1
    If StringInStr ( $oLink.href, 'google.com/support' ) <> 0 Then ExitLoop
Next

$_LinkArray = _DeleteArrayElementWithStringInstr ( $_LinkArray, 'webcache.' )
$_LinkArray = _DeleteArrayElementWithStringInstr ( $_LinkArray, 'search?' )
_ArrayDisplay ( $_LinkArray )
_IEQuit ( $oIE )

Exit

Func _DeleteArrayElementWithStringInstr ( $_Array, $_String )
    Local $_Item
    For $_Element In $_Array
        If StringInStr ( $_Element, $_String ) <> 0 Then
            _ArrayDelete ( $_Array, $_Item )
        Else
            $_Item+=1
        EndIf
    Next
    Return $_Array
EndFunc ;==> _DeleteArrayElementWithStringInstr ( )