***Settings***
Documentation  Success Login Test in Digipay

Library  SeleniumLibrary
Library  Dialogs


Resource  ../Resources/CommonFunctionalities.robot
Resource  ../Resources/ResourceOfLogin.robot

Force Tags  Login
Test Setup  first operations
Test Teardown  last operations




***Test Cases***
Checking Login In Digipay
    [Documentation]  Success Login
    Skip Initial Pages
    Entering Mobile Number
    Entering OTP
    Entering Password
    Entering In Profile

