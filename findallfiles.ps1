<# Returns all files with the specified file ending in the current directory #>


Get-ChildItem -Path .\ -Filter *.iso -Recurse -File -Name| ForEach-Object {
    [System.IO.Path]::GetFileNameWithoutExtension($_)
}