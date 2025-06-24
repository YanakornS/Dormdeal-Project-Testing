*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://dormdeal-project.vercel.app
${BROWSER}    chrome



*** Test Cases ***
# (TC01) เข้า DormDeal และ Login ผ่าน Google OAuth
#     Open WebBrowser 
#     Maximize Browser Window
#     Login With Google OAuth    654259002    1730201408866
#     Close Browser


# (TC02) TC ใหม่ ที่ใช้ Login เหมือนกัน
#     Open Browser    ${URL}    ${BROWSER}
#     Maximize Browser Window
#     Login With Google OAuth    654259028    15151
#     Close Browser


(TC03)ค้นหาสินค้าที่ไม่มีอยู่จริง
    Open WebBrowser
    Maximize Browser Window
    Login With Google OAuth    654259002    1730201408866
    Open Want To Sell
    กรอกข้อมูลการค้นหาโพสต์








*** Keywords ***
Login With Google OAuth
    [Arguments]    ${username}    ${password}
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div[1]/div[3]/a    timeout=10s
    Click Element                    xpath=//*[@id="root"]/div/div[1]/div[3]/a
    Wait Until Element Is Visible    xpath=//*[@id="login"]/div/button    timeout=10s
    ${main_window}    Get Window Handles
    Click Element                   xpath=//*[@id="login"]/div/button

    Sleep    3s
    ${all_windows}    Get Window Handles
    Switch Window    ${all_windows}[1]

    Wait Until Page Contains Element    id=identifierId    timeout=10s
    Input Text    id=identifierId    ${username}
    Wait Until Element Is Visible    xpath=//*[@id="identifierNext"]/div/button/span   timeout=5s
    Click Element  xpath=//*[@id="identifierNext"]/div/button/span 
    Wait Until Element Is Visible    name=Passwd    timeout=5s
    Input Text    name=Passwd    ${password}
    Click Element    xpath=//*[@id="passwordNext"]/div/button/span
    Sleep    5s
    Switch Window    ${main_window}[0]
    Sleep    5s
    
Open WebBrowser 
    Open Browser  ${URL}    ${BROWSER}

Open Want To Sell
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div[2]/div/div[2]/div/div/div[1]/a[2]    timeout=5s
    Click Element     xpath=//*[@id="root"]/div/div[2]/div/div[2]/div/div/div[1]/a[2]


กรอกข้อมูลการค้นหาโพสต์
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div[2]/div[2]/div[1]/div[2]/input   timeout=5s
    Click Element     xpath=//*[@id="root"]/div/div[2]/div[2]/div[1]/div[2]/input

    Input Text        xpath=//*[@id="root"]/div/div[2]/div[2]/div[1]/div[2]/input     ค้นหาไม่เจออะสิ
    Wait Until Page Contains    ไม่พบสินค้าตามเงื่อนไขที่เลือก    timeout=5s    
    Sleep    3s
    Close Browser


    

    


