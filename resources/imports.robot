*** Settings ***
Library     RequestsLibrary
Library     Collections
Library     DateTime
Library     String
Library     OperatingSystem
Library     json
Library     JSONLibrary
Library     DatabaseLibrary
Library     JSONSchemaLibrary
Library     DiffLibrary

Resource    ../keywords/common/common_keywords.robot
Resource    ../keywords/common/common_db_keywords.robot

Variables    configs/${ENV}/env_config.yaml
Variables    configs/common_config.yaml
Variables    configs/common_data.yaml

Variables    expected_result/responses.yaml
Variables    expected_result/user_info_result.yaml
