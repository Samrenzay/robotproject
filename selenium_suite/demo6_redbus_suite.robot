*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
TC1
     open Browser        browser=chrome  executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait    10s
     Go To    url=https://www.redbus.in/
     Click Element    id=i-icon-profile
     Click Element    id=signInLink
     Select Frame    xpath=//iframe[@class='modalIframe']
     Input Text    id= mobileNoInp   12345
     Unselect Frame
     [Teardown]   Close Browser