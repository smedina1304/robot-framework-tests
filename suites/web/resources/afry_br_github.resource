*** Settings ***
Library           SeleniumLibrary

*** Variables ***
&{afry_br_github}
...  git_url=https://github.com/AFRY-BR
...  base_url=https://afry-br.github.io
...  browse_name=chrome
...  lang=pt-BR


*** Keywords ***
Use Browser
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${options}    add_argument    --lang\=${afry_br_github.lang}
    Open Browser    url=${afry_br_github.git_url}    browser=${afry_br_github.browse_name}    options=${options}
    Set Window Position    x=1500    y=-300
    Set Window Size    width=1200    height=900
    #Maximize Browser Window