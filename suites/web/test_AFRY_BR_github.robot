*** Settings ***
Library           SeleniumLibrary
Resource          ./resources/afry_br_github.resource
Resource          ./resources/page_cockpit_order.resource
Resource          ./resources/page_blender_mon.resource

Suite Setup       Use Browser
Suite Teardown    Close Browser

*** Test Cases ***
SAP UI5 - Page - Cockpit Order Process
    Log      message="URL: "+${page_cockpit_data.url}    level=INFO
    Go To    url=${page_cockpit_data.url}
    Wait Until Element Is Visible    locator=${page_cockpit_element.button_buscar}    timeout=10
    Capture Page Screenshot
    Input Text      ${page_cockpit_element.input_combo_planta}    ${page_cockpit_data.cod_plant}
    Press Keys      ${page_cockpit_element.input_combo_planta}    ENTER
    Input Text      ${page_cockpit_element.input_dt_ini_perio}    ${page_cockpit_data.dt_ini}
    Press Keys      ${page_cockpit_element.input_dt_ini_perio}    TAB
    Input Text      ${page_cockpit_element.input_dt_fim_perio}    ${page_cockpit_data.dt_fim}
    Press Keys      ${page_cockpit_element.input_dt_fim_perio}    TAB
    Click Element   ${page_cockpit_element.button_buscar}
    Wait Until Element Is Visible            ${page_cockpit_element.table_ordem_1}    timeout=10
    Capture Page Screenshot
    Click Element   ${page_cockpit_element.table_ordem_1}
    Wait Until Element Is Visible            ${page_cockpit_element.subtela_op}       timeout=10
    Element Text Should Be                   ${page_cockpit_element.subtela_op}       expected=${page_cockpit_data.order_num}
    Page Should Contain        text=${page_cockpit_data.order_num}
    Capture Page Screenshot

SAP UI5 - Page - Blender Monitor
    Log      message="URL: "+${page_blender_mon_data.url}    level=INFO
    Go To    url=${page_blender_mon_data.url}
    Wait Until Element Is Visible   ${page_blender_mon_element.rb_buffer}       timeout=10
    Page Should Contain        text=${page_blender_mon_element.header_blender}
    Sleep    1
    Capture Page Screenshot
    Click Element              ${page_blender_mon_element.rb_buffer}
    Page Should Contain        text=${page_blender_mon_element.header_buffer}
    Sleep    1
    Capture Page Screenshot
    Click Element              ${page_blender_mon_element.rb_blender}
    Page Should Contain        text=${page_blender_mon_element.header_blender}
    Sleep    1
    Capture Page Screenshot