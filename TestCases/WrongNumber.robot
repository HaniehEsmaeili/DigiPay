***Settings***
Documentation  Entering Wrong Mobile Number Test in Digipay

Library  SeleniumLibrary


Resource  ../Resources/CommonFunctionalities.robot
Resource  ../Resources/ResourceOfWrongNumber.robot

Force Tags  Wrong Mobile Number
Test Setup  first operations
Test Teardown  last operations


***Test Cases***
Checking Invalidity Of Mobile Number In Digipay
    [Documentation]  Invalid Number Test
    Skip Initial Pages
    Entering Invalid Mobile Number