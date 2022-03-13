*** Settings ***
Library    OperatingSystem
*** Test Cases ***
TC1
   Log To Console    ${CURDIR}
   Log To Console    ${EXECDIR}
   Log To Console    ${OUTPUT_DIR}
   Log To Console    ${TEMPDIR}
   Log To Console    ${TEST_NAME}
   Log To Console    ${SUITE_NAME}

TC2
   Create Directory     E:${/}Temp${/}My_Folder
   Create File          E:${/}Temp${/}My_Folder${/}notes.txt     samreen
   Copy File            E:${/}Temp${/}My_Folder${/}notes.txt  E:${/}Temp${/}My_Folder${/}notes1.txt
#remove directory
#remove file