*** Settings ***
Resource    ../Resources/relogioKeywords.robot
Resource    ../Resources/baseKeywords.robot

Test Setup       Abre App    
Test Teardown    Fecha App

*** Test Cases ***
Relogio
    [Documentation]    Este cenário adiciona e visualiza relógio de outro local
    [Tags]             relogio
    Clica no icone de relogio
    Clica no botao de adicionar relogio
    Pesquisa pelo local
    Seleciona o local 
    Visualiza relogio do local