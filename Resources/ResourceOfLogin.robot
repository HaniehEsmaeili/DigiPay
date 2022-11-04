***Settings***
Documentation  Success Login
Library  SeleniumLibrary
Library  Dialogs


***Variables***
${mobile}  09106679523
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
${firstContinueButton}  //span[@class='ng-star-inserted']

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
    

Entering Mobile Number
    Wait Until Element is Visible  ${loginLogo}
    Page Should Contain Element  ${loginText}
    Wait Until Element is Enabled  ${mobileFrame}
    Input Text  ${mobileFrame}  ${mobile}
    Wait Until Element Is Enabled  ${firstContinueButton}
    Click Element  ${firstContinueButton}
     

Entering OTP
    Switch Window  CURRENT
    Wait Until Element is Visible  ${OTPLogo}
    Page Should Contain Element  ${editButton}
    Page Should Contain Element  ${OTPPageNumber}
    Page Should Contain Element  ${enterCode}
    Wait Until Element Is Enabled  ${OTPFrame}
    Click Element  ${OTPFrame}
    Execute Manual Step    Please Enter OTP And Then Press PaASS  #interact with user
    # Sleep  10s   #entering OTP
    # Log  Wait For OTP
    
Entering Password
    Switch Window  CURRENT
    Wait Until Page Contains Element  ${passwordLogo}
    Page Should Contain Element  ${enterPassword}
    Input Text  ${passwordFrame}  ${password}
    
Entering In Profile
    Switch Window  CURRENT
    Wait Until Element Is Visible  ${profileLogo}
    Page Should Contain Element  ${walletBalance}
    Page Should Contain Element  ${increase}
    Page Should Contain Element  ${withdraw/transfer}
    Sleep  2s


