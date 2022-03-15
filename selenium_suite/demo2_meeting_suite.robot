*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
TC1
     open Browser    url=https://www.goto.com/meeting/     browser=chrome  executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait   5s
     Click Element    id=truste-consent-button
     Click Element    link=Get a Demo
     Input Text    xpath=//input[@data-sc-field-name='firstName']    john
     Input Text    xpath=//input[@data-sc-field-name='lastName']    wick
     Input Text    xpath=//input[@data-sc-field-name='email']    john@gmail.com
     Select From List By Label   xpath=//select[@data-sc-field-name="employees"]    10 - 99
     Click Element    xpath=//input[@type='submit']
     [Teardown]    Close Browser
