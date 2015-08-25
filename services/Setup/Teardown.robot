*** Settings ***
Documentation    This is a set of Keywords for Test Teardowns

Library           UserAPILib
Library           UserLib
Resource          ../services/UI/UserUILib.robot
Resource          ../services/API/UserServiceAPI.robot
Resource          ../conf/Common.robot

*** Keywords ***
Teardown For Tests
    Close browser UI