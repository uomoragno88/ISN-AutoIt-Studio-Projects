#region Includes
#include <FF.au3>
#include <FFEx.au3>
#endregion Includes

If _FFConnect() Then
	; access to the jabbify IM on webpages (iframe)
	If _FFFrameEnter("JABBIFYNAME", "name") Then
		$sName = "test"
		$sObj = _FFXPath("//div[@id='jabbify']//form/input", "", 9)
		_FFObj($sObj, "value", $sName)
		_FFDispatchKeyEvent($sObj, 13)

		$sText = "it works ..."
		$sObj = _FFXPath("//div[@id='jabbify']//textarea", "", 9)
		_FFObj($sObj, "value", $sText)
		_FFDispatchKeyEvent($sObj, 13)

		_FFFrameLeave()
	EndIf
EndIf

