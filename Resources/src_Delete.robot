*** Settings ***
Library   SeleniumLibrary
Resource  ../Resources/Common.robot


*** Keywords ***
Go to Cart
    Click Element   ${btn_Cart}

Remove Product
    Click Element   ${btn_dlt}

Remove Title Check
    Page Should Contain Element    ${validate_emtpyCart}