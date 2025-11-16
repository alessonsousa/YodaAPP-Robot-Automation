*** Settings ***

Library    AppiumLibrary    

*** Test Cases ***

Abrir App Android
    Open Application    http://127.0.0.1:4723
    ...    platformName=Android
    ...    deviceName=emulator-5554
    ...    automationName=UiAutomator2
    ...    app=${EXECDIR}/app/yodapp-beta.apk
    ...    autoGrantPermissions=true
    
    # Validando o texto na tela
    Wait Until Page Contains        Yodapp    10
    Wait Until Page Contains        Mobile Training    10
    Wait Until Page Contains        by Papito    10
    Sleep    5

    Close Application
