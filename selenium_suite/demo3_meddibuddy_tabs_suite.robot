*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
TC1
     open Browser        browser=chrome  executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait   20s
     Go To    url=https://www.medibuddy.in/
     Click Element    xpath=//button[text()='Not Now']
     Click Element    link=For Employer
     Switch Window    MediBuddy LaunchPad
     Input Text    id=getInTouchName    sam
     Input Text    id=getInTouchEmail    sam@gmail.com
     Input Text    id=getInTouchMobile    7889600001
     Input Text    id=getInTouchEmpCount    5