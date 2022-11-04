***Settings***
Documentation  Edit Mobile Number Without Change
Library  SeleniumLibrary
Library  Dialogs


***Variables***
${mobile}  09033465952
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
${outOfRangeMessage}  //span[text()='تعداد پیامک های ارسال شده در بازه از حد مجاز بیشتر است.']
${sendBefore}  //span[text()='رمز یکبار مصرف قبلا برای شما ارسال شده است. لطفا صبر کنید.']




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

Edit Number
    Switch Window  CURRENT
    Wait Until Element is Visible  ${OTPLogo}
    Page Should Contain Element  ${editButton}
    Page Should Contain Element  ${OTPPageNumber}
    Page Should Contain Element  ${enterCode}
    Click Element  ${editButton}

Continue Without Change Number
    Switch Window  CURRENT
    Wait Until Page Contains Element  ${loginLogo}
    Page Should Contain Element  ${loginText}
    Element Should Be Enabled  ${firstContinueButton}
    Click Element  ${firstContinueButton}
    Wait Until Page Contains Element  ${sendBefore}

Press Continue Button For Second Time
    Wait Until Page Does Not Contain Element  ${sendBefore}
    Click Element  ${firstContinueButton}
    Wait Until Page Contains Element  ${outOfRangeMessage}
    Sleep  3s

