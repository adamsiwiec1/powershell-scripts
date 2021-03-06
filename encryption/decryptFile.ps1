Write-Host "`nEnter a file path to decrypt. Ex: 'C:\Passwords\encryptedPass.txt'`n"
$filePath = Read-Host

Write-Host "`nEnter a destination file. Ex: 'C:\Passwords\decryptedPass.txt'`n"
$outPath = Read-Host

$SecureString = ConvertTo-SecureString -String (Get-Content $filePath)
$Pointer = [Runtime.InteropServices.Marshal]::SecureStringToBSTR($SecureString)
$SecretContent = [Runtime.InteropServices.Marshal]::PtrToStringAuto($Pointer)

Write-Host $SecureString
Write-Host $Pointer