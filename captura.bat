@echo off
setlocal enableextensions

:: ===== TEXTO DA MARCA D'ÁGUA =====
set "MARCA=G4F/ApexBrasil | Terceirizado: Seu nome completo aqui - CPF: XXX.XXX.XXX-XX "

:: Pasta base
set "BASE=%USERPROFILE%\Capturas"

:: Data e hora
for /f %%i in ('powershell -NoProfile -Command "Get-Date -Format dd-MM-yyyy"') do set DATA=%%i
for /f %%i in ('powershell -NoProfile -Command "Get-Date -Format HH-mm-ss"') do set HORA=%%i

:: Cria pasta do dia
set "PASTA=%BASE%\%DATA%"
if not exist "%PASTA%" mkdir "%PASTA%" >nul 2>&1

:: Define arquivo
set "ARQUIVO=%PASTA%\print_%DATA%_%HORA%.png"

:: Captura + Marca d’água
powershell -NoProfile -WindowStyle Hidden ^
Add-Type -AssemblyName System.Windows.Forms; ^
Add-Type -AssemblyName System.Drawing; ^
$screen=[System.Windows.Forms.Screen]::PrimaryScreen.Bounds; ^
$bmp=New-Object System.Drawing.Bitmap $screen.Width,$screen.Height; ^
$g=[System.Drawing.Graphics]::FromImage($bmp); ^
$g.CopyFromScreen($screen.Location,[System.Drawing.Point]::Empty,$screen.Size); ^
$font=New-Object System.Drawing.Font('Segoe UI',28,[System.Drawing.FontStyle]::Bold); ^
$color=[System.Drawing.Color]::FromArgb(180,255,0,0); ^
$brush=New-Object System.Drawing.SolidBrush($color); ^
$text=$env:MARCA; ^
$size=$g.MeasureString($text,$font); ^
$x=($screen.Width/2)-($size.Width/2); ^
$y=$screen.Height-$size.Height-60; ^
$g.DrawString($text,$font,$brush,$x,$y); ^
$bmp.Save('%ARQUIVO%',[System.Drawing.Imaging.ImageFormat]::Png); ^
$brush.Dispose(); ^
$g.Dispose(); ^
$bmp.Dispose(); ^
>nul 2>&1

endlocal

exit
