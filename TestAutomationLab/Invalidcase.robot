*** Settings ***
Library    SeleniumLibrary
Resource    Resource.robot

*** Test Cases ***
open Workshop Registration Page
    Open Browser   ${WORKSHOP_URL}   ${BROWSER}
    Set Selenium Speed    ${DELAY}
    Welcome Page Should Be Open

Empty First Name
    open Browser   ${WORKSHOP_URL}   ${BROWSER}
    Input Lastname     Sodsai
    Input organization   CS KKU
    Input Email    somyod@kkumail.com
    Input Phone    091-001-1234
    Click Register Button
    Location Should Contain   ${WORKSHOP_URL}
    Page Should Contain    Please enter your first name!! 

Empty Last Name
    open Browser   ${WORKSHOP_URL}   ${BROWSER}
    Input Firstname    Somyod
    Input organization   CS KKU
    Input Email    somyod@kkumail.com
    Input Phone    091-001-1234
    Click Register Button
    Location Should Contain   ${WORKSHOP_URL}
    Page Should Contain    Please enter your last name!!

Empty First Name and Last Name
    open Browser   ${WORKSHOP_URL}   ${BROWSER}
    Input organization   CS KKU
    Input Email    somyod@kkumail.com
    Input Phone    091-001-1234
    Click Register Button
    Location Should Contain   ${WORKSHOP_URL}
    Page Should Contain    Please enter your name!!

Empty Email
    open Browser   ${WORKSHOP_URL}   ${BROWSER}
    Input Firstname    Somyod
    Input Lastname     Sodsai
    Input organization   CS KKU
    Input Phone    091-001-1234
    Click Register Button
    Location Should Contain   ${WORKSHOP_URL}
    Page Should Contain    Please enter your email!!

Empty Phone Number
     open Browser   ${WORKSHOP_URL}   ${BROWSER}
    Input Firstname    Somyod
    Input Lastname     Sodsai
    Input organization   CS KKU
    Input Email    somyod@kkumail.com
    Click Register Button
    Location Should Contain   ${WORKSHOP_URL}
    Page Should Contain    Please enter your phone number!!

Invalid Phone Number
    open Browser   ${WORKSHOP_URL}   ${BROWSER}
    Input Firstname    Somyod
    Input Lastname     Sodsai
    Input organization   CS KKU
    Input Email    somyod@kkumail.com    
    Input Phone   1234
    Click Register Button
    Location Should Contain   ${WORKSHOP_URL}
    Page Should Contain    Please enter a valid phone number, e.g., 081-234-5678, 081 234 5678, or 081.234.5678)   


