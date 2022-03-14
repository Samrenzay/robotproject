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
TC2
    Append To Environment Variable      Path      ${EXECDIR}${/}driver${/}
    open Browser    url=https://opensource-demo.orangehrmlive.com/  browser=chrome
    Maximize Browser Window
    Input Text        id=txtUsername   Admin
    Input Password    id=txtPassword    admin123
    Click Element      id=btnLogin
    Click Element      id=menu_pim_viewMyDetails
    Page Should Contain     My Info
    Click Element    Partial link=Emergency Contacts
    Click Element    id=btnAddContact
    Input Text       name=emgcontacts[name]   samreen
    Input Text       id=emgcontacts_relationship  brother
    Input Text       id=emgcontacts_homePhone     89705
    Click Element    id=btnSaveEContact













