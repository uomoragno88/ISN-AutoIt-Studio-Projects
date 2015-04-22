Func _ArryRemoveBlanks(ByRef $arr)
  $idx = 0
  For $i = 0 To UBound($arr) - 1
    If $arr[$i] <> "" Then
      $arr[$idx] = $arr[$i]
      $idx += 1
    EndIf
  Next
  ReDim $arr[$idx]
EndFunc ;==>_ArryRemoveBlanks

;Some code just to show it working
#include <array.au3>
Dim $arr1[10]
$arr1[0] = ""
$arr1[1] = "ABC"
$arr1[2] = ""
$arr1[3] = "xyz"
$arr1[4] = "def"
$arr1[5] = ""
$arr1[6] = ""
$arr1[7] = "ffr"
$arr1[8] = ""
$arr1[9] = "Z33"

_ArrayDisplay($arr1, "Before")
_ArryRemoveBlanks($arr1)
_ArrayDisplay($arr1, "After")