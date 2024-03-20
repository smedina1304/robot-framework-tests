*** Settings ***
Resource    afry_br_github.resource

*** Variables ***
## SAP UI5 - Page - Blender Monitor
## Page Vars & Input Data
&{page_blender_mon_data}
...  url=${afry_br_github.base_url}/Britvic_BlenderMonitor/

## Page Elements
&{page_blender_mon_element}
...  header_blender=Monitoramento Blender Fábrica
...  header_buffer=Monitoramento Buffer Fábrica
...  rb_blender=//bdi[@id="__xmlview0--BL-label-bdi"]
...  rb_buffer=//bdi[@id="__xmlview0--BF-label-bdi"]
