
*** Variables ***
${URL}    http://localhost:5173
${BROWSER}    chrome


# //Google OAuth credentials
${GOOGLE_USERNAME}    654259002
${GOOGLE_PASSWORD}    1730201408866

# //Button Want To Sell&& Want To Buy
${Want-To-Sell}    xpath=//*[@data-test="post-type-wts"]
${Want-To-Buy}    xpath=//*[@data-test="post-type-wtb"]


# Categories and Subcategories
${CATEGORY_DROPDOWN}   xpath=//*[@data-test="category"]
${MAIN_CATEGORY}    67ee888655b50d41195bca16
${SUB_CATEGORY_DROPDOWN}    xpath=//*[@data-test="subcategory"]
${SUB_CATEGORY}    67ee88a355b50d41195bca22


# //Create A Product
${product_name}    Air Jordan 1 mid light smoke grey
${maincategory}    เสื้อผ้าและแฟชั่น 
${subcategory}    รองเท้า
${price}    3200
${description}    เป็นลอยนิดหน่อยเก็บนานไป
${condition}    xpath=//*[@data-test="used-acceptable"]
${announcement_post_type}    xpath=//*[@data-test="postfree"]
${submitbutton}     xpath=//*[@data-test="submit-post"] 





# //Image Paths
${Post_IMAGE_PATH}     https://firebasestorage.googleapis.com/v0/b/loykratongse-85138.appspot.com/o/SE-Shop%2FURL-Images-Tester%2FAirJordan1.jpg?alt=media&token=24087c7e-97d1-4b4d-a998-92eb2fb570a5
${LOCAL_IMAGE_PATH}    D:/Programming/Term1ProjectFinal/Test-Project/Dormdeal-Project-Testing/resources/images/AirJordan1.jpg
${LOCAL_IMAGE_PATH2}    D:/Programming/Term1ProjectFinal/Test-Project/Dormdeal-Project-Testing/resources/images/AirJordan2.jpg





# //Sweetalert
${swal2postsuccess}    xpath=//*[@data-test="swal-post-success"]