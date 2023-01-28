*** Settings ***
Resource    ../Resources/relogioKeywords.robot
Resource    ../Resources/baseKeywords.robot

Test Setup       Abre App    
Test Teardown    Fecha App

*** Test Cases ***
Relogio
    Clica no icone de relogio
    Clica no botao de adicionar relogio
    Pesquisa pelo local
    Seleciona o local 
    Visualiza relogio do local