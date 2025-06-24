*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://dormdeal-project.vercel.app
${URL1}    https://medium.com/@naruapon/%E0%B8%81%E0%B8%B2%E0%B8%A3%E0%B8%95%E0%B8%B4%E0%B8%94%E0%B8%95%E0%B8%B1%E0%B9%89%E0%B8%87-obs-studio-%E0%B8%9A%E0%B8%99-macos-bf700c3f7b8b
${BROWSER}    edge


*** Test Cases ***

# (TC01)เปิดเว็บ Medium และตรวจสอบข้อความ
#     Open Browser    ${URL1}    ${BROWSER}
#     Maximize Browser Window
#     Page Should Contain    ดาวน์โหลด OBS Studio
#     Close Browser


(TC02)เข้า DormDeal และ Login ผ่าน Google OAuth
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

    Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div[1]/div[3]/a    timeout=10s
    Click Element                    xpath=//*[@id="root"]/div/div[1]/div[3]/a
    Wait Until Element Is Visible   xpath=//*[@id="login"]/div/button    timeout=10s
    ${main_window}    Get Window Handles    
    Click Element                   xpath=//*[@id="login"]/div/button

    Sleep    5s
    ${all_windows}    Get Window Handles
    Switch Window    ${all_windows}[1]   # เปลี่ยนไปยัง popup window

    Wait Until Page Contains Element    id=identifierId    timeout=10s
    Input Text    id=identifierId    654259002
    Wait Until Page Contains Element    xpath=//*[@id="identifierNext"]/div/button/span   timeout=5s
    Click Element  xpath=//*[@id="identifierNext"]/div/button/span 
    Wait Until Element Is Visible    name=Passwd    timeout=10s
    Input Text    name=Passwd    1730201408866
    Click Element    xpath=//*[@id="passwordNext"]/div/button/span
    Sleep    5s
    Switch Window    ${main_window}[0]   # กลับมาที่หน้าหลัก
    Sleep    10s
    Close Browser
   






