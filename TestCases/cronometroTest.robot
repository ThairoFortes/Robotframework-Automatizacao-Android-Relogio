
*** Settings ***
Resource    ../Resources/cronometroKeywords.robot
Resource    ../Resources/baseKeywords.robot

Test Setup       Abre App    
Test Teardown    Fecha App

*** Test Cases ***
Cronometro
    Clica no icone de Cronometro
    Inicia o cronometro
    Pausa o cronometro
    Zera o cronometro
