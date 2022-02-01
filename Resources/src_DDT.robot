*** Settings ***
Library   SeleniumLibrary
Resource  ../Resources/Common.robot

*** Keywords ***
Digikala DataDriven
    [Arguments]     ${MagCategory}  ${CoverType}  ${CoverType_paper}  ${FirstItem}
    Set Selenium Speed    1s
    Switch Tabs    0
    Mouse Over    ${Categories}
    Click Element    ${Category-BooksAndMedia}
    Click Element    ${Category-Inner-Magazines}
    Scroll To Element    ${MagCategory}
    Click Element    ${MagCategory}
    Scroll To Element    ${CoverType}
    Click Element    ${CoverType}
    Wait Until Element Is Visible    ${CoverType_paper}
    Click Element    ${CoverType_paper}
    Scroll To Element    ${FirstItem}
    Click Element    ${FirstItem}
    Switch Tabs    1
    Wait Until Page Contains    کاغذی
    Capture Page Screenshot
    Close Window
