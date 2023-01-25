*** Settings ***
Resource    ../resourse/base.robot
Resource    ../resourse/steps.robot

Test Setup       Abre App
Test Teardown    Fecha App

*** Test Cases ***
Adicionar/Excluir alarme
    Clica no icone de alarme
    Clica botao de adicionar alarme
    Seleciona a hora do alarme
    Coloca nome do alarme
    Escolhe toque do alarme
    Repete alarme durante a semana
    #Desabilita alarme
    Clica no icone para excluir alarme

Pesquisar/Adicionar relogio de um local
    Clica no icone de relogio
    Clica no botao de adicionar horario
    Pesquisa pelo local
    Seleciona o local 
    Visualiza horario do local

Cronometro
    Clica no icone de cronometro
    Digita o tempo de cronometro
    Inicia o cronometro
    Aguarda o tempo do cronometro
    Para o alarme do cronometro
    Exclui o cronometro
