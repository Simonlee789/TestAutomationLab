*** Settings ***
Library    SeleniumLibrary
Resource    Resource.robot

*** Test Cases ***
open Workshop Registration Page
    Open Browser   ${WORKSHOP_URL}   ${BROWSER}
    Set Selenium Speed    ${DELAY}
    Welcome Page Should Be Open

Register Success
    open Browser   ${WORKSHOP_URL}   ${BROWSER}
    Input Firstname    Somyod
    Input Lastname     Sodsai
    Input organization   CS KKU
    Input Email    somyod@kkumail.com
    Input Phone    091-001-1234
    Click Register Button
    Go to Success Page

Register Without Organization
    open Browser   ${WORKSHOP_URL}   ${BROWSER}
    Input Firstname    Somyod
    Input Lastname     Sodsai
    Input Email    somyod@kkumail.com
    Input Phone    091-001-1234
    Click Register Button
    Go to Success Page

