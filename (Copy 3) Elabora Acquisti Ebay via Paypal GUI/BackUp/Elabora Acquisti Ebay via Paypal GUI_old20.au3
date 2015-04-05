#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=Images\paypal.ico
#AutoIt3Wrapper_UseX64=n
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
			Tratta_Paypal($GUI_Form)
		Case Else
			Exit
	EndSelect
EndFunc   ;==>Prosegui_click

Func Tratta_Paypal($GUI_Form)
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
	Local $s_Tablename = "Q_ACQUISTI"
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
		$sMsg = "Non ci sono acquisti da registrare! Elaborazione abortita"
		$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
		Exit
	EndIf
	
	; tratto gli ACQUISTI
	Global $i_sw_PBL
	Global $i_sw_acq
	Global $s_work_ID_transazione
	Global $s_work_ID_transazione_di_riferimento
	Global $s_work_Data
	Global $s_work_Nome
	Global $s_work_Email
	Global $s_work_URL_Oggetto
	Global $s_work_Numero_oggetto
	Global $s_work_Campo_opzionale
	Global $s_work_Valuta
	Global $s_work_Importo_netto
	Global $s_ACQUISTI_ID_ACQ, $s_ACQUISTI_ANNO_CONTABILE, $s_ACQUISTI_DOC_DI_CARICO_NUMERO
	Global $s_ACQUISTI_DOC_DI_CARICO_DATA, $s_ACQUISTI_DESCRIZIONE, $s_ACQUISTI_NUMERO_PEZZI
	Global $s_ACQUISTI_DATA_ACQUISTO, $s_ACQUISTI_FORNITORE, $s_ACQUISTI_VALUTA
	Global $s_ACQUISTI_IMPORTO_ACQ_VALUTA, $s_ACQUISTI_SEH_ACQ_VALUTA, $s_ACQUISTI_CTV_ACQ_EURO, $s_ACQUISTI_IVA_DAZIO_ACQ_EURO
	Global $s_ACQUISTI_CODICE_UNIVOCO_PAYPAL, $s_ACQUISTI_DATA_PAGAMENTO, $s_ACQUISTI_PAGAMENTO_A_MEZZO
	Global $s_ACQUISTI_DESCRIZIONE_VALUTA
	Global $s_CALCOLATO_TOTALE_ACQ_VALUTA
	Global $s_CALCOLATO_TOTALE_ACQ_EURO

	$s_ACQUISTI_SEH_ACQ_VALUTA = "0,00"
	$s_CALCOLATO_TOTALE_ACQ_VALUTA = "0,00"
	$s_CALCOLATO_TOTALE_ACQ_EURO = "0,00"
	
	Local $a_riepilogo_acquisti[20]
	Local $i_contatore_acquisti
	$i_contatore_acquisti = 0

	For $i_row = $i_max_row To 1 Step -1
		$s_works_tipo = $ItemArray[$i_row][4]
		$s_works_tariffe = $ItemArray[$i_row][8]
		$s_works_tariffe = StringReplace($s_works_tariffe, ",", ".")
		$s_work_cod_oggetto = $ItemArray[$i_row][17]
		Select
			Case $s_works_tipo = "Conversione di valuta"
				$s_work_ID_transazione_di_riferimento = $ItemArray[$i_row][31]
				$s_work_Valuta = $ItemArray[$i_row][6]
				$s_work_Importo_netto = $ItemArray[$i_row][9]
				Select
					Case $s_work_Valuta = "EUR"
						$s_ACQUISTI_CTV_ACQ_EURO = StringReplace($s_work_Importo_netto, "-", "")
					Case $s_work_Valuta <> "EUR"
						$s_ACQUISTI_VALUTA = $s_work_Valuta
						$s_ACQUISTI_IMPORTO_ACQ_VALUTA = $s_work_Importo_netto
				EndSelect
			Case $s_works_tipo = "Pagamento con procedura rapida inviato"
				If $ItemArray[$i_row][3] = "Pitney Bowes Limited" Then
					$i_sw_PBL = 1
					$i_sw_acq = 1
				ElseIf $s_work_cod_oggetto <> "" Then
					$i_sw_acq = 1
					$i_sw_PBL = 0
				Else
					$i_sw_acq = 0
					$i_sw_PBL = 0
				EndIf
				
				If $i_sw_acq Then
					$s_work_ID_transazione = $ItemArray[$i_row][12]
					If $s_work_ID_transazione = $s_work_ID_transazione_di_riferimento Then
					Else
						$sMsg = "Disallineamento record di input! Elaborazione abortita"
						$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
					EndIf
					$s_work_Nome = $ItemArray[$i_row][3]
					$s_work_Email = $ItemArray[$i_row][11]
					$s_work_URL_oggetto = $ItemArray[$i_row][27]
					$s_ACQUISTI_DOC_DI_CARICO_DATA = $ItemArray[$i_row][28]
					$s_ACQUISTI_DATA_ACQUISTO = $ItemArray[$i_row][28]
					$s_ACQUISTI_DATA_PAGAMENTO = $ItemArray[$i_row][28]
					$s_ACQUISTI_DESCRIZIONE = $ItemArray[$i_row][16]
					$s_ACQUISTI_FORNITORE = $ItemArray[$i_row][3]
					$s_ACQUISTI_CODICE_UNIVOCO_PAYPAL = $ItemArray[$i_row][12]
					$s_ACQUISTI_PAGAMENTO_A_MEZZO = "PAYPAL"
					; vedi se Pitney Bowes Limited
					Select
						Case $i_sw_PBL
							$s_ACQUISTI_FORNITORE = $ItemArray[$i_row][3]
							$s_ACQUISTI_DESCRIZIONE = "S.& H."
							$s_ACQUISTI_DOC_DI_CARICO_DATA = $ItemArray[$i_row][0]
							$s_ACQUISTI_DATA_ACQUISTO = $ItemArray[$i_row][0]
							$s_ACQUISTI_DATA_PAGAMENTO = $ItemArray[$i_row][0]
							If $i_sw_PBL Then
							Else
								$sMsg = "Disallineamento record di input! Elaborazione abortita"
								$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
							EndIf
					EndSelect
					; recupero dati dall'ultimo record inserito
					Local $s_query
					$s_query = "SELECT * FROM " & $s_Tablename & ""
					$i_cod_ritorno = RecordSearchLast($s_dbname, $s_query, $o_Con)
					If Not $i_cod_ritorno Then
						Exit
					EndIf
					; incremento $s_ACQUISTI_ID_ACQ, $s_ACQUISTI_DOC_DI_CARICO_NUMERO
					$s_ACQUISTI_DOC_DI_CARICO_NUMERO = $s_ACQUISTI_DOC_DI_CARICO_NUMERO + 1
					Global $s_work_ID_ACQ = IncrementaID_ACQ($s_ACQUISTI_ID_ACQ, $s_ACQUISTI_DATA_ACQUISTO)
					; recupero ID fornitore
					$s_work_Nome = "'" & $s_work_Nome & "'"
					$s_query = "SELECT * FROM FORNITORI WHERE COD_FORNITORE =" & $s_work_Nome & ""
					$s_ACQUISTI_FORNITORE = RicercaID_Fornitore($s_dbname, $s_query, $o_Con)
					; recupero descizione valuta
					$s_work_Valuta = "'" & $s_work_Valuta & "'"
					$s_query = "SELECT * FROM VALUTE WHERE ID_VALUTA =" & $s_work_Valuta & ""
					$s_ACQUISTI_VALUTA = RicercaDescr_Valuta($s_dbname, $s_query, $o_Con)
					$s_work_Valuta = StringReplace($s_work_Valuta, "'", "")

					; campi calcolati
					$s_CALCOLATO_TOTALE_ACQ_VALUTA = StringReplace($s_ACQUISTI_IMPORTO_ACQ_VALUTA, ",", ".") _
							 + StringReplace($s_ACQUISTI_SEH_ACQ_VALUTA, ",", ".")
					$s_CALCOLATO_TOTALE_ACQ_VALUTA = StringReplace($s_CALCOLATO_TOTALE_ACQ_VALUTA, ".", ",")
					; imposto il form
					GUICtrlSetData($h_ID_ACQ_DATA, $s_work_ID_ACQ)
					GUICtrlSetData($h_ANNO_CONTABILE_DATA, $s_ACQUISTI_ANNO_CONTABILE)
					GUICtrlSetData($h_DOCUMENTO_DI_CARICO_DATA, $s_ACQUISTI_DOC_DI_CARICO_NUMERO)
					GUICtrlSetData($h_DOCUMENTO_DI_CARICO_DATA_DATA, $s_ACQUISTI_DATA_ACQUISTO)
					GUICtrlSetData($h_DESCRIZIONE_DATA, $s_ACQUISTI_DESCRIZIONE)
;~ 					GUICtrlSetData($h_NUMERO_PEZZI, $s_work_ID_ACQ)
					If $i_sw_PBL Then
						GUICtrlSetData($h_NUMERO_PEZZI, 1)
					EndIf
					GUICtrlSetData($h_DATA_ACQUISTO_DATA, $s_ACQUISTI_DATA_ACQUISTO)
					GUICtrlSetData($h_FORNITORE_DATA, $ItemArray[$i_row][3])
					GUICtrlSetData($h_VALUTA_DATA, $s_ACQUISTI_VALUTA)
					GUICtrlSetData($h_IMP_IN_VALUTA_DATA, $s_ACQUISTI_IMPORTO_ACQ_VALUTA)
					GUICtrlSetData($h_SHE_IN_VALUTA_DATA, $s_ACQUISTI_SEH_ACQ_VALUTA)
					GUICtrlSetData($h_TOT_IN_VALUTA_DATA, $s_CALCOLATO_TOTALE_ACQ_VALUTA)
					GUICtrlSetData($h_CTV_IN_EURO_DATA, $s_ACQUISTI_CTV_ACQ_EURO)
					GUICtrlSetData($h_CODICE_PAYPAL_DATA, $s_ACQUISTI_CODICE_UNIVOCO_PAYPAL)
					GUICtrlSetData($h_DATA_PAGAMENTO_DATA, $s_ACQUISTI_DATA_PAGAMENTO)
					GUICtrlSetData($h_MEZZO_PAGAMENTO_DATA, $s_ACQUISTI_PAGAMENTO_A_MEZZO)
					; Switch to GetMessage mode
					Local $iOnEventMode = Opt("GUIOnEventMode", 0), $iMsg
					While 1
						$iMsg = GUIGetMsg() ; Variable needed to check which "Copy" button was pressed
						Switch $iMsg
							Case $hProsegui
;~ 								ExitLoop
							Case $h_Apri_URL
								ShellExecute($s_work_URL_oggetto)
								ContinueLoop
							Case $hSalta
								ExitLoop								
							Case $hChiudi
								Exit
							Case $hCopia
;~ 								ExitLoop
							Case $hInserisci
								$s_ACQUISTI_NUMERO_PEZZI = GUICtrlRead($h_NUMERO_PEZZI)
								If $s_ACQUISTI_NUMERO_PEZZI = "" Then
									$sMsg = "Digita numero pezzi e quindi premi Inserisci per proseguire"
									$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
									ContinueLoop
								EndIf
								$s_query = "SELECT * FROM ACQUISTI"
								$i_cod_ritorno = RegistraAcquisto($s_dbname, $s_query, $o_Con)
								If Not $i_cod_ritorno Then
									$sMsg = "Errore in fase registrazione acquisti! Elaborazione abortita"
									$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
									Exit
								EndIf
								$s_query = "SELECT * FROM MOVIMENTI"
								$i_cod_ritorno = RegistraMovimento($s_dbname, $s_query, $o_Con)
								If Not $i_cod_ritorno Then
									$sMsg = "Errore in fase registrazione movimenti! Elaborazione abortita"
									$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
									Exit
								EndIf
								If $i_cod_ritorno Then
;~ 								aggiorna contatore acquisti elaborati
									$a_riepilogo_acquisti[$i_contatore_acquisti + 1] = $s_work_ID_ACQ
									$i_contatore_acquisti = $i_contatore_acquisti + 1
;~ 									azzera numero pezzi
									GUICtrlSetData($h_NUMERO_PEZZI, "")
									ExitLoop
								EndIf
						EndSwitch
					WEnd
					; Clear up
					Opt("GUIOnEventMode", 1) ; Reset original GUI mode
					
				EndIf

		EndSelect
	Next
	
;~ =========================
	AccessCloseConn($o_Con)
	
	$a_riepilogo_acquisti[0] = "ACQUISTI AGGIORNATI=" & $i_contatore_acquisti

	_ArrayDisplay($a_riepilogo_acquisti)

	; ripristino dei valori iniziali
	$s_provenienza = "PAYPAL"
	$s_ambiente = "PRODUZIONE"
	GUICtrlSetState($hPaypal_Image, $GUI_SHOW)
	GUICtrlSetState($hProduzione_Image, $GUI_SHOW)
	GUICtrlSetState($hTest_Image, $GUI_HIDE)
	GUICtrlSetState($hProduzione, $GUI_CHECKED)
	GUICtrlSetState($hPaypal, $GUI_CHECKED)
	; imposto il form
	GUICtrlSetData($h_ID_ACQ_DATA, "")
	GUICtrlSetData($h_ANNO_CONTABILE_DATA, "")
	GUICtrlSetData($h_DOCUMENTO_DI_CARICO_DATA, "")
	GUICtrlSetData($h_DOCUMENTO_DI_CARICO_DATA_DATA, "")
	GUICtrlSetData($h_DESCRIZIONE_DATA, "")
	GUICtrlSetData($h_NUMERO_PEZZI, "")
	GUICtrlSetData($h_DATA_ACQUISTO_DATA, "")
	GUICtrlSetData($h_FORNITORE_DATA, "")
	GUICtrlSetData($h_VALUTA_DATA, "")
	GUICtrlSetData($h_IMP_IN_VALUTA_DATA, "")
	GUICtrlSetData($h_SHE_IN_VALUTA_DATA, "")
	GUICtrlSetData($h_TOT_IN_VALUTA_DATA, "")
	GUICtrlSetData($h_CTV_IN_EURO_DATA, "")
	GUICtrlSetData($h_CODICE_PAYPAL_DATA, "")
	GUICtrlSetData($h_DATA_PAGAMENTO_DATA, "")
	GUICtrlSetData($h_MEZZO_PAGAMENTO_DATA, "")

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

Func RegistraAcquisto($s_dbname, $_query, ByRef $o_adoCon, $i_adoMDB = 1)
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
			$sMsg = "Tabella ACQUISTI vuota. Elaborazione abortita"
			$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
			Return SetError(1, 0, 0)
		EndIf
		$o_adoRs.AddNew
		$o_adoRs.Fields("ID_ACQ") = $s_work_ID_ACQ
		$o_adoRs.Fields("ANNO_CONTABILE") = $s_ACQUISTI_ANNO_CONTABILE
		$o_adoRs.Fields("DOC_DI_CARICO_NUMERO") = $s_ACQUISTI_DOC_DI_CARICO_NUMERO
		$o_adoRs.Fields("DOC_DI_CARICO_DATA") = $s_ACQUISTI_DATA_ACQUISTO
		$o_adoRs.Fields("DESCRIZIONE") = $s_ACQUISTI_DESCRIZIONE
		$o_adoRs.Fields("NUMERO_PEZZI") = $s_ACQUISTI_NUMERO_PEZZI
		$o_adoRs.Fields("DATA_ACQUISTO") = $s_ACQUISTI_DATA_ACQUISTO
		$o_adoRs.Fields("FORNITORE") = $s_ACQUISTI_FORNITORE
		$o_adoRs.Fields("VALUTA") = $s_work_Valuta
		$o_adoRs.Fields("IMPORTO_ACQ_VALUTA") = $s_ACQUISTI_IMPORTO_ACQ_VALUTA
		$o_adoRs.Fields("SEH_ACQ_VALUTA") = $s_ACQUISTI_SEH_ACQ_VALUTA
		$o_adoRs.Fields("CTV_ACQ_EURO") = $s_ACQUISTI_CTV_ACQ_EURO
		$o_adoRs.Fields("CODICE_UNIVOCO_PAYPAL") = $s_ACQUISTI_CODICE_UNIVOCO_PAYPAL
		$o_adoRs.Fields("DATA_PAGAMENTO") = $s_ACQUISTI_DATA_PAGAMENTO
		$o_adoRs.Fields("PAGAMENTO_A_MEZZO") = "1"
		If $i_sw_PBL Then
			$o_adoRs.Fields("NOTE") = $s_ACQUISTI_DESCRIZIONE
		EndIf
		$o_adoRs.Update

	EndWith
	$o_adoRs.Close
	If $i_NeedToCloseInFunc Then $o_adoCon.Close
	Return 1
EndFunc   ;==>RegistraAcquisto

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
			$sMsg = "La tabella Acquisti è vuota. Elaborazione abortita"
			$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
			Return SetError(1, 0, 0)
		EndIf

		$o_adoRs.MoveLast
		$s_ACQUISTI_ID_ACQ = $o_adoRs("ID_ACQ").Value
		$s_ACQUISTI_ANNO_CONTABILE = $o_adoRs("ANNO_CONTABILE").Value
		$s_ACQUISTI_DOC_DI_CARICO_NUMERO = $o_adoRs("DOC_DI_CARICO_NUMERO").Value

	EndWith
	$o_adoRs.Close
	If $i_NeedToCloseInFunc Then $o_adoCon.Close
	Return 1
EndFunc   ;==>RecordSearchLast

Func IncrementaID_ACQ($s_ACQUISTI_ID_ACQ, $s_ACQUISTI_DATA_ACQUISTO)
	local $s_workID
	local $s_workID_anno
	local $s_workID_mese
	local $s_workID_prog
	local $S_workData_mese
	local $S_workData_anno

	$s_workID_anno = StringLeft($s_ACQUISTI_ID_ACQ, 4)
	$s_workID_mese = StringMid($s_ACQUISTI_ID_ACQ, 5, 2)
	$s_workID_prog = StringRight($s_ACQUISTI_ID_ACQ, 2)
	$S_workData_mese = StringMid($s_ACQUISTI_DATA_ACQUISTO, 4, 2)
	$S_workData_anno = StringRight($s_ACQUISTI_DATA_ACQUISTO, 4)
	
	Select
		case $s_workID_anno = $S_workData_anno
			If $s_workID_mese = $S_workData_mese Then
				$s_workID_prog = $s_workID_prog + 1
			Else
				$s_workID_mese = $S_workData_mese
				$s_workID_prog = "01"
			EndIf
		case $s_workID_anno <> $S_workData_anno
			$s_workID_anno = $S_workData_anno
			$s_workID_mese = $S_workData_mese
			$s_workID_prog = "01"
			$s_ACQUISTI_ANNO_CONTABILE = $S_workData_anno
			$s_ACQUISTI_DOC_DI_CARICO_NUMERO = "01"
			$sMsg = "Sono stati impostati i dati per un nuovo anno contabile"
			$iRetValue = _ExtMsgBox($EMB_ICONINFO, "OK", "Informazione", $sMsg)
	EndSelect
	
	local $i_lung
	$i_lung = StringLen($s_workID_mese)
	If $i_lung < 2 Then
ConsoleWrite('@@ Debug(' & @ScriptLineNumber & ') : $i_lung = ' & $i_lung & @crlf & '>Error code: ' & @error & @crlf) ;### Debug Console
		$s_workID_mese = "0" & $s_workID_mese
ConsoleWrite('@@ Debug(' & @ScriptLineNumber & ') : $s_workID_mese = ' & $s_workID_mese & @crlf & '>Error code: ' & @error & @crlf) ;### Debug Console
	EndIf
	$i_lung = StringLen($s_workID_prog)
	If $i_lung < 2 Then
ConsoleWrite('@@ Debug(' & @ScriptLineNumber & ') : $i_lung = ' & $i_lung & @crlf & '>Error code: ' & @error & @crlf) ;### Debug Console
		$s_workID_prog = "0" & $s_workID_prog
ConsoleWrite('@@ Debug(' & @ScriptLineNumber & ') : $s_workID_prog = ' & $s_workID_prog & @crlf & '>Error code: ' & @error & @crlf) ;### Debug Console
	EndIf
	
	$s_workID = $s_workID_anno & $s_workID_mese & $s_workID_prog
ConsoleWrite('@@ Debug(' & @ScriptLineNumber & ') : $s_workID = ' & $s_workID & @crlf & '>Error code: ' & @error & @crlf) ;### Debug Console
	Return $s_workID
	
EndFunc   ;==>IncrementaID_ACQ

Func AccessCloseConn($o_adoCon)
	$o_adoCon.Close
EndFunc   ;==>AccessCloseConn

Func RicercaID_Fornitore($s_dbname, $_query, ByRef $o_adoCon, $i_adoMDB = 1)
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
			$sMsg = "Il fornitore non è censito. Elaborazione abortita"
			$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
			Return SetError(1, 0, 0)
		EndIf

		$s_work_ID_FORNITORE = $o_adoRs("ID_FORNITORE").Value

	EndWith
	$o_adoRs.Close
	If $i_NeedToCloseInFunc Then $o_adoCon.Close
	Return $s_work_ID_FORNITORE
EndFunc   ;==>RicercaID_Fornitore

Func RicercaDescr_Valuta($s_dbname, $_query, ByRef $o_adoCon, $i_adoMDB = 1)
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
			$sMsg = "La valuta non e' censita. Elaborazione abortita"
			$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
			Return SetError(1, 0, 0)
		EndIf

		$s_work_DESCR_VALUTA = $o_adoRs("DESCRIZIONE_VALUTA").Value

	EndWith
	$o_adoRs.Close
	If $i_NeedToCloseInFunc Then $o_adoCon.Close
	Return $s_work_DESCR_VALUTA
EndFunc   ;==>RicercaDescr_Valuta

Func RegistraMovimento($s_dbname, $_query, ByRef $o_adoCon, $i_adoMDB = 1)
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
			$sMsg = "Tabella MOVIMENTI vuota. Elaborazione abortita"
			$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
			Return SetError(1, 0, 0)
		EndIf
		$o_adoRs.AddNew
		$o_adoRs.Fields("DATA_MOV") = $s_ACQUISTI_DATA_ACQUISTO
		$o_adoRs.Fields("CAUSALE") = "ACE"
		$o_adoRs.Fields("IMP_DARE") = $s_ACQUISTI_CTV_ACQ_EURO
		$o_adoRs.Fields("RIFERIMENTO_ACQ") = $s_work_ID_ACQ
		If $i_sw_PBL Then
			$o_adoRs.Fields("NOTE") = "S.& H."
		EndIf
		$o_adoRs.Update

	EndWith
	$o_adoRs.Close
	If $i_NeedToCloseInFunc Then $o_adoCon.Close
	Return 1
EndFunc   ;==>RegistraMovimento
