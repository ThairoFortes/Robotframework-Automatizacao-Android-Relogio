*** Settings ***
Resource    ../Resources/temporizadorKeywords.robot
Resource    ../Resources/baseKeywords.robot

Test Setup       Abre App    
Test Teardown    Fecha App

*** Test Cases ***
Temporizador
    Clica no icone de temporizador
    Digita o tempo de temporizador
    Inicia o temporizador
    Aguarda o tempo do temporizador
    Para o alarme do temporizador
    Exclui o temporizador