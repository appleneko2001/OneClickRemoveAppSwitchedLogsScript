@echo off
echo One-click clear application launch logs script
echo Credit by github@appleneko2001
echo.
echo Preparing...
set arrays=AppSwitched AppLaunch AppBadgeUpdated ShowJumpView TrayButtonClicked
(
	for %%a in (%arrays%) do (
		echo Clear %%a...
		reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\%%a" /f
		
		if errorlevel 0 (
			echo %%a keys clear completed. 
		) else (  
			echo %%a keys clear failed.
			echo If you cannot use this script to remove logs, try remove all nodes under key "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\%%a" yourself via regedit.
		)
		echo.
	)
)
echo Press any key to exit.
pause > nul