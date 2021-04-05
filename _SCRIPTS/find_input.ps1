
<# This is used to run as admin #>

param([switch]$Elevated)

function Test-Admin {
    $currentUser = New-Object Security.Principal.WindowsPrincipal $([Security.Principal.WindowsIdentity]::GetCurrent())
    $currentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
}

if ((Test-Admin) -eq $false)  {
    if ($elevated) {
        # tried to elevate, did not work, aborting
    } else {
        Start-Process powershell.exe -Verb RunAs -ArgumentList ('-noprofile -noexit -file "{0}" -elevated' -f ($myinvocation.MyCommand.Definition))
    }
    exit
}


<# logic below #>

Write-Host "Would you like to search for a file? (Y/N)"
$search = Read-Host
while ($search -eq 'y'){
Write-Host "Choose a drive"

$drive = Read-Host

if($drive -eq 'z'){ cd Z:} else { cd \ }

Write-Host "Enter string to search for"

$string = Read-Host

ls *$string* -Recurse -Directory

Write-Host "Would you like to search for a file? (Y/N)"
$search = Read-Host
}