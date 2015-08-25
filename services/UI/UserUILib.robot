*** Settings ***
Library           Selenium2Library
Resource          ../../conf/Common.robot

*** Variables ***
${USERNAME_TEXTBOX_LOCATOR}    j_username
${PASSWORD_TEXTBOX_LOCATOR}    j_password
${LOGIN_BUTTON_LOCATOR}    //button[@type='submit']
${ERROR_MESSAGE_LOCATOR}    //font[@color='red']
${USER_OPTIONS_LOCATOR}    //div[@id='GButtonUserMenu']
${USER_OPTIONS_DROPDOWN_LOCATOR}    //a[text()='Logout']

*** Keywords ***
Open Login Page UI
    [Arguments]    ${loginUrl}    ${browser}
    Set Selenium Speed    ${SELENIUM_SPEED}
    Set Selenium Implicit Wait    ${IMPLICIT_WAIT}
    Set Selenium Timeout    ${SELENIUM_DEFAULT_TIMEOUT}
    Open Browser    ${loginUrl}    ${browser}
    Maximize Browser Window
    Page Should Contain Button    ${LOGIN_BUTTON_LOCATOR}

Login UI
    [Arguments]    ${login}    ${password}
    Input Text    ${USERNAME_TEXTBOX_LOCATOR}    ${login}
    Input Password    ${PASSWORD_TEXTBOX_LOCATOR}    ${password}
    Click Button    ${LOGIN_BUTTON_LOCATOR}
    ${message}=    Get Error message on login UI
    [Return]  ${message}

Get Error message on login UI
    ${status}=   Run Keyword And Return Status    Element Should Be Visible   ${ERROR_MESSAGE_LOCATOR}
    ${error}=   Run Keyword If  '${status}'=='True'     Get Text    ${ERROR_MESSAGE_LOCATOR}    ELSE    Set variable    No error
    [Return]  ${error}

Login and check an error UI
    [Arguments]        ${sts}   ${usr}=${user}
    ${status}=  Login UI    ${usr.login}   ${usr.password}
    Should be equal     '${status}'   '${sts}'

Close browser UI
    Close browser

Logout UI
    Click Element    ${USER_OPTIONS_LOCATOR}
    Click Element    ${USER_OPTIONS_DROPDOWN_LOCATOR}


