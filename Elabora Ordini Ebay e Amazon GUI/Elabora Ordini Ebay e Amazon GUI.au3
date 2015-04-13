#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=Images\1427471026_73230.ico
#AutoIt3Wrapper_UseX64=n
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Res_File_Add=H:\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\Images\amazon.jpg
#AutoIt3Wrapper_Res_File_Add=H:\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\Images\ebay.jpg
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
Global $s_ambiente
Global $s_versione

$s_provenienza = "EBAY"
$s_ambiente = "PRODUZIONE"
$s_versione = "versione 1.00"

GUICtrlSetState($hEbay_Image, $GUI_SHOW)
GUICtrlSetState($hAmazon_Image, $GUI_HIDE)
GUICtrlSetState($hProduzione_Image, $GUI_SHOW)
GUICtrlSetState($hTest_Image, $GUI_HIDE)
GUICtrlSetData($hVersione, $s_versione)

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

Func Ebay_click()
	If(GUICtrlRead($hEbay) = $GUI_CHECKED) Then
		$s_provenienza = "EBAY"
		GUICtrlSetState($hEbay_Image, $GUI_SHOW)
		GUICtrlSetState($hAmazon_Image, $GUI_HIDE)
	EndIf
EndFunc   ;==>Ebay_click

Func Amazon_click()
	If(GUICtrlRead($hAmazon) = $GUI_CHECKED) Then
		$s_provenienza = "AMAZON"
		GUICtrlSetState($hEbay_Image, $GUI_HIDE)
		GUICtrlSetState($hAmazon_Image, $GUI_SHOW)
	EndIf
EndFunc   ;==>Amazon_click

Func Prosegui_click()
	Select
		Case $s_provenienza = "EBAY"
			ConsoleWrite($s_provenienza & @CRLF)
			ConsoleWrite($s_ambiente & @CRLF)
			Tratta_Ebay($GUI_Form, $hArea_Comunicazioni)
		Case $s_provenienza = "AMAZON"
			ConsoleWrite($s_provenienza & @CRLF)
			ConsoleWrite($s_ambiente & @CRLF)
			Tratta_Amazon($GUI_Form, $hArea_Comunicazioni)
		Case Else
			Exit
	EndSelect
EndFunc   ;==>Prosegui_click

Func Tratta_Amazon($GUI_Form, $hArea_Comunicazioni)
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
	Local $s_Tablename = "Q_VENDITE"
	;CONNECT=====================================================
	AccessConnectConn($s_dbname, $o_Con, 0)

	Local $a_distinta_Amazon
	Local $s_work_distinta_Amazon
	Local $i_offset
	Local $i_offset_ok

	$sMsg = "Copia il contenuto della distinta di imballaggio di Amazon nella clipboard. Quindi premi OK"
	$iRetValue = _ExtMsgBox($EMB_ICONINFO, "OK", "Copia", $sMsg)

	Do
		$i_offset_ok = 0
		$s_work_distinta_Amazon = ClipGet()
		$a_distinta_Amazon = StringSplit($s_work_distinta_Amazon, @CRLF, 1)
;~ 	_ArrayDisplay($a_distinta_Amazon)
		Select
			Case $a_distinta_Amazon[0] = 24
				$i_offset = 0
				$i_offset_ok = 1
			Case $a_distinta_Amazon[0] = 25
				$i_offset = 1
				$i_offset_ok = 1
			Case Else
				$i_offset_ok = 0
		EndSelect
		if Not $i_offset_ok Then
			$sMsg = "Errore selezione. Riprova quindi premi OK"
			$iRetValue = _ExtMsgBox($EMB_ICONINFO, "OK", "Copia", $sMsg)
		EndIf
	Until $i_offset_ok

	Local $s_venditore = StringTrimLeft($a_distinta_Amazon[12 + $i_offset], 15)
	$s_venditore = StringStripWS($s_venditore, $STR_STRIPALL)
	$s_venditore = StringUpper($s_venditore)

	Local $a_Ordini_Aggiornati[10]
	Local $i_Ordini_Aggiornati
	$i_Ordini_Aggiornati = 0

	Local $i_ind
	Local $s_ID_Vendita
	Local $s_Nome_Acquirente
	Local $s_Indirizzo_Acquirente1
	Local $s_Indirizzo_Acquirente2
	Local $s_Citta_Acquirente
	Local $s_Stato_Acquirente
	Local $s_CAP_Acquirente
	Local $s_Paese_Acquirente
	Local $s_Numero_Oggetto
	Local $s_Qta_Oggetto
	Local $s_Prezzo_Oggetto
	Local $s_Spedizione_Oggetto
	Local $s_Data_Vendita_Oggetto

	Local $a_Etichetta[5]
	Local $s_Ebay_Altro
	Local $s_work_mese

	$a_Etichetta[0] = $a_distinta_Amazon[4]
	$a_Etichetta[1] = $a_distinta_Amazon[5]
	$a_Etichetta[2] = $a_distinta_Amazon[6]
	$a_Etichetta[3] = $a_distinta_Amazon[7]
	$a_Etichetta[4] = $a_distinta_Amazon[8]

	Local $s_work_cap = StringRight($a_Etichetta[2 + $i_offset], 5)
	Local $s_work_resto = StringLeft($a_Etichetta[2 + $i_offset], StringLen($a_Etichetta[2 + $i_offset]) - 5)
	$a_Etichetta[2 + $i_offset] = $s_work_cap & " " & $s_work_resto
	If $i_offset = 0 Then
		ReDim $a_Etichetta[4]
	EndIf

;~ 	Old _ArrayDisplay($a_Etichetta)
	Local $s_work_etk
	$s_work_etk = ""
	$s_work_etk = _ArrayToString($a_Etichetta, @CRLF)
	GUICtrlSetData($hArea_Comunicazioni, $s_work_etk)
	GUICtrlSetState($hProsegui, $GUI_FOCUS)
	; Switch to GetMessage mode
	Local $iOnEventMode = Opt("GUIOnEventMode", 0), $iMsg
	While 1
		$iMsg = GUIGetMsg() ; Variable needed to check which "Copy" button was pressed
		Switch $iMsg
			Case $hProsegui
				ExitLoop
			Case $hChiudi
				Exit
			Case $hCopia
				$s_work_etk = GUICtrlRead($hArea_Comunicazioni)
				ClipPut($s_work_etk)
		EndSwitch
	WEnd
	; Clear up
	Opt("GUIOnEventMode", 1) ; Reset original GUI mode
;~ 	fine Old  _ArrayDisplay($a_Etichetta)

	;normalizzo campi per query ed aggiornamento del recorset

	$s_Ebay_Altro = "AMAZON"

	$s_ID_Vendita = StringTrimLeft($a_distinta_Amazon[1], 19)
	$s_ID_Vendita = StringStripWS($s_ID_Vendita, $STR_STRIPALL)
	$s_ID_Vendita = StringReplace($s_ID_Vendita, "-", "")

	$s_Numero_Oggetto = StringTrimLeft($a_distinta_Amazon[15 + $i_offset], 4)
	$s_Numero_Oggetto = StringStripWS($s_Numero_Oggetto, $STR_STRIPALL)
	$s_Numero_Oggetto = "'" & $s_Numero_Oggetto & "'"

	$s_Prezzo_Oggetto = $a_distinta_Amazon[20 + $i_offset]
	;$s_Prezzo_Oggetto = StringStripWS ($s_Prezzo_Oggetto, $STR_STRIPALL)
	Local $a_work = StringSplit($s_Prezzo_Oggetto, "EUR ")
	;_ArrayDisplay($a_work)
	$s_Prezzo_Oggetto = $a_work[5]

	$s_Spedizione_Oggetto = StringTrimLeft($a_distinta_Amazon[22 + $i_offset], 11)
	;$s_Spedizione_Oggetto = StringStripWS ($s_Spedizione_Oggetto, $STR_STRIPALL)
	$a_work = StringSplit($s_Spedizione_Oggetto, "EUR ")
	;_ArrayDisplay($a_work)
	$s_Spedizione_Oggetto = $a_work[6]

	Local $a_work_QTA, $s_work_QTA
	$s_work_QTA = $a_distinta_Amazon[14 + $i_offset]
	$a_work_QTA = StringSplit($s_work_QTA, @TAB, 1)
	;_ArrayDisplay($a_work_QTA)
	$s_Qta_Oggetto = $a_work_QTA[1]
	$s_Qta_Oggetto = StringStripWS($s_Qta_Oggetto, $STR_STRIPALL)

	If $s_Qta_Oggetto > 1 Then
		Local $s_Spese_Unitarie
		$s_Spedizione_Oggetto = StringReplace($s_Spedizione_Oggetto, ",", ".")
		$s_Spese_Unitarie = $s_Spedizione_Oggetto / $s_Qta_Oggetto
		$s_Spese_Unitarie = StringReplace($s_Spese_Unitarie, ".", ",")
		$s_Spedizione_Oggetto = $s_Spese_Unitarie
	EndIf

	$s_Data_Vendita_Oggetto = StringTrimLeft($a_distinta_Amazon[9 + $i_offset], 12)
	$s_Data_Vendita_Oggetto = StringStripWS($s_Data_Vendita_Oggetto, $STR_STRIPALL)
	Local $a_work = StringSplit($s_Data_Vendita_Oggetto, "/")
	;	_ArrayDisplay($a_work)
	$s_work_mese = $a_work[2]

	Select
		Case $s_work_mese = "gen"
			$s_work_mese = "01"
		Case $s_work_mese = "feb"
			$s_work_mese = "02"
		Case $s_work_mese = "mar"
			$s_work_mese = "03"
		Case $s_work_mese = "apr"
			$s_work_mese = "04"
		Case $s_work_mese = "mag"
			$s_work_mese = "05"
		Case $s_work_mese = "giu"
			$s_work_mese = "06"
		Case $s_work_mese = "lug"
			$s_work_mese = "07"
		Case $s_work_mese = "ago"
			$s_work_mese = "08"
		Case $s_work_mese = "set"
			$s_work_mese = "09"
		Case $s_work_mese = "ott"
			$s_work_mese = "10"
		Case $s_work_mese = "nov"
			$s_work_mese = "11"
		Case $s_work_mese = "dic"
			$s_work_mese = "12"
		Case Else
			$sMsg = "Data non valita! Elaborazione abortita"
			$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
			Exit
	EndSelect
	$s_Data_Vendita_Oggetto = $a_work[1] & "/" & $s_work_mese & "/20" & $a_work[3]

	;Query; Search Records in a table and update rs ========================================================
	Local $s_query
	$s_query = "SELECT * FROM " & $s_Tablename & " WHERE ID_USCITA=" & $s_Numero_Oggetto & _
			" AND TIPO_USCITA=5"

	$i_cod_ritorno = RecordSearch($s_dbname, $s_query, $o_Con, _
			$s_Qta_Oggetto, $s_Data_Vendita_Oggetto, $s_Prezzo_Oggetto, _
			$s_Spedizione_Oggetto, $s_Ebay_Altro, $s_venditore, $s_ID_Vendita)

	If $i_cod_ritorno Then
		$s_Numero_Oggetto = StringReplace($s_Numero_Oggetto, "'", "")
		$a_Ordini_Aggiornati[$i_Ordini_Aggiornati + 1] = _
				"ID=" & $s_ID_Vendita & @CRLF & _
				"OGGETTO=" & $s_Numero_Oggetto & @CRLF & _
				"SPESE SPEDIZIONE=" & $s_Spedizione_Oggetto & @CRLF & _
				"QTA=" & $s_Qta_Oggetto
		$i_Ordini_Aggiornati = $i_Ordini_Aggiornati + 1
	EndIf

	AccessCloseConn($o_Con)

	$a_Ordini_Aggiornati[0] = "ORDINI AGGIORNATI=" & $i_Ordini_Aggiornati & @CRLF
;~  OLD	_ArrayDisplay($a_Ordini_Aggiornati)
	Local $s_work_etk
	$s_work_etk = ""
	$s_work_etk = _ArrayToString($a_Ordini_Aggiornati, @CRLF)
	GUICtrlSetData($hArea_Comunicazioni, $s_work_etk)
	; Switch to GetMessage mode
	Local $iOnEventMode = Opt("GUIOnEventMode", 0), $iMsg
	While 1
		$iMsg = GUIGetMsg() ; Variable needed to check which "Copy" button was pressed
		Switch $iMsg
			Case $hProsegui
				ExitLoop
			Case $hChiudi
				Exit
			Case $hCopia
				$s_work_etk = GUICtrlRead($hArea_Comunicazioni)
				ClipPut($s_work_etk)
		EndSwitch
	WEnd
	; Clear up
	Opt("GUIOnEventMode", 1) ; Reset original GUI mode
;~ 	Fine OLD _ArrayDisplay($a_Ordini_Aggiornati)

	; ripristino dei valori iniziali
	$s_provenienza = "EBAY"
	$s_ambiente = "PRODUZIONE"
	GUICtrlSetState($hEbay_Image, $GUI_SHOW)
	GUICtrlSetState($hAmazon_Image, $GUI_HIDE)
	GUICtrlSetState($hProduzione_Image, $GUI_SHOW)
	GUICtrlSetState($hTest_Image, $GUI_HIDE)
	GUICtrlSetData($hArea_Comunicazioni, "")
	GUICtrlSetState($hProduzione, $GUI_CHECKED)
	GUICtrlSetState($hEbay, $GUI_CHECKED)

;~ 	Exit
EndFunc   ;==>Tratta_Amazon

Func Tratta_Ebay($GUI_Form, $hArea_Comunicazioni)
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
	Local $s_Tablename = "Q_VENDITE"
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

	$File = FileOpenDialog("Select a CSV File", @DesktopDir, "CSV Files (*.csv)")
	$Input = FileRead($File)
	$Delimiter = ","

	$ItemArray = _CSVSplit($Input, $Delimiter)
	_ArrayDisplay($ItemArray)
	$ItemLines = UBound($ItemArray)
	$HowManyColumns = UBound($ItemArray, 2)

	Local $i_records = $ItemArray[$ItemLines - 2][0]

	Local $s_venditore = $ItemArray[$ItemLines - 1][0]
	Local $a_work = StringSplit($s_venditore, ":@")
	;_ArrayDisplay($a_work)
	$s_venditore = $a_work[2]
	$s_venditore = StringStripWS($s_venditore, $STR_STRIPALL)
	$s_venditore = StringUpper($s_venditore)

	If $i_records > 0 Then
	Else
		$sMsg = "Non ci sono ordini da registrare! Elaborazione abortita"
		$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
		Exit
	EndIf

	Local $a_Ordini_Aggiornati[10]
	Local $i_Ordini_Aggiornati
	$i_Ordini_Aggiornati = 0

	Local $i_ind
	Local $s_ID_Vendita
	Local $s_ID_Transazione
	Local $s_Nome_Acquirente
	Local $s_Indirizzo_Acquirente1
	Local $s_Indirizzo_Acquirente2
	Local $s_Citta_Acquirente
	Local $s_Stato_Acquirente
	Local $s_CAP_Acquirente
	Local $s_Paese_Acquirente
	Local $s_Descrizione_Oggetto
	Local $s_Numero_Oggetto
	Local $s_Qta_Oggetto
	Local $s_Prezzo_Oggetto
	Local $s_Spedizione_Oggetto
	Local $s_Data_Vendita_Oggetto

	Local $a_Etichetta[4]
	Local $s_Ebay_Altro
	Local $s_work_mese

	For $i_ind = 3 To $i_records + 2
		$s_ID_Vendita = $ItemArray[$i_ind][0]
		$s_ID_Transazione = $ItemArray[$i_ind][34]
		$s_Nome_Acquirente = $ItemArray[$i_ind][2]
		$s_Indirizzo_Acquirente1 = $ItemArray[$i_ind][5]
		$s_Indirizzo_Acquirente2 = $ItemArray[$i_ind][6]
		$s_Citta_Acquirente = $ItemArray[$i_ind][7]
		$s_Stato_Acquirente = $ItemArray[$i_ind][8]
		$s_CAP_Acquirente = $ItemArray[$i_ind][9]
		$s_Paese_Acquirente = $ItemArray[$i_ind][10]
		$s_Numero_Oggetto = $ItemArray[$i_ind][11]
		$s_Descrizione_Oggetto = $ItemArray[$i_ind][12]
		$s_Qta_Oggetto = $ItemArray[$i_ind][14]
		$s_Prezzo_Oggetto = $ItemArray[$i_ind][15]
		$s_Spedizione_Oggetto = $ItemArray[$i_ind][17]
		$s_Data_Vendita_Oggetto = $ItemArray[$i_ind][22]

		$a_Etichetta[0] = $s_Nome_Acquirente
		$a_Etichetta[1] = $s_Indirizzo_Acquirente1 & " " & $s_Indirizzo_Acquirente2
		$a_Etichetta[2] = $s_CAP_Acquirente & " " & $s_Citta_Acquirente & " " & $s_Stato_Acquirente
		$a_Etichetta[3] = $s_Paese_Acquirente

;~ 	old _ArrayDisplay($a_Etichetta)
		Local $s_work_etk
		$s_work_etk = ""
		$s_work_etk = _ArrayToString($a_Etichetta, @CRLF)
		GUICtrlSetData($hArea_Comunicazioni, $s_work_etk)
		; Switch to GetMessage mode
		Local $iOnEventMode = Opt("GUIOnEventMode", 0), $iMsg
		While 1
			$iMsg = GUIGetMsg() ; Variable needed to check which "Copy" button was pressed
			Switch $iMsg
				Case $hProsegui
					ExitLoop
				Case $hChiudi
					Exit
				Case $hCopia
					$s_work_etk = GUICtrlRead($hArea_Comunicazioni)
					ClipPut($s_work_etk)
			EndSwitch
		WEnd
		; Clear up
		Opt("GUIOnEventMode", 1) ; Reset original GUI mode
;~ 	fine old _ArrayDisplay($a_Etichetta)

		;normalizzo campi per query ed aggiornamento del recorset
		; se kit di memorie (2x) setto il flag a vero
		Local $s_work_kit
		Local $i_kit
		$s_work_kit = StringLeft($s_Descrizione_Oggetto, 3)
		If $s_work_kit = "KIT" Then
			$i_kit = 1
		Else
			$i_kit = 0
		EndIf

		$s_Numero_Oggetto = "'" & $s_Numero_Oggetto & "'"
		$s_Ebay_Altro = "EBAY"

		Local $a_work = StringSplit($s_Prezzo_Oggetto, "EUR ")
		;	_ArrayDisplay($a_work)
		$s_Prezzo_Oggetto = $a_work[5]

		Local $a_work = StringSplit($s_Spedizione_Oggetto, "EUR ")
		;	_ArrayDisplay($a_work)
		$s_Spedizione_Oggetto = $a_work[5]

		If $s_Qta_Oggetto > 1 Then
			Local $s_Spese_Unitarie
			$s_Spedizione_Oggetto = StringReplace($s_Spedizione_Oggetto, ",", ".")
			$s_Spese_Unitarie = $s_Spedizione_Oggetto / $s_Qta_Oggetto
			$s_Spese_Unitarie = StringReplace($s_Spese_Unitarie, ".", ",")
			$s_Spedizione_Oggetto = $s_Spese_Unitarie
		EndIf

		Local $a_work = StringSplit($s_Data_Vendita_Oggetto, "-")
		;	_ArrayDisplay($a_work)
		$s_work_mese = $a_work[2]
		Select
			Case $s_work_mese = "gen"
				$s_work_mese = "01"
			Case $s_work_mese = "feb"
				$s_work_mese = "02"
			Case $s_work_mese = "mar"
				$s_work_mese = "03"
			Case $s_work_mese = "apr"
				$s_work_mese = "04"
			Case $s_work_mese = "mag"
				$s_work_mese = "05"
			Case $s_work_mese = "giu"
				$s_work_mese = "06"
			Case $s_work_mese = "lug"
				$s_work_mese = "07"
			Case $s_work_mese = "ago"
				$s_work_mese = "08"
			Case $s_work_mese = "set"
				$s_work_mese = "09"
			Case $s_work_mese = "ott"
				$s_work_mese = "10"
			Case $s_work_mese = "nov"
				$s_work_mese = "11"
			Case $s_work_mese = "dic"
				$s_work_mese = "12"
			Case Else
				$sMsg = "Data non valita! Elaborazione abortita"
				$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
				Exit
		EndSelect

		$s_Data_Vendita_Oggetto = $a_work[1] & "/" & $s_work_mese & "/20" & $a_work[3]

		;Query; Search Records in a table and update rs ========================================================
		$s_query = "SELECT * FROM " & $s_Tablename & " WHERE ID_USCITA=" & $s_Numero_Oggetto & _
				" AND TIPO_USCITA=5"

		$i_cod_ritorno = RecordSearch($s_dbname, $s_query, $o_Con, _
				$s_Qta_Oggetto, $s_Data_Vendita_Oggetto, $s_Prezzo_Oggetto, _
				$s_Spedizione_Oggetto, $s_Ebay_Altro, $s_venditore, $s_ID_Vendita)

		If $i_cod_ritorno Then
			$s_Numero_Oggetto = StringReplace($s_Numero_Oggetto, "'", "")
			$a_Ordini_Aggiornati[$i_Ordini_Aggiornati + 1] = _
					"=====================================" & @CRLF & _
					"ID=" & $s_ID_Vendita & @CRLF & _
					"OGGETTO=" & $s_Numero_Oggetto & @CRLF & _
					"DESCRIZIONE=" & $s_Descrizione_Oggetto & @CRLF & _
					"SPESE SPEDIZIONE=" & $s_Spedizione_Oggetto & @CRLF & _
					"QTA=" & $s_Qta_Oggetto
			$i_Ordini_Aggiornati = $i_Ordini_Aggiornati + 1

			$sMsg = "Oggetto: " & $s_Descrizione_Oggetto & @CRLF & _
					"Codice: " & $s_Numero_Oggetto & @CRLF & _
					"Spese spedizione: " & $s_Spedizione_Oggetto & @CRLF & _
					"QTA :" & $s_Qta_Oggetto
			$iRetValue = _ExtMsgBox($EMB_ICONINFO, "OK", "Prepara busta", $sMsg)
		EndIf
		If $i_cod_ritorno Then
			Local $s_email_url
			$s_email_url = 'http://k2b-email.ebay.it/ws/eBayISAPI.dll?MyEbayEmailBuyer&urlstack=5508|Period_Last122Days|Status_WaitShipment|currentpage_SCSold|&itemId=' _
					 & $s_Numero_Oggetto & '&transactionId=' & $s_ID_Transazione & ''
			;eseguo FF o chrome in base al ID venditore
			;ShellExecute($s_email_url)
			If $s_venditore = "ILGRANDEBLEK77" Then
				ShellExecute("firefox", $s_email_url)
			Else
				ShellExecute("chrome", $s_email_url)
			EndIf
		EndIf

		If $i_cod_ritorno Then
			$sMsg = "Dopo aver inviato mail di conferma spedizione ed aver settato lo stato dell'ordine su 'spedito' clicca OK per proseguire"
			; msgbox in alto a sinistra perche' non interferisca ...$sMsg, 0, 10, 10)
			$iRetValue = _ExtMsgBox($EMB_ICONINFO, "OK", "Prosegui", $sMsg, 0, 10, 10)
			GUICtrlSetState($hProsegui, $GUI_FOCUS)
		Else
			$sMsg = "Elaborazione in errore. Clicca OK per chiudere"
			$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
			ExitLoop
		EndIf
	Next

	AccessCloseConn($o_Con)

	$a_Ordini_Aggiornati[0] = "ORDINI AGGIORNATI=" & $i_Ordini_Aggiornati

;~ 	old _ArrayDisplay($a_Ordini_Aggiornati)
	Local $s_work_etk
	$s_work_etk = ""
	$s_work_etk = _ArrayToString($a_Ordini_Aggiornati, @CRLF)
	GUICtrlSetData($hArea_Comunicazioni, $s_work_etk)
	; Switch to GetMessage mode
	Local $iOnEventMode = Opt("GUIOnEventMode", 0), $iMsg
	While 1
		$iMsg = GUIGetMsg() ; Variable needed to check which "Copy" button was pressed
		Switch $iMsg
			Case $hProsegui
				ExitLoop
			Case $hChiudi
				Exit
			Case $hCopia
				$s_work_etk = GUICtrlRead($hArea_Comunicazioni)
				ClipPut($s_work_etk)
		EndSwitch
	WEnd
	; Clear up
	Opt("GUIOnEventMode", 1) ; Reset original GUI mode
;~ 	Fine  old _ArrayDisplay($a_Ordini_Aggiornati)

	; ripristino dei valori iniziali
	$s_provenienza = "EBAY"
	$s_ambiente = "PRODUZIONE"
	GUICtrlSetState($hEbay_Image, $GUI_SHOW)
	GUICtrlSetState($hAmazon_Image, $GUI_HIDE)
	GUICtrlSetState($hProduzione_Image, $GUI_SHOW)
	GUICtrlSetState($hTest_Image, $GUI_HIDE)
	GUICtrlSetData($hArea_Comunicazioni, "")
	GUICtrlSetState($hProduzione, $GUI_CHECKED)
	GUICtrlSetState($hEbay, $GUI_CHECKED)

;~ 	Exit
EndFunc   ;==>Tratta_Ebay

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
			$sMsg = "Non ci sono record da aggiornare! Elaborazione abortita"
			$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
			Return SetError(1, 0, 0)
		EndIf
		If $o_adoRs.RecordCount < $s_Qta_Oggetto Then
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

Func AccessCloseConn($o_adoCon)
	$o_adoCon.Close
EndFunc   ;==>AccessCloseConn
