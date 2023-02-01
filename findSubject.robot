*** Settings ***
Documentation

Library         Selenium2Library
Resource        testLogin.robot

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

Login To Page
    Open Browser To Login Page
    Input text      xpath=//*[@id="f_uid"]      6410XXXXXX
    Input text      xpath=//*[@id="f_pwd"]      XXXXXXXX
    Submit To Login

Click FindSubject Menu
    Click Link      xpath=//*[@id="menu"]/ul/li[5]/a


Find Faculty Of Engineer
    Click Element       xpath=/html/body/table/tbody/tr[1]/td[2]/table/tbody/tr[4]/td[2]/font[2]/select
    Sleep       3s
    Click Element       xpath=/html/body/table/tbody/tr[1]/td[2]/table/tbody/tr[4]/td[2]/font[2]/select/option[12]

Choose Campas ID
    # Rangsit Campus
    Click Element       xpath=/html/body/table/tbody/tr[1]/td[2]/table/tbody/tr[6]/td[2]/table/tbody/tr[2]/td[2]/select
    Sleep       3s
    Click Element       xpath=/html/body/table/tbody/tr[1]/td[2]/table/tbody/tr[6]/td[2]/table/tbody/tr[2]/td[2]/select/option[3]

Choose Level ID
    # Bachelor's degree
    Click Element       xpath=/html/body/table/tbody/tr[1]/td[2]/table/tbody/tr[6]/td[2]/table/tbody/tr[3]/td[2]/select
    Sleep       3s
    Click Element       xpath=/html/body/table/tbody/tr[1]/td[2]/table/tbody/tr[6]/td[2]/table/tbody/tr[3]/td[2]/select/option[3]


Find Calculas
    # Code Name Calculas Subject Is MA111
    Input text      xpath=/html/body/table/tbody/tr[1]/td[2]/table/tbody/tr[7]/td[2]/table/tbody/tr/td/font[1]/input        MA111
    Click button    xpath=/html/body/table/tbody/tr[1]/td[2]/table/tbody/tr[7]/td[2]/table/tbody/tr/td/font[3]/input
    Sleep       5s