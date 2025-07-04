*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/variables.robot
Resource   ../resources/keywords.robot



*** Test Cases ***
(TC7001) การเพิ่มโพสต์สินค้าสำเร็จ
    [Documentation]    เปิดเว็บ DormDeal และทำการ Login ผ่าน Google OAuth 
    Open WebBrowser 
    Maximize Browser Window
    Login With Google OAuth    ${GOOGLE_USERNAME}    ${GOOGLE_PASSWORD}
    PostButton
    SelectTheOfferButton
    ProductName
    SelectCategory
    SelectImages
    Price
    Description
    Condition
    Announcement Post Type

# (TC02) TC ใหม่ ที่ใช้ Login เหมือนกัน
#     Open Browser    ${URL}    ${BROWSER}
#     Maximize Browser Window
#     Login With Google OAuth    ${GOOGLE_USERNAME}    ${GOOGLE_PASSWORD}
#     Close Browser


# (TC3003)ค้นหาสินค้าที่ไม่มีอยู่จริง
#     Open WebBrowser
#     Maximize Browser Window
#     Login With Google OAuth    ${GOOGLE_USERNAME}    ${GOOGLE_PASSWORD}
#     Open Want To Sell
#     กรอกข้อมูลการค้นหาโพสต์










