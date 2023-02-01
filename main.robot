*** Settings ***
Documentation

Resource        testLogin.robot
Resource        findSubject.robot


*** Test Cases ***
Valid Login
    testLogin.Open Browser To Login Page
    # Censored Real ID and Password
    Input Username        6410XXXXXX   
    Input Password        XXXXXXXX
    Submit To Login
    Logout
    Close Browser

    
Wrong Input Test
    testLogin.Open Browser To Login Page
    # Random ID and Password (Wrong Test)
    Input Username        1234   
    Input Password        5678
    Close Browser

Find Calculas Subject
    Login To Page
    Click FindSubject Menu
    Find Faculty Of Engineer
    Choose Campas ID
    Choose Level ID
    Find Calculas
    Close Browser
    

    