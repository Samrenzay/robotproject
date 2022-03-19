*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://demo.openemr.io/b/openemr
    ${text}     Get Text   xpath=//p[contains(text(), 'open-source')]
    Log To Console    ${text}
    Should Be Equal    ${text}    The most popular open-source Electronic Health Record and Medical Practice Management solution.

    ${placeholder_value}    Get Element Attribute    id=authUser    placeholder
    Log To Console    ${placeholder_value}