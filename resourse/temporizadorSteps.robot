*** Settings ***
Resource    ../resourse/baseSteps.robot

Library    AppiumLibrary
Library    SeleniumLibrary

*** Keywords ***
Clica no icone de temporizador
    Log To Console    -> Clicando no icone de temporizador...\n
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Timer"]    20
    AppiumLibrary.Click Element                    xpath=//android.widget.ImageView[@content-desc="Timer"]
    
    Sleep    2
    Captura tela

Digita o tempo de temporizador
    Log To Console    -> Digitando o tempo de temporizador...\n
    AppiumLibrary.Execute adb shell  input text  3

    Sleep    2
    Captura tela

Inicia o temporizador
    Log To Console    -> Iniciando o temporizador...\n
    AppiumLibrary.Wait Until Element Is Visible    id=com.google.android.deskclock:id/fab    20
    AppiumLibrary.Click Element                    id=com.google.android.deskclock:id/fab
    
    Sleep    2
    Captura tela

Aguarda o tempo do temporizador
    Log To Console    -> Aguardando o tempo do temporizador...\n
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@content-desc="-4 segundos"]    20

    Sleep    2
    Captura tela

Para o alarme do temporizador
    Log To Console    -> Parando o temporizador...\n
    AppiumLibrary.Click Element                    xpath=//android.widget.ImageButton[@content-desc="Parar"]

    Sleep    2
    Captura tela

Exclui o temporizador
    Log To Console    -> Excluindo o temporizador...\n
    AppiumLibrary.Wait Until Element Is Visible    id=com.google.android.deskclock:id/left_button    20
    AppiumLibrary.Click Element                    id=com.google.android.deskclock:id/left_button
    
    Sleep    2
    Captura tela