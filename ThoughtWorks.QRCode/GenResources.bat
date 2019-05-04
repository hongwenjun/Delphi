@echo off
cd %~dp0
del ThoughtWorks.QRCode.Resources.rc
for /r ".\Resources" %%i in (*.dat) do (
	echo %%~ni RCDATA "Resources\%%~nxi">>ThoughtWorks.QRCode.Resources.rc	
)