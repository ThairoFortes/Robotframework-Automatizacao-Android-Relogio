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

Temporizador
    Clica no icone de temporizador
    Digita o tempo de temporizador
    Inicia o temporizador
    Aguarda o tempo do temporizador
    Para o alarme do temporizador
    Exclui o temporizador

Cronometro
    Clica no icone de Cronometro
    Inicia o cronometro
    Pausa o cronometro
    Zera o cronometro



