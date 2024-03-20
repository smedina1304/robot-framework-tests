*** Settings ***
Library     SeleniumLibrary


*** Variables ***

## COMMUN DATA
${base_url}        https://afry-br.github.io
${home_url}        ${base_url}/ui5_mock_test/
${browse_name}     chrome

## Page - Cockpit Order Process
### Dados de entrada
${cod_plant}                0001
${dt_ini}                   14/05/2021
${dt_fim}                   15/05/2021
${order_num}                012345678

### Elementos da Tela
${subtela_op}               //span[@id="__text20"]
${button_buscar}            //button[@id="__xmlview0--bt_search"]
${input_combo_planta}       //input[@id="__xmlview0--combo_plant-inner"]
${input_dt_ini_perio}       //input[@id="__xmlview0--dt_ini_perio-inner"]
${input_dt_fim_perio}       //input[@id="__xmlview0--dt_fim_perio-inner"]
${table_ordem_1}            //td[@id="__item5-__xmlview0--table_ordens-0-cell0"]


*** Test Cases ***
Open Page - Cockpit Order Process
    Log             message="URL "+${home_url}    level=INFO
    Open Browser    url=${home_url}    browser=${browse_name}
    Maximize Browser Window
    Wait Until Element Is Visible    locator=${button_buscar}    timeout=10
    Capture Page Screenshot
    Input Text      ${input_combo_planta}    ${cod_plant}
    Press Keys      ${input_combo_planta}    ENTER
    Input Text      ${input_dt_ini_perio}    ${dt_ini}
    Press Keys      ${input_dt_ini_perio}    TAB
    Input Text      ${input_dt_fim_perio}    ${dt_fim}
    Press Keys      ${input_dt_fim_perio}    TAB
    Click Element   ${button_buscar}
    Wait Until Element Is Visible            ${table_ordem_1}    timeout=10
    Capture Page Screenshot
    Click Element   ${table_ordem_1}
    Wait Until Element Is Visible            ${subtela_op}       timeout=10
    Element Text Should Be                   ${subtela_op}       expected=${order_num}
    Page Should Contain        text=${order_num}
    Capture Page Screenshot
    Close Browser
