*** Settings ***
Library   SeleniumLibrary
Resource  ../Resources/Common.robot

*** Keywords ***
Hover on Categories
    Mouse Over    ${Categories}

Select a Category
    Mouse Over    ${DigitalCategory}
    Wait Until Page Contains Element    ${AppleProducts}
    Mouse Over    ${AppleProducts}
    Click Link    ${AppleProducts}

Select The Seller
    Scroll To Element   ${SellerCheckbox-Digikala}
    Click Element    ${SellerCheckbox-Digikala}

Select The Brand
    Scroll To Element    ${BrandCheckbox-Apple}
    Click Element    ${BrandCheckbox-Apple}


Select a Product
    Sleep    3s
    Scroll To Element    ${Iphone13ProMax-1TB}
    Set Focus To Element    ${Iphone13ProMax-1TB}
    Click Element    ${Iphone13ProMax-1TB}

Add To Cart
    Switch Tabs    1
    Click Element    ${btn-AddToCart}

Complete Purchase
    Wait Until Element Is Visible    ${btn-CompletePurchase}
    Click Element    ${btn-CompletePurchase}

Check The TestCase
    Page Should Contain Element    ${PurchaseValidation}
