*** Settings *** 
Resource    ../Resources/alarmeKeywords.robot
Resource    ../Resources/baseKeywords.robot

Test Setup       Abre App    
Test Teardown    Fecha App

*** Test Cases ***
Alarme
    Clica no icone de alarme
    Clica botao de adicionar alarme
    Seleciona a hora do alarme
    Coloca nome do alarme
    Escolhe toque do alarme
    Repete alarme durante a semana
    Desabilita alarme
    Clica no icone para excluir alarme



