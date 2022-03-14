*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
*** Test Cases ***
TC1
   Append To Environment Variable      Path      ${EXECDIR}${/}driver${/}
   open Browser    url=https://opensource-demo.orangehrmlive.com/  browser=chrome
   Maximize Browser Window
   Set Selenium Implicit Wait     10s
   Input Text    id=txtUsername   Admin
   Input Password    id=txtPassword    admin123
   Click Element      id=btnLogin
   Page Should Contain     My Info
   Click Element    id=welcome
   Click Element    link=Logout




