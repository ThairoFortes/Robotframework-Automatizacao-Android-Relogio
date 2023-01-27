*** Settings ***
Resource    ../resourse/baseSteps.robot

Library    AppiumLibrary
Library    SeleniumLibrary

*** Keywords ***
Clica no icone de relogio
    Log To Console    -> Clicando no icone de reolgio mundial...\n
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Relógio"]    20
    AppiumLibrary.Click Element                    xpath=//android.widget.ImageView[@content-desc="Relógio"]

    Sleep    2
    Captura tela
    
Clica no botao de adicionar relogio
    Log To Console    -> Clicando no icone de adicionar horario...\n
    AppiumLibrary.Wait Until Element Is Visible    id=com.google.android.deskclock:id/fab    20
    AppiumLibrary.Click Element                    id=com.google.android.deskclock:id/fab

    Sleep    2
    Captura tela

Pesquisa pelo local
    Log To Console    -> Pesquisando local...\n
    AppiumLibrary.Wait Until Element Is Visible    id=com.google.android.deskclock:id/search_button    20
    AppiumLibrary.Click Element                    id=com.google.android.deskclock:id/search_button

    AppiumLibrary.Input Text                       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.view.ViewGroup/ahh/ahh/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.EditText    Brasília
    
    Sleep    2
    Captura tela

Seleciona o local 
    Log To Console    -> Selecionando local...\n
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.CheckBox[@content-desc="Brasília"]    20
    AppiumLibrary.Click Element                    xpath=//android.widget.CheckBox[@content-desc="Brasília"]

    Sleep    2
    Captura tela

Visualiza relogio do local
    Log To Console    -> Visualizando horario do local selecionado...\n
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.ImageButton[@content-desc="Navegar para cima"]    20
    AppiumLibrary.Click Element                    xpath=//android.widget.ImageButton[@content-desc="Navegar para cima"]

    Sleep    2
    Captura tela