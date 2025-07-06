*** Settings ***
Library    SeleniumLibrary
Resource   ../../resources/variables.robot
Resource   ../../resources/keywords.robot



*** Test Cases ***
(TC7001) การเพิ่มโพสต์สินค้าสำเร็จ
    [Documentation]    Test adding product posts on the DormDeal website from the login process to the successful submission of the post.
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
    SubmitPost
    Close Browser







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










