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

Go to Second Page
    Scroll To Element    ${SecondPageIndicator}
    Wait Until Element Is Visible    ${SecondPageIndicator}
    Set Focus To Element    ${SecondPageIndicator}
    Click Element    ${SecondPageIndicator}

Select a Product
    Sleep    3s
    Wait Until Element Is Visible    ${SecondProduct}
    Set Focus To Element    ${SecondProduct}
    Click Element    ${SecondProduct}

Ring The Bell
    Page Should Contain    ناموجود
    Switch Tabs    1
    Mouse Over    ${NotifyMeBox}
    Click Element    ${NotifyMeButton}
    Wait Until Element Is Visible    ${AddToNotifyList}
    Click Button    ${AddToNotifyList}

Sort By Popularity
    Click Element  ${SortOption-Popularity}

