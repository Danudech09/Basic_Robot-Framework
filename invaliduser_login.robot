***Settings***
Library    SeleniumLibrary

***Variables***
${URL}  https://practicetestautomation.com/practice-test-login/
${Username}     student
${Password}     Password123
${INVALID_USERNAME}   sttudent
${INVALID_PASSWOED}   123
${INVALID_USERNAME_MSG}   Your username is invalid!
${INVALID_PASSWOED_MSG}     Your password is invalid!

***Test Cases***
Login with invalid username
    Open Browser    ${URL}  chrome
    Title Should Be     Test Login | Practice Test Automation
    Input Text  xpath=//input[@id='username']     ${INVALID_USERNAME}
    Input Password  xpath=//input[@id='password']     ${Password}
    Click Button    xpath=//button[@id='submit']
    Page Should Contain     ${INVALID_USERNAME_MSG}
    Close Browser

Login with invalid password
    Open Browser    ${URL}  chrome
    Title Should Be     Test Login | Practice Test Automation
    Input Text  xpath=//input[@id='username']     ${Username}
    Input Password  xpath=//input[@id='password']     ${INVALID_PASSWOED}
    Click Button    xpath=//button[@id='submit']
    Page Should Contain     ${INVALID_PASSWOED_MSG}
    Close Browser