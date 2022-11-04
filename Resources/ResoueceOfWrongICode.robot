***Settings***
Documentation  Success Login
Library  SeleniumLibrary
Library  Dialogs

Resource  CommonFunctionalities.robot
Resource  ResourceOfLogin.robot
Resource  ResourceOfLogin.robot

***Variables***

${transferToCard}  //div[@role='tab']//div
${transferToWallet}  (//div[@role='tab']//div)[2]
${enterInternationalCodeText}  //form[contains(@class,'national-code-area desktop-page-content-wrapper')]//div
${mobileNumber}  //span[text()=' ${mobile} ']

${ICodeFrame}  //input[@formcontrolname='field']
${secondContinueButton}  //button[@class="ui-button default"]
${ICode}  1111111111
${invalidICode}  //mat-error[text()=' کد ملی وارد شده نامعتبر می باشد ']


***Keywords***

Click withdraw
    Click Element  ${withdraw/transfer}
    Switch Window  CURRENT
    Wait Until Page Contains Element  ${transferToCard}
    Page Should Contain Element  ${transferToWallet}
    Page Should Contain Element  ${enterInternationalCodeText}
    Page Should Contain Element  ${mobileNumber}

Entering Invalid International Code
    Page Should Contain Element  ${ICodeFrame}
    Element Should Be Disabled  ${secondContinueButton}
    Input Text  ${ICodeFrame}  ${ICode}
    Element Should Be Disabled  ${secondContinueButton}
    Page Should Contain Element  ${invalidICode}
    Sleep  2s