*** Settings ***
Documentation    user info controller robot
Resource        ../keywords/api/user_info_keywords.robot
#Suite Setup       Run Keywords    Connect to "KOTLIN_APPLICATION" database as "kp"
#
#Suite Teardown    Run Keywords    Disconnect from database DB Connector    kp

*** Test Cases ***
TC_0000001 API get user info success
    [Tags]  regression  smoke_test  high
    [Documentation]  To verify API get user info Info return success and return user information correctly
    When Call get user info endpoint    'application/json'
    Then HTTP status should be '200'
    And Response status should be '${response_status.CODE1000}'

TC_0000002 API post create user info success
    [Tags]  regression   high
    [Documentation]  To verify API post create user info Info return success and return user information correctly
    When Call post create user info endpoint    'application/json'
    Then HTTP status should be '200'
    And Response status should be '${response_status.CODE1000}'
    And Response data phone no should be '${user_info_result.TC_0000002.phoneNo}'
