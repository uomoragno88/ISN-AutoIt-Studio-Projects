#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=Images\paypal.ico
#AutoIt3Wrapper_UseX64=n
#AutoIt3Wrapper_Run_AU3Check=n
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
; #AutoIt3Wrapper_UseX64=n perche' le librerie sono a 32bit

Global $oMyError = ObjEvent("AutoIt.Error", "MyErrFunc")

#include <File.au3>
#include <Misc.au3>
#include <Clipboard.au3>
#include <WindowsConstants.au3>
#include <Array.au3>
#include <StringConstants.au3>
#include <MsgBoxConstants.au3>
#include "CSV_Function.au3"
#include "AccessConstants.au3"
#include "ExtMsgBox.au3"
#include "Forms\GUI_Form.isf"

_ExtMsgBoxSet(0, 0, Default, Default, 11, "Calibri")

Global $s_provenienza
$s_provenienza = "PAYPAL"
Global $s_ambiente
$s_ambiente = "PRODUZIONE"

GUICtrlSetState($hPaypal_Image, $GUI_SHOW)
GUICtrlSetState($hProduzione_Image, $GUI_SHOW)
GUICtrlSetState($hTest_Image, $GUI_HIDE)

;Options
Opt("GUIOnEventMode", 1) ;Enable OnEvent functions notifications.
GUISetState(@SW_SHOW, $GUI_Form) ;Shows a previously hidden window form
GUISetOnEvent($GUI_EVENT_CLOSE, "Chiudi_click", $GUI_Form) ;dialog box being closed (either by defined button or system menu).

While 1
	Sleep(20)
	
WEnd

Func Chiudi_click() ; se cliccato il tasto "chiudi"

	Exit
EndFunc   ;==>Chiudi_click

Func Produzione_click()
	If(GUICtrlRead($hProduzione) = $GUI_CHECKED) Then
		$s_ambiente = "PRODUZIONE"
		GUICtrlSetState($hProduzione_Image, $GUI_SHOW)
		GUICtrlSetState($hTest_Image, $GUI_HIDE)
	EndIf
EndFunc   ;==>Produzione_click

Func Test_click()
	If(GUICtrlRead($hTest) = $GUI_CHECKED) Then
		$s_ambiente = "TEST"
		GUICtrlSetState($hProduzione_Image, $GUI_HIDE)
		GUICtrlSetState($hTest_Image, $GUI_SHOW)
	EndIf
EndFunc   ;==>Test_click

Func Test_Banca_click()
	If(GUICtrlRead($hTest_Banca) = $GUI_CHECKED) Then
		$s_ambiente = "TESTBANCA"
		GUICtrlSetState($hProduzione_Image, $GUI_HIDE)
		GUICtrlSetState($hTest_Image, $GUI_SHOW)
	EndIf
EndFunc   ;==>Test_Banca_click

Func Paypal_click()
	If(GUICtrlRead($hPaypal) = $GUI_CHECKED) Then
		$s_provenienza = "PAYPAL"
		GUICtrlSetState($hPaypal_Image, $GUI_SHOW)
	EndIf
EndFunc   ;==>Paypal_click

Func Prosegui_click()
	Select
		Case $s_provenienza = "PAYPAL"
			ConsoleWrite($s_provenienza & @CRLF)
			ConsoleWrite($s_ambiente & @CRLF)
			Tratta_Paypal($GUI_Form, $hArea_Comunicazioni)
		Case Else
			Exit
	EndSelect
EndFunc   ;==>Prosegui_click

Func Tratta_Paypal($GUI_Form, $hArea_Comunicazioni)
	Local $o_Con, $o_Rs
	;DATA========================================================
	Select
		Case $s_ambiente = "TEST"
			Local $s_dbname = "h:\archivi_test\bilancio.accdb"
		Case $s_ambiente = "PRODUZIONE"
			Local $s_dbname = "G:\ilgrandeblek\archivi\bilancio.accdb"
		Case $s_ambiente = "TESTBANCA"
			Local $s_dbname = "c:\users\s522733\documents\work\archivi\bilancio.accdb"
		Case Else
			Exit
	EndSelect
	Local $s_Tablename = "Q_$s_ACQUISTI"
	;CONNECT=====================================================
	AccessConnectConn($s_dbname, $o_Con, 0)

	Global $rKey = "HKCU\Control Panel\International", $sDecimal = RegRead($rKey, "sDecimal"), $sThousands = RegRead($rKey, "sThousand") ; _StringAddThousandsSep
	Global $ItemArray, $ItemLines, $HowManyColumns, $OldProgress, $List, $Progress
	Global $SetColumnWidths = True ;			Sets optimum column widths automatically, roughly doubles total time
	Global $Delimiter ;							Parts of europe typically default to semicolon, thanks to UEZ!
	Global $Font = "Comic Sans MS", $Underline = False, $UnderValue
	Global $FontSize = 9, $FontWeight = 400 ;	Do NOT change these values
	If $Underline Then
		$UnderValue = 4
	Else
		$UnderValue = 0
	EndIf

	$File = FileOpenDialog("Select a TXT File", @DesktopDir, "TAB Files (*.txt)")
	$Input = FileRead($File)
	$Delimiter = @TAB

	$ItemArray = _CSVSplit($Input, $Delimiter)
	_ArrayDisplay($ItemArray)
	$ItemLines = UBound($ItemArray)
	$HowManyColumns = UBound($ItemArray, 2)
;~ ======================
;~ 	; prima riga utile contenete dati = 3
;~ 	; determino ulimo record utile contenete dati
;~ 	Local $s_work, $i_row, $i_max_row
;~
;~ 	For $i_row = 3 To $ItemLines
;~ 		$s_work = $ItemArray[$i_row][0]
;~ 		If $s_work = "" Then
;~ 			$i_max_row = $i_row - 1
;~ 			ExitLoop
;~ 		EndIf
;~ 	Next
	
	; determino se esiste almeno un record relativo a pagamenti
	; inviati per acquisto merce pagat con paypal
	; il file cvs scaricato è con i dati più recenti in alto
	; per cui lo leggo in senso inverso
	Local $s_work, $i_row, $i_max_row
	Local $i_almeno1, $s_work_tipo, $s_work_cod_oggetto
	$i_max_row = $ItemLines - 1
	$i_almeno1 = 0
	
	For $i_row = $i_max_row To 1 Step -1
		$s_works_tipo = $ItemArray[$i_row][4]
		$s_work_cod_oggetto = $ItemArray[$i_row][17]
		Select
			Case $s_works_tipo = "Pagamento con procedura rapida inviato"
				If $s_work_cod_oggetto <> "" Then ; e' un acquisto ebay
					$i_almeno1 = 1
					ExitLoop
				EndIf
		EndSelect
	Next
	
	If $i_almeno1 Then
	Else
		$sMsg = "Non ci sono $s_ACQUISTI da registrare! Elaborazione abortita"
		$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
		Exit
	EndIf
	
	; tratto gli $s_ACQUISTI
	Local $s_TAB_ID_transazione
	Local $s_TAB_ID_transazione_di_riferimento
	Local $s_TAB_Data
	Local $s_TAB_Nome
	Local $s_TAB_Email
	Local $s_TAB_Numero_oggetto
	Local $s_TAB_Campo_opzionale
	Local $s_TAB_Valuta
	Local $s_TAB_Importo_netto
	Local $s_ACQUISTI_ID_ACQ, $s_ACQUISTI_ANNO_CONTABILE, $s_ACQUISTI_DOC_DI_CARICO_NUMERO
	Local $s_ACQUISTI_DOC_DI_CARICO_DATA, $s_ACQUISTI_DESCRIZIONE, $s_ACQUISTI_NUMERO_PEZZI
	Local $s_ACQUISTI_DATA_ACQUISTO, $s_ACQUISTI_FORNITORE, $s_ACQUISTI_VALUTA
	Local $s_ACQUISTI_IMPORTO_ACQ_VALUTA, $s_ACQUISTI_SEH_ACQ_VALUTA, $s_ACQUISTI_CTV_ACQ_EURO, $s_ACQUISTI_IVA_DAZIO_ACQ_EURO
	Local $s_ACQUISTI_CODICE_UNIVOCO_PAYPAL, $s_ACQUISTI_DATA_PAGAMENTO, $s_ACQUISTI_PAGAMENTO_A_MEZZO

	For $i_row = $i_max_row To 1 Step -1
		$s_works_tipo = $ItemArray[$i_row][4]
		$s_works_tariffe = $ItemArray[$i_row][8]
		$s_works_tariffe = StringReplace($s_works_tariffe, ",", ".")
		$s_work_cod_oggetto = $ItemArray[$i_row][17]
		Select
			Case $s_works_tipo = "Conversione di valuta"
				$s_TAB_ID_transazione_di_riferimento = $ItemArray[$i_row][31]
				$s_TAB_Valuta = $ItemArray[$i_row][6]
				$s_TAB_Importo_netto = $ItemArray[$i_row][9]
				Select
					Case $s_TAB_Valuta = "EUR"
						$s_ACQUISTI_CTV_ACQ_EURO = StringReplace($s_TAB_Importo_netto, "-", "")
					Case $s_TAB_Valuta <> "EUR"
						$s_ACQUISTI_VALUTA = $s_TAB_Valuta
						$s_ACQUISTI_IMPORTO_ACQ_VALUTA = $s_TAB_Importo_netto
				EndSelect
			Case $s_works_tipo = "Pagamento con procedura rapida inviato"
				If $s_work_cod_oggetto <> "" Then 
					$s_TAB_ID_transazione = $ItemArray[$i_row][12]
					If $s_TAB_ID_transazione = $s_TAB_ID_transazione_di_riferimento Then
					Else
						;;;;;;;;;;errore grave
					EndIf
					$s_TAB_Nome = $ItemArray[$i_row][3]
					$s_TAB_Email = $ItemArray[$i_row][11]
					$s_ACQUISTI_DOC_DI_CARICO_DATA = $ItemArray[$i_row][28]
					$s_ACQUISTI_DATA_ACQUISTO = $ItemArray[$i_row][28]
					$s_ACQUISTI_DATA_PAGAMENTO = $ItemArray[$i_row][28]
					$s_ACQUISTI_DESCRIZIONE = $ItemArray[$i_row][16]
					$s_ACQUISTI_FORNITORE = $ItemArray[$i_row][3]
					$s_ACQUISTI_CODICE_UNIVOCO_PAYPAL = $ItemArray[$i_row][12]
					$s_ACQUISTI_PAGAMENTO_A_MEZZO = "PAYPAL"
				EndIf
			Local $s_query
			$s_query = "SELECT * FROM " & $s_Tablename & ""
			$i_cod_ritorno = RecordSearchLast($s_dbname, $s_query, $o_Con)
		EndSelect
	Next
	
;~ =========================
	AccessCloseConn($o_Con)

	; ripristino dei valori iniziali
	$s_provenienza = "PAYPAL"
	$s_ambiente = "PRODUZIONE"
	GUICtrlSetState($hPaypal_Image, $GUI_SHOW)
	GUICtrlSetState($hProduzione_Image, $GUI_SHOW)
	GUICtrlSetState($hTest_Image, $GUI_HIDE)
	GUICtrlSetData($hArea_Comunicazioni, "")
	GUICtrlSetState($hProduzione, $GUI_CHECKED)
	GUICtrlSetState($hPaypal, $GUI_CHECKED)

;~ 	Exit
EndFunc   ;==>Tratta_Paypal

Func AccessConnectConn($s_dbname, ByRef $o_adoCon, $i_adoMDB = 1)
	$o_adoCon = ObjCreate("ADODB.Connection")
	If Not $i_adoMDB Then $o_adoCon.Open("Provider=Microsoft.ACE.OLEDB.12.0; Data Source=" & $s_dbname & ";")
	;If $i_adoMDB Then $o_adoCon.Open ("Driver={Microsoft Access Driver (*.mdb)};Dbq=" & $s_dbname")
	Return $o_adoCon
EndFunc   ;==>AccessConnectConn

Func MyErrFunc()
	;#cs
	$HexNumber = Hex($oMyError.number, 8)
	MsgBox(0, "AutoItCOM Test", "We intercepted a COM Error !" & @CRLF & @CRLF & _
			"err.description is: " & @TAB & $oMyError.description & @CRLF & _
			"err.windescription:" & @TAB & $oMyError.windescription & @CRLF & _
			"err.number is: " & @TAB & $HexNumber & @CRLF & _
			"err.lastdllerror is: " & @TAB & $oMyError.lastdllerror & @CRLF & _
			"err.scriptline is: " & @TAB & $oMyError.scriptline & @CRLF & _
			"err.source is: " & @TAB & $oMyError.source & @CRLF & _
			"err.helpfile is: " & @TAB & $oMyError.helpfile & @CRLF & _
			"err.helpcontext is: " & @TAB & $oMyError.helpcontext _
			)
	;#ce
	SetError(1) ; to check for after this function returns
EndFunc   ;==>MyErrFunc

Func RecordSearch($s_dbname, $_query, ByRef $o_adoCon, _
		$s_Qta_Oggetto, $s_Data_Vendita_Oggetto, $s_Prezzo_Oggetto, _
		$s_Spedizione_Oggetto, $s_Ebay_Altro, $s_venditore, $s_ID_Vendita, $i_adoMDB = 1)
	If Not IsObj($o_adoCon) Then
		AccessConnectConn($s_dbname, $o_adoCon)
		$i_NeedToCloseInFunc = 1
	Else
		$i_NeedToCloseInFunc = 0
	EndIf
	$o_adoRs = ObjCreate("ADODB.Recordset")
	$o_adoRs.CursorType = $adOpenKeyset
	$o_adoRs.LockType = $adLockOptimistic
	$o_adoRs.Open($_query, $o_adoCon)
	With $o_adoRs
		If Not $o_adoRs.RecordCount Then
;~ 			MsgBox($MB_OK, "Errore", "non ci sono record da aggiornare!")
			$sMsg = "Non ci sono record da aggiornare! Elaborazione abortita"
			$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
;~ 			MsgBox
			Return SetError(1, 0, 0)
		EndIf
		If $o_adoRs.RecordCount < $s_Qta_Oggetto Then
;~ 			MsgBox($MB_OK, "Errore", "quantita' maggiore dei record da aggiornare !")
			$sMsg = "Quantita' maggiore dei record da aggiornare! Elaborazione abortita"
			$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
			Return SetError(2, 0, 0)
		EndIf
		Local $i_ind_rs
		$i_ind_rs = 0
		Do
			$i_ind_rs = $i_ind_rs + 1
			$o_adoRs.Fields("TIPO_USCITA") = 1
			$o_adoRs.Fields("DATA_USCITA") = $s_Data_Vendita_Oggetto
			$o_adoRs.Fields("IMPORTO_USCITA") = $s_Prezzo_Oggetto
			$o_adoRs.Fields("SPESE_POSTALI_USCITA") = $s_Spedizione_Oggetto
			$o_adoRs.Fields("EBAY_ALTRO") = $s_Ebay_Altro
			$o_adoRs.Fields("EBAY_VENDITORE") = $s_venditore
			$o_adoRs.Fields("ID_EBAY") = $s_ID_Vendita
			$o_adoRs.Update
			$o_adoRs.MoveNext
		Until $i_ind_rs = $s_Qta_Oggetto

	EndWith
	$o_adoRs.Close
	If $i_NeedToCloseInFunc Then $o_adoCon.Close
	Return 1
EndFunc   ;==>RecordSearch

Func RecordSearchLast($s_dbname, $_query, ByRef $o_adoCon, $i_adoMDB = 1)
	If Not IsObj($o_adoCon) Then
		AccessConnectConn($s_dbname, $o_adoCon)
		$i_NeedToCloseInFunc = 1
	Else
		$i_NeedToCloseInFunc = 0
	EndIf
	$o_adoRs = ObjCreate("ADODB.Recordset")
	$o_adoRs.CursorType = $adOpenKeyset
	$o_adoRs.LockType = $adLockOptimistic
	$o_adoRs.Open($_query, $o_adoCon)
	With $o_adoRs
		If Not $o_adoRs.RecordCount Then
			$sMsg = "La tabella Acquisti è vuota"
			$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
			Return SetError(1, 0, 0)
		EndIf

		$o_adoRs.MoveLast
		Local $s_pippo
		$s_pippo = $o_adoRs.Fields("ID_ACQ")

	EndWith
	$o_adoRs.Close
	If $i_NeedToCloseInFunc Then $o_adoCon.Close
	Return 1
EndFunc   ;==>RecordSearchLast

Func AccessCloseConn($o_adoCon)
	$o_adoCon.Close
EndFunc   ;==>AccessCloseConn
