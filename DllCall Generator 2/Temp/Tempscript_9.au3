#include <IE.au3> 
$oIE = _IECreate("https://msdn.microsoft.com/en-us/library/ms681944%28v=vs.85%29.aspx")
$oLinks = _IELinkGetCollection($oIE) 
For $oLink In   $oLinks     
$findlink = StringInStr($oLink.href, "<a href='http://www.somesite.com/some.php' class='bbc_url' title='External link' rel='nofollow external'>http://www.somesite.com/some.php</a>")   
If $findlink = 0 Then       
Sleep(10)       
Else  
	  _IEAction($oLink, "click")  
MsgBox(0,"OK","Clicked")
    EndIf
    Next