*** Settings ***
Resource        ../../resources/imports.robot

*** Keywords ***
#Connect to "${db}" database as "${connected_db}"
#    ${mysql_db}=    MySQLDBConnector.Connect    ${${db}.DBNAME}    ${${db}.DBUSER}    ${${db}.DBPASS}    ${${db}.DBHOST}    ${${db}.DBPORT}
#    Log    ${mysql_db}
#    Set Suite variable    ${${connected_db}}   ${mysql_db}
#
#Disconnect from database DB Connector
#    [Arguments]    ${connected_db}
#    Log    ${${connected_db}}
#    MySQLDBConnector.Close_connection    ${${connected_db}}