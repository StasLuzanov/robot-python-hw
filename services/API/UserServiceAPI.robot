*** Settings ***
Library           UserAPILib
Library           UserLib
Resource          ../../services/UI/UserUILib.robot
Resource          ../../conf/Common.robot


*** Keywords ***


Create valid user
    [Arguments]        ${login}=    ${password}=    ${firstName}=   ${lastName}=    ${accountId}=   ${email}=   ${enabled}=    ${accountAdmin}=
    ...                ${liteUser}=     ${engageUser}=     ${company}=        ${jobTitle}=       ${phone}=      ${address1}=       ${address2}=
    ...                ${country}=      ${state}=      ${zip}=        ${collaborateLogin}=
    ...                ${autoRefreshEnabled}=   ${autoRefreshInterval}=

    ${user}=    create user object   ${login}    ${password}    ${firstName}   ${lastName}    ${accountId}   ${email}   ${enabled}    ${accountAdmin}
    ...                ${liteUser}     ${engageUser}     ${company}        ${jobTitle}       ${phone}      ${address1}       ${address2}
    ...                ${country}      ${state}      ${zip}        ${collaborateLogin}
    ...                ${autoRefreshEnabled}   ${autoRefreshInterval}
    ${id}=      Create user api     ${HOST}     ${PORT}  ${ADMIN_USER}    ${ADMIN_PASSWORD}       ${user}
    ${user.id}=   Set Variable     ${id}
    Set Suite Variable  ${user}


Create invalid credentials
    [Arguments]        ${login}=${user.login}    ${password}=${user.password}
    ${invalidUser}=    create user object   ${login}    ${password}
    Set Suite Variable  ${invalidUser}

Delete user
    [Arguments]        ${usr}=${user}
    ${user}=    Set Variable    ${usr}
    ${status}=    delete user api   ${HOST}     ${PORT}  ${ADMIN_USER}    ${ADMIN_PASSWORD}       ${user.id}
    Should be equal  ${status}       Accepted