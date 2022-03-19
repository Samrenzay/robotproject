*** Settings ***
Library     SeleniumLibrary
Test Teardown   Close Browser

*** Test Cases ***
TC1
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=http://google.com/
    ${link_count}    Get Element count    tag=a
    Log To Console   ${link_count}
    @{elements}      Get WebElements    tag=a
    Log To Console    ${elements}
#    Click Element    ${elements}[0]
    ${text}    Get Text    ${elements}[0]
    Log To Console    ${text}
