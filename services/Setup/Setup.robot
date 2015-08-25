*** Settings ***
Documentation    This is a set of Keywords for Test Setups

Library           UserAPILib
Library           UserLib
Resource          ../services/UI/UserUILib.robot
Resource          ../services/API/UserServiceAPI.robot
Resource          ../conf/Common.robot

*** Keywords ***
UserTest Setup
    Create valid user   \      8765GFRFFC   Stas   Luzanov  0   stas@epam.com  true    true    false   false   Clarabridge     QA  12312141    asd asd asdasd   asdasd  US  \   12345   asdasd   true    20
    Open Login Page UI  ${CMP_LOGIN_URL}    ${WEB_BROWSER}

Invalid User Password Setup
    Create invalid credentials      ${user.login}          askljasfasf
    Open Login Page UI  ${CMP_LOGIN_URL}    ${WEB_BROWSER}

Invalid User Name Setup
    Create invalid credentials  ASKJFHAF    ${user.password}
    Open Login Page UI  ${CMP_LOGIN_URL}    ${WEB_BROWSER}

Deleted User Setup
    Delete user
    Open Login Page UI  ${CMP_LOGIN_URL}    ${WEB_BROWSER}