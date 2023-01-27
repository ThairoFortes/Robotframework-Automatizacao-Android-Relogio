*** Settings ***
Library    AppiumLibrary
Library    SeleniumLibrary
Library    DateTime
Library    OperatingSystem
Library    Screenshot
Library    String

*** Variables ***
${LOCAL}    C:\_Projetos\Clock\evidencias

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

Captura tela
    ${DATA}=                                  Get Current Date      result_format=%d-%m-%Y_%H.%M.%S

    ${NOME_CASO_TESTE}                        Pegar o nome do test-case
    Set Suite Variable                        ${NOME_CASO_TESTE}   

    AppiumLibrary.Capture Page Screenshot     ${DATA}.png    
    
    ${DATA_ATUAL}=                            Get Current Date      result_format=%d-%m-%Y_%H.%M   
    Set Global Variable                       ${DATA_ATUAL}    
    Create Directory                          ${EXECDIR}\\evidencias\\${NOME_CASO_TESTE}
    Move Files    *.png                       ${EXECDIR}\\evidencias\\${NOME_CASO_TESTE}

Pegar o nome do test-case
        ${NOME_CASO_TESTE}=    Get Variable Value    ${TEST NAME}
        ${NOME_CASO_TESTE}=    Replace String        ${NOME_CASO_TESTE}    ${SPACE}    _
        ${NOME_CASO_TESTE}=    Replace String        ${NOME_CASO_TESTE}    (           _
        ${NOME_CASO_TESTE}=    Replace String        ${NOME_CASO_TESTE}    )           _
        ${NOME_CASO_TESTE}=    Replace String        ${NOME_CASO_TESTE}    \"          _
        ${NOME_CASO_TESTE}=    Replace String        ${NOME_CASO_TESTE}    :           _
        ${NOME_CASO_TESTE}=    Replace String        ${NOME_CASO_TESTE}    \'          _
        [Return]               ${NOME_CASO_TESTE}