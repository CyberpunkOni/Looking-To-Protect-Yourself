Get-WinEvent -LogName Security -FilterXPath "*[System[EventID=4624 and TimeCreated[timediff(@SystemTime) <= 86400000]] and EventData[Data[@Name='TargetUserName']!='$null']]" | 
Export-Csv -Path c:\soutput\listing3.csv -NoTypeInformation -UseCulture
