***Settings***
Documentation  Success Entering a Card Test in Digipay

Library  SeleniumLibrary
Library  Dialogs


Resource  ../Resources/CommonFunctionalities.robot
Resource  ../Resources/ResourceOfLogin.robot
Resource  ../Resources/ResourceOfAddCard.robot

Force Tags  Add Card
Test Setup  first operations
Test Teardown  last operations



***Test Cases***
Checking Add Card In Digipay
    [Documentation]  Success Add Card
    Skip Initial Pages
    Entering Mobile Number
    Entering OTP
    Entering Password
    Entering In Profile
    Click withdraw
    Entering International Code
    Entering Card Number
    Entering Expire Date