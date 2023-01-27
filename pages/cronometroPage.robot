
*** Settings ***
Resource    ../resourse/baseSteps.robot
Resource    ../resourse/cronometroSteps.robot

Test Setup       Abre App    
Test Teardown    Fecha App

*** Test Cases ***
Cronometro
    Clica no icone de Cronometro
    Inicia o cronometro
    Pausa o cronometro
    Zera o cronometro
