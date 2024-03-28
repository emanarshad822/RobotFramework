*** Settings ***
Documentation  Login and Add User Functionality
Library  SeleniumLibrary
Resource   ../../Resources/PageObjects/LoginPage.robot
Resource   ../../Resources/PageObjects/AddForm.robot

*** Variables ***
${BROWSER}  Firefox

*** Test Cases ***
Verify Login Page for orangeHRM
    [Documentation]  This test case verifies the basic add user form functionality
    [Tags]  Functional
    Open Browser  ${LOGIN_URL}  ${BROWSER}
    Login With Credentials  Admin  admin123
    Add User Form
    Close Browser

