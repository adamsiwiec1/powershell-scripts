

Write-Host "Enter a recipient"
$recipient = Read-Host

$secpasswd = ConvertTo-SecureString $password -AsPlainText -Force
$botcreds = New-Object System.Management.Automation.PSCredential ($bot, $secpasswd)


Send-MailMessage -To $recipient -From $bot� -Subject "Sent using powershell" -Body "This is an important message"� -Credential $botcreds -SmtpServer "smtp.gmail.com"� -Port 25 -UseSsl