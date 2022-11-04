***Settings***
Documentation  Edit Mobile Number Without Change Number in Digipay

Library  SeleniumLibrary
Library  Dialogs


Resource  ../Resources/CommonFunctionalities.robot
Resource  ../Resources/ResourceOfEditNumber.robot

Force Tags  Login
Test Setup  first operations
Test Teardown  last operations




***Test Cases***
Checking Edit Number In Digipay
    [Documentation]  Edit Number Whitout Change Number
    Skip Initial Pages
    Entering Mobile Number
    Edit Number
    Continue Without Change Number
    Press Continue Button For Second Time

