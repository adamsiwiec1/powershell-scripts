$bot = "emailbot.ps1@gmail.com"
$password = "AXjwFSnoaWUPgay1d1nI"

Write-Host "Enter a recipient"
$recipient = Read-Host

$secpasswd = ConvertTo-SecureString $password -AsPlainText -Force
$botcreds = New-Object System.Management.Automation.PSCredential ($bot, $secpasswd) 


Send-MailMessage -To "adam2.siwiec@gmail.com" -From "emailbot.ps1@gmail.com" -Subject "Sent using powershell" -Body "This is an important message" -Credential "emailbot.ps1@gmail.com" -SmtpServer "smtp.gmail.com" -Port 25 -UseSsl -Force
