*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://demo.openemr.io/b/openemr
    Input Text     id=authUser    admin
    Input Text     id=clearPass   pass
    Select From List By Label      name=languageChoice      English (Indian)
    Click Element    xpath=//button[@type='submit']
    Click Element    xpath=//div[@class="tabSpan bgcolor2 tabsNoHover"]
    Select Frame     name=msg
    Click Element    partial link=Add New
    Input Text       id=note                 hello
    Select From List By Label      id=form_note_type            pharmacy
    Select From List By Label      id=form_message_status       Forwarded
    Select From List By Index      id=users
    Click Button                   xpath=//button[@id="newtone"]
    Element Text Should Be

