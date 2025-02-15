@echo off
for /F "tokens=1,2 delims= " %%A in ('pnputil /enum-drivers ^| findstr ".inf"') do (
    pnputil /remove-driver %%B /uninstall /force
)
shutdown /r /f /t 0
