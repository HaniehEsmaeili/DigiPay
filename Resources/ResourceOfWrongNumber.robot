***Settings***
Documentation  Entering Wrong Mobile Number Test in Digipay
Library  SeleniumLibrary


***Variables***
${mobile}  66564528945
${password}  3241

${receiveLoan}  //h1[@class='slide-title ng-star-inserted']
${firstNextPage}  //span[@class='ng-star-inserted']
${cardToCard}  (//h1[@class='slide-title ng-star-inserted'])[2] 
${firstPreviusPage}  (//span[@class='mat-button-wrapper'])[2]
${secondNextPage}  //span[@class='ng-star-inserted']//span[1]
${digipay}  (//h1[@class='slide-title ng-star-inserted'])[3]
${secondPreviusPage}  //span[@class='ng-star-inserted']
${enterToDigipay}  //span[@class='ng-star-inserted']
${loginLogo}  //div[@class="login-awareness-section__image ng-star-inserted"]
${loginText}  //p[@dir='rtl']
${mobileFrame}  //input[@type='tel']
${firstContinueButton}  //button[@class="mat-focus-indicator digipay-btn mat-button mat-button-base"]
${invaldNumber}  //div[text()=' شماره تلفن همراه صحیح نیست ']

${OTPLogo}  //img[@class="digipay-img"]
${OTPFrame}  //div[@class='mat-form-field-flex ng-tns-c140-2']//div[1]
${editButton}  (//span[@class="icon"])
${OTPPageNumber}  //label[text()=' ${mobile} ']
${enterCode}  //label[@class='for-receive-code-lbl']/following-sibling::label[1]

${passwordLogo}  //div[@class='content']//img[1]
${enterPassword}  //div[@class='pin-input']//p[1]
${passwordFrame}  //div[@class='input']//input

${profileLogo}  //img[@class='digipay-logo logo-big']
${walletBalance}  //div[@class='wallet-balance ng-star-inserted']//h3[1]
${increase}  //span[@class='mat-button-wrapper']
${withdraw/transfer}  (//span[@class='mat-button-wrapper'])[2]




***Keywords***

Skip Initial Pages
    Wait Until Element Is Visible  ${receiveLoan}
    Wait Until Element Is Enabled  ${firstNextPage}
    Click Element  ${firstNextPage}

    Wait Until Element Is Visible  ${cardToCard}
    Page Should Contain Element  ${firstPreviusPage}
    Wait Until Element Is Enabled  ${secondNextPage}
    Click Element  ${secondNextPage}

    Wait Until Element Is Visible  ${digipay}
    Page Should Contain Element  ${secondPreviusPage}
    Wait Until Element Is Enabled  ${enterToDigipay}
    Click Element  ${enterToDigipay}
    

Entering Invalid Mobile Number
    Wait Until Element is Visible  ${loginLogo}
    Page Should Contain Element  ${loginText}
    Page Should Contain Element  ${firstContinueButton}
    Wait Until Element is Enabled  ${mobileFrame}
    Input Text  ${mobileFrame}  ${mobile}
    Page Should Contain Element  ${invaldNumber}
    Element Should Be Disabled  ${firstContinueButton}
    Sleep  3s
