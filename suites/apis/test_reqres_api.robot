*** Settings ***
Library     RequestsLibrary
Library     Collections
 
 
*** Variables ***
${base_url}         https://reqres.in
${api_users}        ${base_url}/api/users
${page_id}          2
 
 
*** Test Cases ***
Quick Get Request List Users
    log    ${api_users}
    ${response}=    GET      ${api_users}     params=page=${page_id}   expected_status=200
    log    ${response.json()}
    Should Be Equal As Strings    6  ${response.json()}[per_page]
    Should Be Equal As Strings    12  ${response.json()}[total]
    Should Be Equal As Strings    7  ${response.json()}[data][0][id]