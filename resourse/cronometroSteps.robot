*** Settings ***
Resource    ../resourse/baseSteps.robot

Library    AppiumLibrary
Library    SeleniumLibrary

*** Keywords ***
Clica no icone de Cronometro
    Log To Console    -> Entrando na tela de cronometro...\n
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Cronômetro"]    20
    AppiumLibrary.Click Element                    xpath=//android.widget.ImageView[@content-desc="Cronômetro"]
    
    Sleep    2
    Captura tela

Inicia o cronometro
    Log To Console    -> Inciando o cronometro...\n
    AppiumLibrary.Wait Until Element Is Visible    id=com.google.android.deskclock:id/fab    20
    AppiumLibrary.Click Element                    id=com.google.android.deskclock:id/fab
    
    Sleep    2
    Captura tela

Pausa o cronometro
    Log To Console    -> Pausando o cronometro...\n
    AppiumLibrary.Wait Until Element Is Visible    id=com.google.android.deskclock:id/fab    20
    AppiumLibrary.Click Element                    id=com.google.android.deskclock:id/fab
    
    Sleep    2
    Captura tela
    
Zera o cronometro
    Log To Console    -> Zerando o cronometro...\n
    AppiumLibrary.Wait Until Element Is Visible    id=com.google.android.deskclock:id/left_button    20
    AppiumLibrary.Click Element                    id=com.google.android.deskclock:id/left_button
    
    Sleep    2
    Captura tela 