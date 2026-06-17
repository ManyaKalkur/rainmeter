$calendarUrl = "ENTER THE SECRET ICS LINK FROM GOOGLE CALENDER HERE"

Invoke-WebRequest `
    -Uri $calendarUrl `
    -OutFile "$PSScriptRoot\calendar.ics"