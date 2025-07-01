*** Settings ***
Library    SeleniumLibrary
Resource   resources/variables.robot
Resource   resources/keywords.robot



*** Test Cases ***
(TC2001) เข้า DormDeal และ Login ผ่าน Google OAuth
    [Documentation]    เปิดเว็บ DormDeal และทำการ Login ผ่าน Google OAuth 
    Open WebBrowser 
    Maximize Browser Window
    Login With Google OAuth    ${GOOGLE_USERNAME}    ${GOOGLE_PASSWORD}
    Close Browser


# (TC02) TC ใหม่ ที่ใช้ Login เหมือนกัน
#     Open Browser    ${URL}    ${BROWSER}
#     Maximize Browser Window
#     Login With Google OAuth    ${GOOGLE_USERNAME}    ${GOOGLE_PASSWORD}
#     Close Browser


(TC3003)ค้นหาสินค้าที่ไม่มีอยู่จริง
    Open WebBrowser
    Maximize Browser Window
    Login With Google OAuth    ${GOOGLE_USERNAME}    ${GOOGLE_PASSWORD}
    Open Want To Sell
    กรอกข้อมูลการค้นหาโพสต์










