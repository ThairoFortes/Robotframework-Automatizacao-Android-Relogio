*** Settings ***
Resource    baseKeywords.robot

Library    AppiumLibrary

*** Keywords ***
Clica no icone de alarme
    Log To Console    -> Entrando na tela de alarmes...\n
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Alarme"]    20
    AppiumLibrary.Click Element                    xpath=//android.widget.ImageView[@content-desc="Alarme"]
    
    Sleep    2
    Captura tela
Clica botao de adicionar alarme
    Log To Console    -> Clicando no boão para adicionar novo alarme...\n
    AppiumLibrary.Wait Until Element Is Visible    id=com.google.android.deskclock:id/fab    20
    AppiumLibrary.Click Element                    id=com.google.android.deskclock:id/fab
    
    Sleep    2
    Captura tela
Seleciona a hora do alarme
     Log To Console    -> Selecionando a hora para o alarme...\n
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.RadialTimePickerView.RadialPickerTouchHelper[@content-desc="10"]    20
    AppiumLibrary.Click Element                    xpath=//android.widget.RadialTimePickerView.RadialPickerTouchHelper[@content-desc="10"]
    
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.RadialTimePickerView.RadialPickerTouchHelper[@content-desc="30"]    20
    AppiumLibrary.Click Element                    xpath=//android.widget.RadialTimePickerView.RadialPickerTouchHelper[@content-desc="30"]
    
    AppiumLibrary.Wait Until Element Is Visible    id=android:id/button1    20
    AppiumLibrary.Click Element                    id=android:id/button1
    
    Sleep    2
    Captura tela
Coloca nome do alarme
    Log To Console    -> Colocando nome no alarme...\n
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.LinearLayout[@content-desc="10:30 Alarme"]/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.TextView    20
    AppiumLibrary.Click Element                    xpath=//android.widget.LinearLayout[@content-desc="10:30 Alarme"]/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.TextView
    
    AppiumLibrary.Wait Until Element Is Visible    id=android:id/message    20
    AppiumLibrary.Input Text                       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.FrameLayout/android.widget.EditText    Alarme teste
    
    AppiumLibrary.Wait Until Element Is Visible    id=android:id/button1    20
    AppiumLibrary.Click Element                    id=android:id/button1
    
    Sleep    2
    Captura tela
Escolhe toque do alarme
    Log To Console    -> Escolhendo toque para o alarme...\n
    AppiumLibrary.Wait Until Element Is Visible    id=com.google.android.deskclock:id/choose_ringtone    20
    AppiumLibrary.Click Element                    id=com.google.android.deskclock:id/choose_ringtone
    
    AppiumLibrary.Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.CheckedTextView[3]    20
    AppiumLibrary.Click Element                    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.CheckedTextView[3]
    
    AppiumLibrary.Wait Until Element Is Visible    id=android:id/button1    20
    AppiumLibrary.Click Element                    id=android:id/button1
    
    Sleep    2
    Captura tela
Repete alarme durante a semana
    Log To Console    -> Repetindo alarme para semana...\n
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@content-desc="10:30"]    20
    AppiumLibrary.Click Element                    id=com.google.android.deskclock:id/repeat_onoff

    AppiumLibrary.Click Element                    xpath=//android.widget.CheckBox[@content-desc="domingo"]
    AppiumLibrary.Click Element                    xpath=//android.widget.CheckBox[@content-desc="sábado"]
    
    Sleep    2
    Captura tela
Desabilita alarme
    Log To Console    -> Desabitando alarme...\n
    AppiumLibrary.Click Element    xpath=//*[@text="ATIVAR"]
    
    Sleep    2
    Captura tela
Clica no icone para excluir alarme
    Log To Console    -> Excluindo alarme...\n
    AppiumLibrary.Click Element    id=com.google.android.deskclock:id/delete
    
    Sleep    2
    Captura tela