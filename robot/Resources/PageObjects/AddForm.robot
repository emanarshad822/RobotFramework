*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${ADMIN_LINK}  xpath:(//*[@class="oxd-main-menu-item"])[1]
${ADD_BUTTON}  xpath://button[@type='button' and @class='oxd-button oxd-button--medium oxd-button--secondary']
${USERROLE_FIELD}  xpath:(//div[@class='oxd-select-text oxd-select-text--active'])[1]
${USERROLE_FIELDVALUE}  xpath://span[text()='ESS']
${STATUS_FIELD}  xpath:(//div[@class='oxd-select-text oxd-select-text--active'])[2]
${STATUS_FIELDVALUE}  xpath://span[text()='Enabled']
${EMPLOYEE_NAME}  xpath://input[@placeholder='Type for hints...']
${EMPLOYEENAME_OPTIONS}  xpath://div[@class='oxd-autocomplete-option'][1]
${SUBMIT_BUTTON}  xpath://button[@type='submit']

*** Keywords ***
Add User Form
    Click Element  ${ADMIN_LINK}
    Wait Until Page Contains Element  ${ADD_BUTTON}
    Click Element  ${ADD_BUTTON}
    Wait Until Page Contains Element  ${USERROLE_FIELD}
    Click Element  ${USERROLE_FIELD}
    Click Element  ${USERROLE_FIELDVALUE}
    Click Element  ${STATUS_FIELD}
    Click Element  ${STATUS_FIELDVALUE}
    Clear Element Text  ${EMPLOYEE_NAME}
    Input Text  ${EMPLOYEE_NAME}  Ranga  Akunuri
    Wait Until Element Is Visible  ${EMPLOYEENAME_OPTIONS}
    Click Element  ${EMPLOYEENAME_OPTIONS}
#    Clear Element Text  //input[@class='oxd-input oxd-input--focus']
    Input Text  xpath:(//input[contains(@class, 'oxd-input')])[2]  admins
    Input Text  xpath:(//input[@type='password'])[1]  admin123
    Input Text  xpath:(//input[@type='password'])[2]  admin123
    Click Element  ${SUBMIT_BUTTON}