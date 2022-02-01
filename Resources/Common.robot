*** Settings ***
Library    SeleniumLibrary
Resource    ../TestData/ConfigData.robot

*** Keywords ***
Start TestCase
    Open Browser  ${blankPage}   ${browser}
    Maximize Browser Window
    Set Selenium Speed    0.5s

Finish TestCase
    Close Browser

Successful Login
    Go To   ${url}
    Click Element    ${btn_sign_up}
    Input Text   ${txtbox_username}  ${valid_username}
    Click Button    ${btn_login1}
    Input Text    ${txtbox_password}  ${correct_password}
    Click Button    ${btn_login2}

Scroll To Element
    [Arguments]  ${locator}
    ${x}=        Get Horizontal Position  ${locator}
    ${y}=        Get Vertical Position    ${locator}
    Execute Javascript  window.scrollTo(${x}, ${y}-300)
    Sleep    3s

Switch Tabs
    [Arguments]     ${handle_number}
    @{handles}=  Get Window Handles
    Switch Window  ${handles}[${handle_number}]
    Log    ${handles}[${handle_number}]

Implicit Wait
    [Arguments]      ${seconds}
    Set Browser Implicit Wait    ${seconds}
