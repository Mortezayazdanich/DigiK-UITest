*** Settings ***
Library    SeleniumLibrary
Library    Telnet
Resource  ../Resources/Common.robot


Suite Setup         Run Keywords    Start TestCase
...                 Successful Login
Suite Teardown      Finish TestCase
Test Template       Digikala DataDriven

*** Variables ***

*** Test Cases ***
Local magazines     ${Local-MagCategory}  ${Local-CoverType}  ${Local-CoverType_paper}  ${Local-FirstItem}
Global magazines     ${Global-MagCategory}  ${Global-CoverType}  ${Global-CoverType_paper}  ${Global-FirstItem}

*** Keywords ***
Digikala DataDriven
    [Arguments]     ${MagCategory}  ${CoverType}  ${CoverType_paper}  ${FirstItem}
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
