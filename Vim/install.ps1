$VimAutoloadPath = $env:USERPROFILE + "\vimfiles\autoload"

if ( -Not (Test-Path -Path $VimAutoloadPath )) {
    Write-Host $VimAutoloadPath " doesn't exist, directory will be created"
}

Write-Host "Installing Vim Plug extension..."

$VimPlugGitHubURI = "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" 
$VimPlugFileFromWeb = Invoke-WebRequest -UseBasicParsing $VimPlugGitHubURI
$VimPlugFileFromWeb | New-Item "${VimAutoloadPath}\plug.vim" -Force

Write-Host "Done."