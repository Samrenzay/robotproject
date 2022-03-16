*** Settings ***
Library     SeleniumLibrary

Test Teardown       Close Browser

*** Test Cases ***
TC1 Sign Up
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Set Selenium Speed             1s
    Go To    url=https://www.royalcaribbean.com/account/
    Click Element    link=Create an account
    Input Text    xpath=//input[@data-placeholder="First name/Given name"]    sam
    Input Text    xpath=//input[@data-placeholder="Last name/Surname"]   amu
    Click Element    xpath=//span[text()='Month']
    Click Element    xpath=//span[contains(text(),'April')]
    Click Element    xpath=//span[text()='Day']
    Scroll Element Into View    xpath=//span[contains(text(),'26')]
    Click Element    xpath=//span[contains(text(),'26')]
    Input Text       xpath=//input[@data-placeholder="Year"]    1992
    Click Element    xpath=//span[text()='Country/Region of residence']
    Click Element    xpath=//span[contains(text(),'India')]
    Input Text       xpath=//input[@data-placeholder="Email address"]   sam@gmail.com
    Click Element    xpath=//span[text()="Select one security question"]
    Click Element    xpath=//span[contains(text(),"What elementary school did you go to?")]
    Input Text       xpath=//input[@data-placeholder="Answer"]    xyz
    Click Element    xpath=//span[@class="mat-checkbox-inner-container mat-checkbox-inner-container-no-side-margin"]
    Click Element    xpath=//button[normalize-space()="Done"]
    sleep   5s