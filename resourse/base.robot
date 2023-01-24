*** Settings ***
Library    AppiumLibrary

*** Keywords ***
Abre App
    Log To Console    \n-> Abrindo App...\n
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=emulator
    ...                 appPackage=com.google.android.deskclock
    ...                 appActivity=com.android.deskclock.DeskClock
    ...                 autoGrantPermissions=true
    
    AppiumLibrary.Wait Until Element Is Visible    id=com.google.android.deskclock:id/toolbar    10

Fecha App
    Log To Console    -> Fechando App...\n
    Close Application