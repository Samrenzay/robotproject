*** Settings ***
Library     SeleniumLibrary
Library     AutoItLibrary


*** Test Cases ***
TC1
 Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
#  Open Browser    browser=headless chrome    executable_path=${EXECDIR}${/}driver${/}chromedriver.exe

    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Set Selenium Speed    1s
    Go To    url=http://john:john123@softwaretesting.com
TC2
     Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait    20s
     Set Selenium Speed    1s
     Go To    url=https://softwaretesting.com/
     Sleep    5s
     Send      SAM
     Send     {TAB}
     Send     Pass123
     Send     {ENTER}