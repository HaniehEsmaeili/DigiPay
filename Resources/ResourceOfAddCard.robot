***Settings***
Documentation  Success Add Card number
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
${ICode}  0000000094

${enterCardNumber}  //p[@class='form-primary-text enter-pan-hint']
${cardNumberFrame}  //input[@type='tel']
${cardNumber}  6104338931371914

${expireDateFrame}  (//input[@type='tel'])[2]
${expireMonth}  02
${expireYear}  06
${dateFrame}  //div[@class='digipay-date-picker-ui is-month-picker']//div
${deleteDate}  (//div[@class='actions']//a)[2]
${confirmDate}  //div[@class='actions']//a[1]
${monthFrame}  (//div[@class='wrapper']//select)[2]
${yearFrame}  //div[@class='wrapper']//select
${inquiryButton}  //button[@class="ui-button default"]
${amountWithdrawn}  //span[@class='title invert-text']//span[1]

***Keywords***

Click withdraw
    Click Element  ${withdraw/transfer}
    Switch Window  CURRENT
    Wait Until Page Contains Element  ${transferToCard}
    Page Should Contain Element  ${transferToWallet}
    Page Should Contain Element  ${enterInternationalCodeText}
    Page Should Contain Element  ${mobileNumber}

Entering International Code
    Page Should Contain Element  ${ICodeFrame}
    Element Should Be Disabled  ${secondContinueButton}
    Input Text  ${ICodeFrame}  ${ICode}
    Element Should Be Enabled  ${secondContinueButton}
    Click Element  ${secondContinueButton}

Entering Card Number
    Switch Window  CURRENT
    Element Should Be Disabled  ${inquiryButton}
    Wait Until Page Contains Element  ${enterCardNumber}
    Page Should Contain Element  ${cardNumberFrame}
    Input Text  ${cardNumberFrame}  ${cardNumber}

Entering Expire Date
    Element Should Be Disabled  ${inquiryButton}
    Page Should Contain Element  ${expireDateFrame}
    Click Element  ${expireDateFrame}
    Wait Until Page Contains Element  ${dateFrame}
    Page Should Contain Element  ${deleteDate}
    Page Should Contain Element  ${confirmDate}
    Click Element  ${monthFrame}
    Select From List By Index  ${monthFrame}  ${expireMonth}
    Click Element  ${yearFrame}
    Select From List By Index  ${yearFrame}  ${expireYear}
    Click Element  ${confirmDate}
    Wait Until Element Is Enabled  ${inquiryButton}
    Element Should Be Enabled  ${inquiryButton}
    Click Element  ${inquiryButton}
    Sleep  3s
    Switch Window  CURRENT
    Wait Until Page Contains Element  ${amountWithdrawn}

    
