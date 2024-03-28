*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LOGIN_URL}  https://opensource-demo.orangehrmlive.com
${USERNAME_FIELD}  xpath://input[@name='username']
${PASSWORD_FIELD}  xpath://input[@name='password']
${LOGIN_BUTTON}  xpath://button[@type='submit']
${DASHBOARD_TITLE}  xpath://h6[@class='oxd-text oxd-text--h6 oxd-topbar-header-breadcrumb-module']

*** Keywords ***
Login With Credentials
    [Arguments]  ${username}  ${password}
    Wait Until Page Contains Element  ${USERNAME_FIELD}
    Input Text  ${USERNAME_FIELD}  ${username}
    Input Text  ${PASSWORD_FIELD}  ${password}
    Click Element  ${LOGIN_BUTTON}
    Wait Until Page Contains Element  ${DASHBOARD_TITLE}
