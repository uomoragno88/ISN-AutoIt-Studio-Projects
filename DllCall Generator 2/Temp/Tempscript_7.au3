; ===================================================================================================================
;	--------------------		TESTS		--------------------
; ===================================================================================================================
#include <Misc.au3>		; _VersionCompare()
#include "_DLLStructDisplay.au3"

; -----------------------------------------------------------------------------------------------------------------
;	Note: in 'align 8' (default) mode, everything is aligned on a boundary divisible by ths size of the operand
;	 (i.e. byte/char = 1, starts anywhere, short/wchar=2, start on even bounds,
;	  dword/int/float/ptr(x86)=4, starts on divisble-by-4 boundary,
;	  int64/double/ptr(x64)=8, starts on divisible-by-8 bound)
;	Also, architecture-dependent values, are either:
;	  4 bytes (on 4-byte boundary) on x86, or 8 bytes ('' 8-byte boundary) on x64:
;		lparam, wparam, lresult, int_ptr, long_ptr, uint_ptr, ulong_ptr
; ===================================================================================================================
Local $sStructStr="Align 16;Short Albi;byte;hwnd;char;align 8;byte;short[2];dword;byte;short;byte;int64;char[9];int64;byte;" & _
	"byte;ptr;char;double;short;wchar[3];byte;float;byte;uint_ptr;byte;int;byte[13];word 2bytes;handle isptr;hwnd isalsoptr;" & _
	"boolean isbyte[2];bool isint;dword_ptr;long_ptr;ulong_ptr;lparam;wparam;lresult;byte;"

; Version 3.3.7.2+: Struct/EndStruct addition
If _VersionCompare(@AutoItVersion,'3.3.7.0')>0 Then
	$sStructStr&="Struct asd;ptr;byte WithInStruct;EndStruct asd;byte"
EndIf

Local $stStruct=DllStructCreate($sStructStr)
If @error Then Exit ConsoleWrite("DLLStructCreate @error="&@error&@CRLF)
If Not _DLLStructDisplay($stStruct,$sStructStr,"Randomness") Then ConsoleWrite("_DLLStructDisplay failed, @error="&@error&@CRLF)

