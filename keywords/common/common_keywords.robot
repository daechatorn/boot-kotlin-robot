*** Settings ***
Resource        ../../resources/imports.robot


*** Keywords ***
HTTP status should be '${expected_code}'
    [Documentation]    Verify response http ststus with expected code
    should be equal as integers    ${response.status_code}    ${expected_code}

Response data should be '${expected_data}'
    [Documentation]    Verify response data with expected data
    should be equal    ${response_body['data']}    ${expected_data}

Response status should be '${expected_status}'
    [Documentation]    Verify response with expected status
    Should Be Equal   ${response_body['status']}    ${expected_status}

Response code should be '${expected_code}'
    [Documentation]    Verify response code with expected code
    should be equal    ${response_body['status']['code']}    ${expected_code}

Response desc should be '${expected_desc}'
    [Documentation]    Verify response code with expected code
    should be equal    ${response_body['status']['description']}    ${expected_desc}
