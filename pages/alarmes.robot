*** Settings ***
Resource    ../resourse/base.robot
Resource    ../resourse/steps.robot
Resource    ../../NuBANK/nuclone-appium-robot/resource/base.robot

Test Setup       Abre App
Test Teardown    Fecha App

*** Test Cases ***
Adicionar/Excluir alarme
    Clica no icone de alarme
    Clica botao de adicionar
    Seleciona a hora
    Coloca nome
    Escolhe toque
    Repete durante a semana
    #Desabilita
    Clica no icone para excluir