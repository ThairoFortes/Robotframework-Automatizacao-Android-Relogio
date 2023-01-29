
*** Settings ***
Resource    ../Resources/cronometroKeywords.robot
Resource    ../Resources/baseKeywords.robot

Test Setup       Abre App    
Test Teardown    Fecha App

*** Test Cases ***
Cronometro
    [Documentation]    Este cenário inicia, pausa e zera cronômetro
    [Tags]             cronometro
    Clica no icone de Cronometro
    Inicia o cronometro
    Pausa o cronometro
    Zera o cronometro
