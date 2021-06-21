*** Settings ***
Resource        ../../resources/imports.robot


*** Keywords ***
Call get user info endpoint
    [Arguments]          ${content_type}
    ${headers}=  Create Dictionary   Content-Type=${content_type}
    create session       getUserInfo  ${api_host}${user_info.get_all}    headers=${headers}    verify=True
    ${response}=         Get Request     getUserInfo   ${EMPTY}
    ${resp_json}=        to json     ${response.text}
    set test variable    ${response_body}   ${resp_json}
    set test variable    ${response}    ${response}

Call post create user info endpoint
    [Arguments]  ${content_type}
    ${url} =	         Replace String	${user_info.get_all}	TextThatWhatToRemove	    ${content_type}
    #${requestBody}=    Evaluate    {"field1": ${field1_value}, "field2": ${field2_value}}
    ${headers}=  Create Dictionary   Content-Type=${content_type}
    create session       postCreateUserInfo  ${api_host}    verify=True
    #${response}=         Post Request     postCreateUserInfo  ${url}  headers=${headers}   data=${requestBody}
    ${response}=         Post Request     postCreateUserInfo  ${url}  headers=${headers}
    ${resp_json}=        to json     ${response.text}
    set test variable    ${response_body}   ${resp_json}
    set test variable    ${response}    ${response}

Response data phone no should be '${expected_phone_no}'
    [Documentation]    Verify response data phone no with expected data
    should be equal    ${response_body['data']['phoneNo']}    ${expected_phone_no}