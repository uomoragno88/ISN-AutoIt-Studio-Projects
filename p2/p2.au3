#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Compile_Both=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
;*****************************************
;p2.au3 by S522733
;Created with ISN AutoIt Studio v. 0.97 BETA
;*****************************************

;~ prova esecuzione firefox o chrome a seconda del ID venditore di Ebay

Local $s_Numero_Oggetto
Local $s_ID_Transazione
Local $s_ID_Venditore
Local $s_email_url

;~ tets ilgrandeblek77 su FF
$s_ID_Venditore = "ilgrandeblek77"
$s_Numero_Oggetto = "131479146185"
$s_ID_Transazione = "1077562795003"

$s_email_url = 'http://k2b-email.ebay.it/ws/eBayISAPI.dll?MyEbayEmailBuyer&urlstack=5508|Period_Last122Days|Status_WaitShipment|currentpage_SCSold|&itemId=' _
		 & $s_Numero_Oggetto & '&transactionId=' & $s_ID_Transazione & ''

ShellExecute("firefox", $s_email_url)

;~ tets uomoragno88 su Chrome
;~ $s_ID_Venditore = "uomoragno88"
;~ $s_Numero_Oggetto = "261837976727"
;~ $s_ID_Transazione = "1603655727016"

;~ $s_email_url = 'http://k2b-email.ebay.it/ws/eBayISAPI.dll?MyEbayEmailBuyer&urlstack=5508|Period_Last122Days|Status_WaitShipment|currentpage_SCSold|&itemId=' _
;~ 					 & $s_Numero_Oggetto & '&transactionId=' & $s_ID_Transazione & ''

;~ ShellExecute("chrome", $s_email_url)#include "Forms\p2.isf"
#include "pippo.au3"
