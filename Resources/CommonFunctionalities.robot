***Settings***
Library  SeleniumLibrary

***Variables***
${url}  https://app.mydigipay.com/auth/login
${browser}  chrome
${speed}  0 second  
${timeout}  60s


***Keywords***
first operations
    Set Selenium Speed  ${speed}
    Set Selenium Timeout  ${timeout}
    Open Browser  ${url}  ${browser} 
    Maximize Browser Window  
    

last operations
    Close Browser