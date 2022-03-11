*** Test Cases ***
TC1 Print My Name
    Log To Console    samreen
    Log To Console    hello everyone
    
TC2
   Log To Console   ahemadi
   Log    hello
   
TC3 
   ${session_name}   Set Variable   Robot Session
   Log To Console    ${session_name}
   Log To Console    Session name is ${session_name}

TC4
   ${var1}            Set Variable    25
   ${var2}             Set Variable    26
   ${result}           Evaluate    ${var1}+${var2}
   Log To Console    ${result}

TC5 
   ${radius}          Set Variable     10
   ${result}         Evaluate    3.14*${radius}*${radius}
   Log To Console    ${result}