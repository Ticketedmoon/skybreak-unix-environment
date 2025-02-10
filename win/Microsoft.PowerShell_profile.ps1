# Aliases
Set-Alias vim nvim
Set-Alias python py
Set-Alias python3 py

# Prompt that manages nvim Theme
# [Console]::OutputEncoding = [Text.Encoding]::UTF8
# oh-my-posh init pwsh --config ~/custom.omp.json | Invoke-Expression
# oh-my-posh init pwsh | Invoke-Expression

# Set-Location 'C:\Users\shanecreedon\OneDrive - Microsoft\Documents'
Set-Location 'C:\Users\shanecreedon\OneDrive - Microsoft\Documents\Projects\EngSys-MDA-DCR-Synthetics\src\Northstar'

# Disable FileDirectory highlighting
# $PSStyle.FileInfo.Directory = ""
$PSStyle.FileInfo.Directory = "`e[33;1m" # Note the double quotes!

<#
Set-PSReadLineOption -Colors @{ String = 'Green' }
#>

Write-Host "Powershell Core Profile Loaded..."

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# Allow cmd functions to work in pwsh
# /d	Creates a directory symbolic link. By default, this command creates a file symbolic link.
# /h	Creates a hard link instead of a symbolic link.
# /j	Creates a Directory Junction.
function mklink { 
	cmd /c mklink $args 
}

function make-sym-link($target, $link) {
	New-Item -Path $link -ItemType SymbolicLink -Value $target
}

# Create a new zip file
function zip($sourceDir, $targetZip) {
	Compress-Archive -LiteralPath $sourceDir -DestinationPath $targetZip
	Write-Output "Folder zipped successfully!"
}
