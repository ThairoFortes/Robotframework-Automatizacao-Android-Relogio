*** Settings ***
Library    AppiumLibrary

*** Keywords ***
Clica no icone de alarme
    Log To Console    -> Entrando na tela de alarmes...\n
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Alarme"]    20
    AppiumLibrary.Click Element                    xpath=//android.widget.ImageView[@content-desc="Alarme"]
    Capture Page Screenshot

Clica botao de adicionar alarme
    Log To Console    -> Clicando no boão para adicionar novo alarme...\n
    AppiumLibrary.Wait Until Element Is Visible    id=com.google.android.deskclock:id/fab    20
    AppiumLibrary.Click Element                    id=com.google.android.deskclock:id/fab
    Capture Page Screenshot

Seleciona a hora do alarme
    Log To Console    -> Selecionando a hora para o alarme...\n
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.RadialTimePickerView.RadialPickerTouchHelper[@content-desc="10"]    20
    AppiumLibrary.Click Element                    xpath=//android.widget.RadialTimePickerView.RadialPickerTouchHelper[@content-desc="10"]
    
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.RadialTimePickerView.RadialPickerTouchHelper[@content-desc="30"]    20
    AppiumLibrary.Click Element                    xpath=//android.widget.RadialTimePickerView.RadialPickerTouchHelper[@content-desc="30"]
    
    AppiumLibrary.Wait Until Element Is Visible    id=android:id/button1    20
    AppiumLibrary.Click Element                    id=android:id/button1
    Capture Page Screenshot

Coloca nome ao alarme
    Log To Console    -> Colocando nome no alarme...\n
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.LinearLayout[@content-desc="10:30 Alarme"]/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.TextView    20
    AppiumLibrary.Click Element                    xpath=//android.widget.LinearLayout[@content-desc="10:30 Alarme"]/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.TextView
    Sleep    3
    
    AppiumLibrary.Wait Until Element Is Visible    id=android:id/message    20
    AppiumLibrary.Input Text                       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.FrameLayout/android.widget.EditText    Alarme teste
    
    AppiumLibrary.Wait Until Element Is Visible    id=android:id/button1    20
    AppiumLibrary.Click Element                    id=android:id/button1
    Capture Page Screenshot

Escolhe toque do alarme
    Log To Console    -> Escolhendo toque para o alarme...\n
    AppiumLibrary.Wait Until Element Is Visible    id=com.google.android.deskclock:id/choose_ringtone    20
    AppiumLibrary.Click Element                    id=com.google.android.deskclock:id/choose_ringtone
    
    AppiumLibrary.Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.CheckedTextView[3]    20
    AppiumLibrary.Click Element                    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.CheckedTextView[3]
    
    AppiumLibrary.Wait Until Element Is Visible    id=android:id/button1    20
    AppiumLibrary.Click Element                    id=android:id/button1
    Capture Page Screenshot