*** Settings ***
Documentation    This is a test suite
Test Teardown  Teardown For Tests
Library           UserAPILib
Library           UserLib
Resource          ../services/UI/UserUILib.robot
Resource          ../services/API/UserServiceAPI.robot
Resource          ../conf/Common.robot
Resource          ../services/Setup/Setup.robot
Resource          ../services/Setup/Teardown.robot

*** Test Cases ***
Test Case 1 - Valid User Is Able To Login To Application
    [Setup]  UserTest Setup
    Login and check an error UI     No error

Test Case 2 - User With Invalid Password Is NOT Able To Login And Receives An Error
    [Setup]  Invalid User Password Setup
    Login and check an error UI     Incorrect login or password.    ${invalidUser}

Test Case 3 - User With Invalid Name Is NOT Able To Login And Receives An Error
    [Setup]  Invalid User Name Setup
    Login and check an error UI     Incorrect login or password.    ${invalidUser}

Test Case 3 - Deleted User Is NOT Able To Login And Receives An Error Message
    [Setup]  Deleted User Setup
    Login and check an error UI     Incorrect login or password.