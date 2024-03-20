*** Settings ***
Resource    afry_br_github.resource

*** Variables ***
## SAP UI5 - Page - Cockpit Order Process
## Page Vars & Input Data
&{page_cockpit_data}
...  url=${afry_br_github.base_url}/ui5_mock_test/
...  cod_plant=0001
...  dt_ini=14/05/2021
...  dt_fim=15/05/2021
...  order_num=012345678

## Page Elements
&{page_cockpit_element}
...  subtela_op=//span[@id="__text20"]
...  button_buscar=//button[@id="__xmlview0--bt_search"]
...  input_combo_planta=//input[@id="__xmlview0--combo_plant-inner"]
...  input_dt_ini_perio=//input[@id="__xmlview0--dt_ini_perio-inner"]
...  input_dt_fim_perio=//input[@id="__xmlview0--dt_fim_perio-inner"]
...  table_ordem_1=//td[@id="__item5-__xmlview0--table_ordens-0-cell0"]