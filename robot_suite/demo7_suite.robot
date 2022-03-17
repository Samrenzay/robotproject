*** Variables ***
&{STUDENTS_REC}      studentid=1001       studentname=john      percentage=72.2     mailid=john@gmail.com

*** Test Cases ***
TC1
    Log To Console    ${STUDENTS_REC}
    Log To Console    ${STUDENTS_REC}[studentid]
    Log To Console    ${STUDENTS_REC}[studentname]
    Log To Console    ${STUDENTS_REC}[percentage]
    Log To Console    ${STUDENTS_REC}[mailid]

TC2
    &{student_rec}      Create Dictionary       studentid=1001     studentname=john   percentage=72.2     mailid=john@gmail.com
    Log To Console    ${student_rec}
    Log To Console    ${student_rec}[studentid]