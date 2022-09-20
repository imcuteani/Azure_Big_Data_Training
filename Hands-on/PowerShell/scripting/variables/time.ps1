#datetime function

dtmTime = #09/20/2022 1:57 PM#

intHour = Hour(dtmTime)
If intHour > 11 Then
    Wscript.Echo “This is an afternoon/evening time.”
Else
    Wscript.Echo “This is a morning time.”
End If