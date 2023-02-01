*** Settings ***
Documentation

Library         Selenium2Library

*** Variables ***
${BROWSER}       chrome
${SERVER}        https://reg.tu.ac.th/
${DELAY}         1


*** Keywords ***
Open Browser To Login Page
    Open Browser    ${SERVER}       ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed      ${DELAY}
    Accept All Cookies
    Close Popup
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be     Office of the Registrar, Thammasat University


Accept All Cookies
    Click Button        xpath=//*[@id="onetrust-accept-btn-handler"]

Close Popup
    Click Button        xpath=//*[@id="myPopup"]/div/div/div/button

Input Username
    [Arguments]     ${ID}
    Input text      xpath=//*[@id="f_uid"]      ${ID}

Input Password
    [Arguments]     ${password}
    Input text      xpath=//*[@id="f_pwd"]      ${password}

Submit To Login
    Click Button        xpath=//*[@id="slider-submit"]

Logout
    Click Link          xpath=//*[@id="menu"]/ul/li[1]/a
    Location Should Be      https://www.reg.tu.ac.th/

Wrong ID Test
    Input Username  
    Input Password
    Submit To Login
    Location Should Be      https://www.reg.tu.ac.th/TUUser/Unauthorized

Login To Page
    Open Browser To Login Page
    Input text      xpath=//*[@id="f_uid"]      6410XXXXXX   
    Input text      xpath=//*[@id="f_pwd"]      XXXXXXXX
    Submit To Login
    

