*** Settings ***
Library           Selenium2Library

*** Test Cases ***
tc_1_1TestCase
    Open Browser    https://inventory.edu-netcracker.com/pages/registration.xhtml    chrome
    Input Text    //input[@id='registerForm:username']    TestAdminUser11
    Input Password    //input[@id='registerForm:password']    Password11+
    Input Password    //input[@id='registerForm:confirmPassword']    Password11+
    Input Text    //input[@id='registerForm:email']    TestAdminUser11@test.com
    Select From List By Value    //select[@id='registerForm:role']    Admin
    Capture Page Screenshot    tc_1_1TestCase(1).png
    Click Button    //input[@type='submit']
    Wait Until Page Contains    You have successfully registered    10s
    Capture Page Screenshot    tc_1_1TestCase(2).png
    Close Browser

tc_2_1TestCase
    Open Browser    https://inventory.edu-netcracker.com/pages/registration.xhtml    chrome
    Input Text    //input[@id='registerForm:username']    TestUser21
    Input Password    //input[@id='registerForm:password']    Password21+
    Input Password    //input[@id='registerForm:confirmPassword']    Password21+
    Input Text    //input[@id='registerForm:email']    TestUser21@test.com
    Capture Page Screenshot    tc_2_1TestCase(1).png
    Click Button    //input[@type='submit']
    Wait Until Page Contains    You have successfully registered    10s
    Capture Page Screenshot    tc_2_1TestCase(2).png
    Close Browser

tc_2_2TestCase
    Open Browser    https://inventory.edu-netcracker.com/pages/registration.xhtml    chrome
    Input Text    //input[@id='registerForm:username']    TestUser21
    Input Password    //input[@id='registerForm:password']    Password21+
    Input Password    //input[@id='registerForm:confirmPassword']    Password21+
    Input Text    //input[@id='registerForm:email']    TestUser21@test.com
    Capture Page Screenshot    tc_2_2TestCase(1).png
    Click Button    //input[@type='submit']
    Wait Until Page Contains    User with such login already exists    10s
    Capture Page Screenshot    tc_2_2TestCase(2).png
    Close Browser

tc_2_3TestCase
    Open Browser    https://inventory.edu-netcracker.com/pages/registration.xhtml    chrome
    Input Text    //input[@id='registerForm:username']    Test3
    Input Password    //input[@id='registerForm:password']    Password23+
    Input Password    //input[@id='registerForm:confirmPassword']    Password23+
    Input Text    //input[@id='registerForm:email']    Test3@test.com
    Capture Page Screenshot    tc_2_3TestCase(1).png
    Click Button    //input[@type='submit']
    Wait Until Page Contains    Please fill out the form once again    10s
    Capture Page Screenshot    tc_2_3TestCase(2).png
    Close Browser

tc_3_1TestCase
    Open Browser    https://inventory.edu-netcracker.com/pages/registration.xhtml    chrome
    Input Text    //input[@id='registerForm:username']    TestUser31
    Input Password    //input[@id='registerForm:password']    Pass31
    Input Password    //input[@id='registerForm:confirmPassword']    Pass31
    Input Text    //input[@id='registerForm:email']    TestUser31@test.com
    Capture Page Screenshot    tc_3_1TestCase(1).png
    Click Button    //input[@type='submit']
    Wait Until Page Contains    Please fill out the form once again    10s
    Capture Page Screenshot    tc_3_1TestCase(2).png
    Close Browser

tc_3_2TestCase
    Open Browser    https://inventory.edu-netcracker.com/pages/registration.xhtml    chrome
    Input Text    //input[@id='registerForm:username']    TestUser32
    Input Password    //input[@id='registerForm:password']    MyPassword+
    Input Password    //input[@id='registerForm:confirmPassword']    MyPassword+
    Input Text    //input[@id='registerForm:email']    TestUser32@test.com
    Capture Page Screenshot    tc_3_2TestCase(1).png
    Click Button    //input[@type='submit']
    Wait Until Page Contains    Please fill out the form once again    10s
    Capture Page Screenshot    tc_3_2TestCase(2).png
    Close Browser

tc_3_3TestCase
    Open Browser    https://inventory.edu-netcracker.com/pages/registration.xhtml    chrome
    Input Text    //input[@id='registerForm:username']    TestUser33
    Input Password    //input[@id='registerForm:password']    password33+
    Input Password    //input[@id='registerForm:confirmPassword']    password33+
    Input Text    //input[@id='registerForm:email']    TestUser33@test.com
    Capture Page Screenshot    tc_3_3TestCase(1).png
    Click Button    //input[@type='submit']
    Wait Until Page Contains    Please fill out the form once again    10s
    Capture Page Screenshot    tc_3_3TestCase(2).png
    Close Browser

tc_3_4TestCase
    Open Browser    https://inventory.edu-netcracker.com/pages/registration.xhtml    chrome
    Input Text    //input[@id='registerForm:username']    TestUser34
    Input Password    //input[@id='registerForm:password']    MyPassword34
    Input Password    //input[@id='registerForm:confirmPassword']    MyPassword34
    Input Text    //input[@id='registerForm:email']    TestUser34@test.com
    Capture Page Screenshot    tc_3_4TestCase(1).png
    Click Button    //input[@type='submit']
    Wait Until Page Contains    Please fill out the form once again    10s
    Capture Page Screenshot    tc_3_4TestCase(2).png
    Close Browser

tc_4_1TestCase
    Open Browser    https://inventory.edu-netcracker.com/pages/registration.xhtml    chrome
    Input Text    //input[@id='registerForm:username']    TestUser451
    Input Password    //input[@id='registerForm:password']    MyPassword451+
    Input Password    //input[@id='registerForm:confirmPassword']    MyPassword451+
    Input Text    //input[@id='registerForm:email']    TestUser451@test.com
    Capture Page Screenshot    tc_4_1TestCase(1).png
    ${showPassword}=    Get Element Attribute    xpath=//input[@id='registerForm:hide']@onclick
    Should Be Equal    ${showPassword}    showPassword(this.form)
    Close Browser

tc_5_1TestCase
    Open Browser    https://inventory.edu-netcracker.com/pages/registration.xhtml    chrome
    Input Text    //input[@id='registerForm:username']    TestUser451
    Input Password    //input[@id='registerForm:password']    MyPassword451+
    Input Password    //input[@id='registerForm:confirmPassword']    MyPassword451+
    Input Text    //input[@id='registerForm:email']    TestUser451@test.com
    Click Element    //input[@id='registerForm:hide']
    Capture Page Screenshot    tc_5_1TestCase(1).png
    ${showPassword}=    Get Element Attribute    xpath=//input[@id='registerForm:hide']@onclick
    Should Be Equal    ${showPassword}    showPassword(this.form)
    Close Browser

tc_6_1TestCase
    Open Browser    https://inventory.edu-netcracker.com/pages/registration.xhtml    chrome
    Input Text    //input[@id='registerForm:username']    TestUser61
    Input Password    //input[@id='registerForm:password']    MyPassword61+
    Input Password    //input[@id='registerForm:confirmPassword']    MyPassword61+
    Input Text    //input[@id='registerForm:email']    TestUser61test.com
    Capture Page Screenshot    tc_6_1TestCase(1).png
    Click Button    //input[@type='submit']
    Wait Until Page Contains    Please fill out the form once again    10s
    Capture Page Screenshot    tc_6_1TestCase(2).png
    Close Browser

tc_6_2TestCase
    Open Browser    https://inventory.edu-netcracker.com/pages/registration.xhtml    chrome
    Input Text    //input[@id='registerForm:username']    TestUser62
    Input Password    //input[@id='registerForm:password']    MyPassword62+
    Input Password    //input[@id='registerForm:confirmPassword']    MyPassword62+
    Input Text    //input[@id='registerForm:email']    TestUser62@testcom
    Capture Page Screenshot    tc_6_2TestCase(1).png
    Click Button    //input[@type='submit']
    Wait Until Page Contains    Please fill out the form once again    10s
    Capture Page Screenshot    tc_6_2TestCase(2).png
    Close Browser

tc_6_3TestCase
    Open Browser    https://inventory.edu-netcracker.com/pages/registration.xhtml    chrome
    Input Text    //input[@id='registerForm:username']    TestUser63
    Input Password    //input[@id='registerForm:password']    MyPassword63+
    Input Password    //input[@id='registerForm:confirmPassword']    MyPassword63+
    Input Text    //input[@id='registerForm:email']    Test$User+63-@test.com
    Capture Page Screenshot    tc_6_3TestCase(1).png
    Click Button    //input[@type='submit']
    Wait Until Page Contains    Please fill out the form once again    10s
    Capture Page Screenshot    tc_6_3TestCase(2).png
    Close Browser

tc_10_1TestCase
    Open Browser    https://inventory.edu-netcracker.com/pages/registration.xhtml    chrome
    Input Text    //input[@id='registerForm:username']    TestUser101
    Input Password    //input[@id='registerForm:password']    MyPassword101+
    Input Password    //input[@id='registerForm:confirmPassword']    MyPassword101+
    Input Text    //input[@id='registerForm:email']    TestUser101@test.com
    Capture Page Screenshot    tc_10_1TestCase(1).png
    Click Button    //input[@type='submit']
    Wait Until Page Contains    You have successfully registered    10s
    Capture Page Screenshot    tc_10_1TestCase(2).png
    Close Browser

tc_10_2TestCase
    Open Browser    https://inventory.edu-netcracker.com/pages/registration.xhtml    chrome
    Input Text    //input[@id='registerForm:username']    TestUser101
    Input Password    //input[@id='registerForm:password']    MyPassword101+
    Input Password    //input[@id='registerForm:confirmPassword']    MyPassword101+
    Input Text    //input[@id='registerForm:email']    TestUser101@test.com
    Capture Page Screenshot    tc_10_2TestCase(1).png
    Click Button    //input[@type='submit']
    Wait Until Page Contains    The user with such email address has been already registered. Please fill out another email address    10s
    Capture Page Screenshot    tc_10_2TestCase(2).png
    Close Browser

tc_11_1TestCase
    Open Browser    https://inventory.edu-netcracker.com/login.jsp    chrome
    Input Text    //input[@name='j_username']    TestUser11
    Input Password    //input[@name='j_password']    Password11+
    Capture Page Screenshot    tc_11_1TestCase(1).png
    Click Button    //input[@type='submit']
    ${title}=    Get Title
    Should Be Equal    ${title}    Top
    Capture Page Screenshot    tc_11_1TestCase(2).png
    Close Browser
