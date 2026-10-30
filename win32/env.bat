@echo off
set command="%ProgramFiles(x86)%\Microsoft Visual Studio\Installer\vswhere.exe" -products * -requires Microsoft.Component.MSBuild -property installationPath -latest
echo %command%
for /f "delims=" %%i in ('%command%') do set VCINSTALLDIR=%%i
call "%VCINSTALLDIR%\Common7\Tools\vsdevcmd.bat"
echo VCINSTALLDIR=%VCINSTALLDIR%
echo VCToolsRedistDir=%VCToolsRedistDir%
(echo VCINSTALLDIR=%VCINSTALLDIR%) >> "%GITHUB_ENV%"
(echo VCToolsRedistDir=%VCToolsRedistDir%) >> "%GITHUB_ENV%"
