*** Settings ***
Resource    ../resourse/base.robot
Resource    ../resourse/steps.robot
Resource    ../../NuBANK/nuclone-appium-robot/resource/base.robot

Test Setup       Abre App
Test Teardown    Fecha App

*** Test Cases ***
Adicionar alarme
    Clica no icone de alarme
    Clica botao de adicionar alarme
    Seleciona a hora do alarme
    Coloca nome ao alarme
    Escolhe toque do alarme
