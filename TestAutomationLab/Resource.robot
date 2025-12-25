*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}   Chrome
${WORKSHOP_URL}   file:///Users/simon/Documents/GitHub/TestAutomationLab/StarterFiles/Registration.html
${SUCCESS_URL}   file:///Users/simon/Documents/GitHub/TestAutomationLab/StarterFiles/Success.html
${DELAY}    0s

*** Keywords ***
Welcome Page Should Be Open
    Location Should Be    ${WORKSHOP_URL}
    Title Should Be    Registration 

Input Firstname
    [arguments]    ${firstname}
    Input Text    id=firstname    ${firstname}

Input Lastname
    [arguments]    ${lastname}
    Input Text    id=lastname    ${lastname}

Input organization
    [arguments]    ${organization}
    Input Text    id=organization    ${organization}

Input Email
    [arguments]    ${email}
    Input Text    id=email    ${email}

Input Phone
    [arguments]    ${phone}
    Input Text    id=phone    ${phone}

Click Register Button
    Click Button    id=registerButton

Go to Success Page
    Location Should Contain   ${SUCCESS_URL}
    Title Should Be      Success
    Page Should Contain    Thank you for registering with us. 
    Page Should Contain    We will send a confirmation to your email soon.



