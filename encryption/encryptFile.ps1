Write-Host "`nEnter a file path to encrypt. Ex: 'C:\Passwords\email_password.txt'`n"
$filePath = Read-Host

Write-Host "`nEnter a destination file. Ex: 'C:\Passwords\encrypted_email_password.txt'`n"
$outPath = Read-Host

ConvertTo-SecureString $filePath -AsPlainText -Force | ConvertFrom-SecureString | Out-File $outPath