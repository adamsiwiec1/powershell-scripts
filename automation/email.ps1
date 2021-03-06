

Write-Host "Enter a recipient"
$tempRecipient = Read-Host
$recipient = $tempRecipient



Send-MailMessage -To “Sachin98.pathak@gmail.com” -From “adam2.siwiec@gmail.com”  -Subject “Sent using powershell” -Body “Some important plain text!” -Credential (Get-Credential) -SmtpServer “smtp.gmail.com” -Port 25 -UseSsl