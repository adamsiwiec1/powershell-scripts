
function FindFileExtension($str) {
     Get-ChildItem -Path .\ -Filter *$str -Recurse -File -Name| ForEach-Object {
        [System.IO.Path]:: <#GetFileNameWithoutExtension#>GetFullPath($_) }
    
    }

<# Returns all files with the specified file ending in the current directory #>

Write-Host "Available Drives:"
wmic logicaldisk get name

Write-Host "Select a drive:" 

$drive = Read-Host

if( $drive -eq 'z' )
{
    cd C:
    cd \
    Write-Host "You have selected the Z drive. Your location: Z:\"
}
if( $drive -eq 'e')
{
    
    cd E:
    cd \
    Write-Host "You have selected the E drive. Your location: E:\"
}
else
{
    Write-Host "You have selected the C drive. Your location: C:\"
    cd C:
    cd \
}

Write-Host "Enter the file path to search recursively: "
$directory = Read-Host
cd $directory
Write-Host "You have selected: " $directory

Write-Host "Are you ready to search? y/n" 
$ready = Read-Host

if($ready -eq 'y')
{
    Write-Host ""
    Write-Host "Enter file type to search for: (ex: .txt , .iso , .pdf )"
    $filetype = Read-Host
    FindFileExtension($filetype)
    pause
}
if($ready -eq 'n')
{
    Write-Host "ok"
    Exit-PSHostProcess
}