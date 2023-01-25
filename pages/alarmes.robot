*** Settings ***
Resource    ../resourse/base.robot
Resource    ../resourse/steps.robot
Resource    ../../NuBANK/nuclone-appium-robot/resource/base.robot

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

Horario no mundo
    Clica no icone de relogio
    Clica no botao de adicionar horario
    Pesquisa pelo local
    Seleciona o local 
    Visualiza horario do local