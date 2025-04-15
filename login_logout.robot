***Settings***
Library    SeleniumLibrary

***Variables***
${URL}  https://practicetestautomation.com/practice-test-login/
${Username}     student
${Password}     Password123
${Text_loginsuccess}    Congratulations student. You successfully logged in!

***Test Cases***
Open Website Practice Test Automation and login, logout this website
    Open Browser    ${URL}  chrome
    Title Should Be     Test Login | Practice Test Automation
    Input Text  xpath=//input[@id='username']     ${Username}
    Input Password  xpath=//input[@id='password']     ${Password}
    Click Button    xpath=//button[@id='submit']
    Title Should Be     Logged In Successfully | Practice Test Automation
    Page Should Contain   ${Text_loginsuccess}
    Click Element    xpath=//a[normalize-space()='Log out']
    Close Browser

