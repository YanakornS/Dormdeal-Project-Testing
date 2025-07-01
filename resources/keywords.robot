*** Settings ***
Library    SeleniumLibrary


*** Settings ***
Resource    ../resources/variables.robot      



*** Keywords ***
Login With Google OAuth
    [Arguments]    ${username}    ${password}
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div[1]/div[3]/a    timeout=10s
    Click Element                    xpath=//*[@id="root"]/div/div[1]/div[3]/a
    Wait Until Element Is Visible    xpath=//*[@id="login"]/div/button    timeout=10s
    ${main_window}    Get Window Handles
    Click Element                   xpath=//*[@id="login"]/div/button
    Click Element                   css=[data-test="scroll-bottom"] 
    Click Element                   css=[data-test="accept-button"]
    Sleep    3s
    ${all_windows}    Get Window Handles
    Switch Window    ${all_windows}[1]

    Wait Until Page Contains Element    id=identifierId    timeout=10s
    Input Text    id=identifierId    ${username}
    Wait Until Element Is Visible    xpath=//*[@id="identifierNext"]/div/button/span   timeout=10s
    Click Element  xpath=//*[@id="identifierNext"]/div/button/span 
    Wait Until Element Is Visible    name=Passwd    timeout=10s
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

    Input Text        xpath=//*[@id="root"]/div/div[2]/div[2]/div[1]/div[2]/input    ค้นหาไม่เจออะสิ    
    Wait Until Page Contains    ไม่พบผลการค้นหา    timeout=10s    
    Sleep    3s
    Close Browser

