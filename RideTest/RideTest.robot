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

tc_12_1TestCase
    Open Browser    https://inventory.edu-netcracker.com/login.jsp    chrome
    Input Text    //input[@name='j_username']    TestUser11
    Input Password    //input[@name='j_password']    Password11+
    Click Button    //input[@type='submit']
    Click Element    //*[@id="inventory"]/a
    ${title}=    Get Title
    Should Be Equal    ${title}    Inventory
    Capture Page Screenshot    tc_12_1TestCase(1).png
    Close Browser

tc_13_1TestCase
    Open Browser    https://inventory.edu-netcracker.com/login.jsp    chrome
    Input Text    //input[@name='j_username']    TestUser11
    Input Password    //input[@name='j_password']    Password11+
    Click Button    //input[@type='submit']
    Click Element    //*[@id="inventory"]/a
    Click Element    //*[@id="table_header"]/table/tbody/tr/td[1]/a
    Input Text    //*[@id="j_idt74:name"]    TestCountry
    Select From List By Value    //*[@id="j_idt74:continent"]    North America
    Input Text    //*[@id="j_idt74:language"]    English
    Click Element    //*[@id="table_header"]/table/tbody/tr/td[1]/input
    Element Should Contain    //*[@id="table_data"]/table/tbody/tr[1]/td    TestCountry
    Element Should Contain    //*[@id="table_data"]/table/tbody/tr[2]/td    Country
    Element Should Contain    //*[@id="table_data"]/table/tbody/tr[7]/td    North America
    Element Should Contain    //*[@id="table_data"]/table/tbody/tr[8]/td    English
    Capture Page Screenshot    tc_13_1TestCase(1).png
    Click Element    //*[@id="path"]/a[2]
    Wait Until Page Contains    TestCountry
    Close Browser

tc_14_1TestCase
    Open Browser    https://inventory.edu-netcracker.com/login.jsp    chrome
    Input Text    //input[@name='j_username']    TestUser11
    Input Password    //input[@name='j_password']    Password11+
    Click Button    //input[@type='submit']
    Click Element    //*[@id="inventory"]/a
    Click Element    //*[@id="j_idt76:tabView:j_idt89_data"]/tr/td/a[.='TestCountry']
    Click Element    //*[@id="table_header"]/table/tbody/tr/td[1]/a
    Input Text    //*[@id="j_idt74:name"]    TestCity
    Input Text    //*[@id="j_idt74:population"]    1000000
    Select From List By Value    //*[@id="j_idt74:isRegionalCenter"]    Yes
    Capture Page Screenshot    tc_14_1TestCase(1).png
    Click Element    //*[@id="table_header"]/table/tbody/tr/td[1]/input
    Capture Page Screenshot    tc_14_1TestCase(2).png
    Element Should Contain    //*[@id="table_data"]/table/tbody/tr[1]/td    TestCity
    Element Should Contain    //*[@id="table_data"]/table/tbody/tr[2]/td    City
    Element Should Contain    //*[@id="table_data"]/table/tbody/tr[7]/td    1000000
    Element Should Contain    //*[@id="table_data"]/table/tbody/tr[8]/td    Yes
    Click Element    //*[@id="path"]/a[3]
    Wait Until Page Contains    TestCity
    Close Browser

tc_15_1TestCase
    Open Browser    https://inventory.edu-netcracker.com/login.jsp    chrome
    Input Text    //input[@name='j_username']    TestUser11
    Input Password    //input[@name='j_password']    Password11+
    Click Button    //input[@type='submit']
    Click Element    //*[@id="inventory"]/a
    Click Element    //*[@id="j_idt76:tabView:j_idt89_data"]/tr/td/a[.='TestCountry']
    Click Element    //*[@id="table_header"]/table/tbody/tr/td[1]/a
    Input Text    //*[@id="j_idt74:name"]    TestCityFail
    Input Text    //*[@id="j_idt74:population"]    0
    Select From List By Value    //*[@id="j_idt74:isRegionalCenter"]    Yes
    Capture Page Screenshot    tc_15_1TestCase(1).png
    Click Element    //*[@id="table_header"]/table/tbody/tr/td[1]/input
    Capture Page Screenshot    tc_15_1TestCase(2).png
    Wait Until Page Contains    The population should be more than 0.
    Close Browser

tc_16_1TestCase
    Open Browser    https://inventory.edu-netcracker.com/login.jsp    chrome
    Input Text    //input[@name='j_username']    TestUser11
    Input Password    //input[@name='j_password']    Password11+
    Click Button    //input[@type='submit']
    Click Element    //*[@id="inventory"]/a
    Click Element    //*[@id="j_idt76:tabView:j_idt89_data"]/tr/td/a[.='TestCountry']
    Click Element    //*[@id="j_idt76:tabView:j_idt109_data"]/tr/td/a[.='TestCity']
    Click Element    //*[@id="table_header"]/table/tbody/tr/td[1]/a
    Input Text    //*[@id="j_idt74:name"]    TestBuilding
    Input Text    //*[@id="j_idt74:streetName"]    TestStreet
    Input Text    //*[@id="j_idt74:number"]    1
    Input Text    //*[@id="j_idt74:square"]    10000
    Select From List By Value    //*[@id="j_idt74:isconnected"]    Lit
    Capture Page Screenshot    tc_16_1TestCase(1).png
    Click Element    //*[@id="table_header"]/table/tbody/tr/td[1]/input
    Capture Page Screenshot    tc_16_1TestCase(2).png
    Element Should Contain    //*[@id="table_data"]/table/tbody/tr[1]/td    TestBuilding
    Element Should Contain    //*[@id="table_data"]/table/tbody/tr[2]/td    Building
    Element Should Contain    //*[@id="table_data"]/table/tbody/tr[7]/td    TestStreet
    Element Should Contain    //*[@id="table_data"]/table/tbody/tr[8]/td    1
    Element Should Contain    //*[@id="table_data"]/table/tbody/tr[9]/td    10000
    Element Should Contain    //*[@id="table_data"]/table/tbody/tr[10]/td    Lit
    Click Element    //*[@id="path"]/a[4]
    Wait Until Page Contains    TestBuilding
    Close Browser

tc_17_1TestCase
    Open Browser    https://inventory.edu-netcracker.com/login.jsp    chrome
    Input Text    //input[@name='j_username']    TestUser11
    Input Password    //input[@name='j_password']    Password11+
    Click Button    //input[@type='submit']
    Click Element    //*[@id="inventory"]/a
    Click Element    //*[@id="j_idt76:tabView:j_idt89_data"]/tr/td/a[.='TestCountry']
    Click Element    //*[@id="j_idt76:tabView:j_idt109_data"]/tr/td/a[.='TestCity']
    Click Element    //*[@id="table_header"]/table/tbody/tr/td[1]/a
    Input Text    //*[@id="j_idt74:name"]    TestBuildingFail
    Input Text    //*[@id="j_idt74:streetName"]    TestStreetFail
    Input Text    //*[@id="j_idt74:number"]    1
    Input Text    //*[@id="j_idt74:square"]    0
    Select From List By Value    //*[@id="j_idt74:isconnected"]    Lit
    Capture Page Screenshot    tc_17_1TestCase(1).png
    Click Element    //*[@id="table_header"]/table/tbody/tr/td[1]/input
    Capture Page Screenshot    tc_17_1TestCase(2).png
    Wait Until Page Contains    'Square' parameter should be more than 0.
    Close Browser

tc_18_1TestCase
    Open Browser    https://inventory.edu-netcracker.com/login.jsp    chrome
    Input Text    //input[@name='j_username']    TestUser11
    Input Password    //input[@name='j_password']    Password11+
    Click Button    //input[@type='submit']
    Click Element    //*[@id="inventory"]/a
    Click Element    //*[@id="j_idt76:tabView:j_idt89_data"]/tr/td/a[.='TestCountry']
    Click Element    //*[@id="j_idt76:tabView:j_idt109_data"]/tr/td/a[.='TestCity']
    Click Element    //*[@id="j_idt76:tabView:j_idt109_data"]/tr/td/a[.='TestBuilding']
    Click Element    //*[@id="table_header"]/table/tbody/tr/td[1]/a
    Input Text    //*[@id="j_idt74:number"]    1
    Input Text    //*[@id="j_idt74:square"]    800
    Capture Page Screenshot    tc_18_1TestCase(1).png
    Click Element    //*[@id="table_header"]/table/tbody/tr/td[1]/input
    Capture Page Screenshot    tc_18_1TestCase(2).png
    Element Should Contain    //*[@id="table_data"]/table/tbody/tr[1]/td    Floor#1
    Element Should Contain    //*[@id="table_data"]/table/tbody/tr[2]/td    Floor
    Element Should Contain    //*[@id="table_data"]/table/tbody/tr[7]/td    1
    Element Should Contain    //*[@id="table_data"]/table/tbody/tr[8]/td    800
    Click Element    //*[@id="path"]/a[5]
    Wait Until Page Contains    Floor#1
    Close Browser

tc_19_1TestCase
    Open Browser    https://inventory.edu-netcracker.com/login.jsp    chrome
    Input Text    //input[@name='j_username']    TestUser11
    Input Password    //input[@name='j_password']    Password11+
    Click Button    //input[@type='submit']
    Click Element    //*[@id="inventory"]/a
    Click Element    //*[@id="j_idt76:tabView:j_idt89_data"]/tr/td/a[.='TestCountry']
    Click Element    //*[@id="j_idt76:tabView:j_idt109_data"]/tr/td/a[.='TestCity']
    Click Element    //*[@id="j_idt76:tabView:j_idt109_data"]/tr/td/a[.='TestBuilding']
    Click Element    //*[@id="table_header"]/table/tbody/tr/td[1]/a
    Input Text    //*[@id="j_idt74:number"]    2
    Input Text    //*[@id="j_idt74:square"]    0
    Capture Page Screenshot    tc_19_1TestCase(1).png
    Click Element    //*[@id="table_header"]/table/tbody/tr/td[1]/input
    Capture Page Screenshot    tc_19_1TestCase(2).png
    Wait Until Page Contains    Square should be more than 0.
    Close Browser

tc_20_1TestCase
    Open Browser    https://inventory.edu-netcracker.com/login.jsp    chrome
    Input Text    //input[@name='j_username']    TestUser11
    Input Password    //input[@name='j_password']    Password11+
    Click Button    //input[@type='submit']
    Click Element    xpath=//div[@id='inventory']/a
    Click Element    //*[@id="j_idt76:tabView:j_idt89_data"]/tr/td/a[.='TestCountry']
    Click Element    //*[@id="j_idt76:tabView:j_idt109_data"]/tr/td/a[.='TestCity']
    Click Element    //*[@id="j_idt76:tabView:j_idt109_data"]/tr/td/a[.='TestBuilding']
    Click Element    //*[@id="table_header"]/table/tbody/tr/td[1]
    Input Text    //*[@id="j_idt74:number"]    1
    Input Text    //*[@id="j_idt74:square"]    800
    Capture Page Screenshot    tc_20_1TestCase(1).png
    Click Element    //*[@id="table_header"]/table/tbody/tr/td[1]/input
    Capture Page Screenshot    tc_20_1TestCase(2).png
    Wait Until Page Contains    Floor with such Name/Number already exists.
    Close Browser

tc_21_1TestCase
    Open Browser    https://inventory.edu-netcracker.com/login.jsp    chrome
    Input Text    //input[@name='j_username']    TestUser11
    Input Password    //input[@name='j_password']    Password11+
    Click Button    //input[@type='submit']
    Click Element    //*[@id="inventory"]/a
    Click Link    link=TestCountry
    Click Link    link=TestCity
    Click Link    link=TestBuilding
    Click Link    link=Post Terminal (s)
    Sleep    0.5
    Execute Javascript    document.querySelectorAll("#table_header > table > tbody > tr > td:nth-child(1) > a").item(1).click();
    Input Text    //*[@id="j_idt74:name"]    TestPosTerminal
    Input Text    //*[@id="j_idt74:width"]    100
    Input Text    //*[@id="j_idt74:length"]    100
    Input Text    //*[@id="j_idt74:height"]    100
    Select From List By Value    //*[@id="j_idt74:physicalStatus"]    Planned
    Click Element    //*[@id="table_data"]/table/tbody/tr[6]/td/a[1]
    @{windows}=    Get Window Titles
    Sleep    1
    Select Window    @{windows}[1]
    Click Element    //li[@role='treeitem']/span/span/a[contains(text(),'TestCountry')]/../../span[@class='ui-tree-toggler ui-icon ui-icon-triangle-1-e']
    Sleep    0.5
    Click Element    //li[@role='treeitem']/span/span/a[contains(text(), 'TestCity')]/../../span[@class='ui-tree-toggler ui-icon ui-icon-triangle-1-e']
    Sleep    0.5
    Click Element    //li[@role='treeitem']/span/span/a[contains(text(), 'TestBuilding')]
    Click Element    //*[@id="OK"]
    Select Window    @{windows}[0]
    Click Element    //*[@id="table_header"]/table/tbody/tr/td[1]/input
    Element Should Contain    //*[@id="table_data"]/table/tbody/tr[1]/td    TestPosTerminal
    Element Should Contain    //*[@id="table_data"]/table/tbody/tr[2]/td    POS Term
    Element Should Contain    //*[@id="table_data"]/table/tbody/tr[7]/td    100
    Element Should Contain    //*[@id="table_data"]/table/tbody/tr[8]/td    100
    Element Should Contain    //*[@id="table_data"]/table/tbody/tr[9]/td    100
    Element Should Contain    //*[@id="table_data"]/table/tbody/tr[10]/td    Planned
    Element Should Contain    //*[@id="table_data"]/table/tbody/tr[11]/td/a    Building: TestBuilding
    Close Browser

tc_22_1TestCase
    Open Browser    https://inventory.edu-netcracker.com/login.jsp    chrome
    Input Text    //input[@name='j_username']    TestUser11
    Input Password    //input[@name='j_password']    Password11+
    Click Button    //input[@type='submit']
    Click Element    //*[@id="inventory"]/a
    Click Link    link=TestCountry
    Click Link    link=TestCity
    Click Link    link=TestBuilding
    Click Link    link=Post Terminal (s)
    Sleep    0.5
    Execute Javascript    document.querySelectorAll("#table_header > table > tbody > tr > td:nth-child(1) > a").item(1).click();
    Input Text    //*[@id="j_idt74:name"]    TestPosTerminalFail
    Input Text    //*[@id="j_idt74:width"]    0
    Input Text    //*[@id="j_idt74:length"]    0
    Input Text    //*[@id="j_idt74:height"]    0
    Select From List By Value    //*[@id="j_idt74:physicalStatus"]    Planned
    Click Element    //*[@id="table_data"]/table/tbody/tr[6]/td/a[1]
    @{windows}=    Get Window Titles
    Sleep    1
    Select Window    @{windows}[1]
    Click Element    //li[@role='treeitem']/span/span/a[contains(text(),'TestCountry')]/../../span[@class='ui-tree-toggler ui-icon ui-icon-triangle-1-e']
    Sleep    0.5
    Click Element    //li[@role='treeitem']/span/span/a[contains(text(), 'TestCity')]/../../span[@class='ui-tree-toggler ui-icon ui-icon-triangle-1-e']
    Sleep    0.5
    Click Element    //li[@role='treeitem']/span/span/a[contains(text(), 'TestBuilding')]
    Click Element    //*[@id="OK"]
    Select Window    @{windows}[0]
    Click Element    //*[@id="table_header"]/table/tbody/tr/td[1]/input
    Wait Until Page Contains    POS Terminal's width should be more than 0.
    Wait Until Page Contains    POS Terminal's length should be more than 0.
    Wait Until Page Contains    POS Terminal's height should be more than 0.
    Close Browser
