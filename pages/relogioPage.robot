*** Settings ***
Resource    ../resourse/baseSteps.robot
Resource    ../resourse/relogioSteps.robot

Test Setup       Abre App    
Test Teardown    Fecha App

*** Test Cases ***
Relogio no mundo
    Clica no icone de relogio
    Clica no botao de adicionar relogio
    Pesquisa pelo local
    Seleciona o local 
    Visualiza relogio do local