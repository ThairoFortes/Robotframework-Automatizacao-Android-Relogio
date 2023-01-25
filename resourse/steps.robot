*** Settings ***
Library    AppiumLibrary

*** Keywords ***
Clica no icone de alarme
    Log To Console    -> Entrando na tela de alarmes...\n
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Alarme"]    20
    AppiumLibrary.Click Element                    xpath=//android.widget.ImageView[@content-desc="Alarme"]
    
    Sleep    1
    Capture Page Screenshot

Clica botao de adicionar alarme
    Log To Console    -> Clicando no boão para adicionar novo alarme...\n
    AppiumLibrary.Wait Until Element Is Visible    id=com.google.android.deskclock:id/fab    20
    AppiumLibrary.Click Element                    id=com.google.android.deskclock:id/fab
    
    Sleep    1
    Capture Page Screenshot

Seleciona a hora do alarme
     Log To Console    -> Selecionando a hora para o alarme...\n
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.RadialTimePickerView.RadialPickerTouchHelper[@content-desc="10"]    20
    AppiumLibrary.Click Element                    xpath=//android.widget.RadialTimePickerView.RadialPickerTouchHelper[@content-desc="10"]
    
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.RadialTimePickerView.RadialPickerTouchHelper[@content-desc="30"]    20
    AppiumLibrary.Click Element                    xpath=//android.widget.RadialTimePickerView.RadialPickerTouchHelper[@content-desc="30"]
    
    AppiumLibrary.Wait Until Element Is Visible    id=android:id/button1    20
    AppiumLibrary.Click Element                    id=android:id/button1
    
    Sleep    1
    Capture Page Screenshot

Coloca nome do alarme
    Log To Console    -> Colocando nome no alarme...\n
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.LinearLayout[@content-desc="10:30 Alarme"]/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.TextView    20
    AppiumLibrary.Click Element                    xpath=//android.widget.LinearLayout[@content-desc="10:30 Alarme"]/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.TextView
    
    AppiumLibrary.Wait Until Element Is Visible    id=android:id/message    20
    AppiumLibrary.Input Text                       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.FrameLayout/android.widget.EditText    Alarme teste
    
    AppiumLibrary.Wait Until Element Is Visible    id=android:id/button1    20
    AppiumLibrary.Click Element                    id=android:id/button1
    
    Sleep    1
    Capture Page Screenshot

Escolhe toque do alarme
    Log To Console    -> Escolhendo toque para o alarme...\n
    AppiumLibrary.Wait Until Element Is Visible    id=com.google.android.deskclock:id/choose_ringtone    20
    AppiumLibrary.Click Element                    id=com.google.android.deskclock:id/choose_ringtone
    
    AppiumLibrary.Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.CheckedTextView[3]    20
    AppiumLibrary.Click Element                    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.CheckedTextView[3]
    
    AppiumLibrary.Wait Until Element Is Visible    id=android:id/button1    20
    AppiumLibrary.Click Element                    id=android:id/button1
    
    Sleep    1
    Capture Page Screenshot

Repete alarme durante a semana
    Log To Console    -> Repetindo alarme para semana...\n
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@content-desc="10:30"]    20
    AppiumLibrary.Click Element                    id=com.google.android.deskclock:id/repeat_onoff
    
    AppiumLibrary.Click Element                    xpath=//android.widget.CheckBox[@content-desc="domingo"]
    AppiumLibrary.Click Element                    xpath=//android.widget.CheckBox[@content-desc="sábado"]

    Sleep    1
    Capture Page Screenshot

Desabilita alarme
    Log To Console    -> Desabitando alarme...\n
    AppiumLibrary.Click Element    xpath=//android.widget.LinearLayout[@content-desc="10:30 Alarme"]/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.Switch

    Sleep    1
    Capture Page Screenshot

Clica no icone para excluir alarme
    Log To Console    -> Excluindo alarme...\n
    AppiumLibrary.Click Element    id=com.google.android.deskclock:id/delete

    Sleep    1
    Capture Page Screenshot

Clica no icone de relogio
    Log To Console    -> Clicando no icone de reolgio mundial...\n
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Relógio"]    20
    AppiumLibrary.Click Element                    xpath=//android.widget.ImageView[@content-desc="Relógio"]

    Sleep    1
    Capture Page Screenshot

Clica no botao de adicionar horario
    Log To Console    -> Clicando no icone de adicionar horario...\n
    AppiumLibrary.Wait Until Element Is Visible    id=com.google.android.deskclock:id/fab    20
    AppiumLibrary.Click Element                    id=com.google.android.deskclock:id/fab

    Sleep    1
    Capture Page Screenshot

Pesquisa pelo local
    Log To Console    -> Pesquisando local...\n
    AppiumLibrary.Wait Until Element Is Visible    id=com.google.android.deskclock:id/search_button    20
    AppiumLibrary.Click Element                    id=com.google.android.deskclock:id/search_button

    AppiumLibrary.Input Text                       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.view.ViewGroup/ahh/ahh/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.EditText    Brasília

    Sleep    1
    Capture Page Screenshot

Seleciona o local 
    Log To Console    -> Selecionando local...\n
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.CheckBox[@content-desc="Brasília"]    20
    AppiumLibrary.Click Element                    xpath=//android.widget.CheckBox[@content-desc="Brasília"]
    
    Sleep    1
    Capture Page Screenshot

Visualiza horario do local
    Log To Console    -> Visualizando horario do local selecionado...\n
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.ImageButton[@content-desc="Navegar para cima"]    20
    AppiumLibrary.Click Element                    xpath=//android.widget.ImageButton[@content-desc="Navegar para cima"]

    Sleep    1
    Capture Page Screenshot