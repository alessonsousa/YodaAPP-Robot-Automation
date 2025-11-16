*** Settings ***

Library    AppiumLibrary    

*** Variables ***
${START}    QAX

*** Test Cases ***

Deve realizar um click simples
    Open Application    http://127.0.0.1:4723
    ...    platformName=Android
    ...    deviceName=emulator-5554
    ...    automationName=UiAutomator2
    ...    app=${EXECDIR}/app/yodapp-beta.apk
    ...    autoGrantPermissions=true
    
    # Espera até o botão aparecer
    Wait Until Element Is Visible    xpath=//android.widget.Button[@text='${START}']    10

    # Valida se o botão realmente está visível
    Element Should Be Visible        xpath=//android.widget.Button[@text='${START}']

    # Clica no botão
    Click Element                    xpath=//android.widget.Button[@text='${START}']

    # Espera até o app carregar a próxima tela (exemplo: tela principal)
    Wait Until Page Contains         Clique em Botões    10

    ${hambuger}    Set Variable    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]

    Wait Until Element Is Visible    	${hambuger}    5
    Click Element    ${hambuger}  

    ${menu_item}    Set Variable    xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="Clique em Botões"]

    Wait Until Element Is Visible    	${menu_item}    5
    Click Element    ${menu_item}  

    Close Application

