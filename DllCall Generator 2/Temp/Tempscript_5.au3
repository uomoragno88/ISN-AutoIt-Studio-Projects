; This will create a tooltip in the upper left of the screen

ToolTip("This is a tooltip",200, 200)
Sleep(5000) ; Sleep to give tooltip time to display

SplashTextOn("Title", "Message goes here.", -1, -1, -1, -1, 4, "", 24)
Sleep(3000)
SplashOff()

; ; FLICKER
Local $sMessage = ""
SplashTextOn("TitleFoo", $sMessage, -1, -1, -1, -1, 4, "")
For $i = 1 To 20
    $sMessage = $sMessage & $i & @CRLF
    SplashTextOn("TitleFoo", $sMessage, -1, -1, -1, -1, 4, "")
    Sleep(100)
Next

; ; SMOOTH
$sMessage = ""
SplashTextOn("TitleFoo", $sMessage, -1, -1, -1, -1, 4, "")
For $i = 1 To 20
    $sMessage = $sMessage & $i & @CRLF
    ControlSetText("TitleFoo", "", "Static1", $sMessage)
    Sleep(100)
Next

