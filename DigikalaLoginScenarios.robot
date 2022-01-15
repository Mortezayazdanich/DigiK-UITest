*** Settings ***
Library    SeleniumLibrary
Resource  ../Resources/Common.robot

Suite Setup         Start TestCase
Suite Teardown      Finish TestCase

*** Variables ***

*** Test Cases ***                                                    USERNAME                             PASSWORD
Login Scenarios
    Set Selenium Speed    2
    Verify Login Fails - Blank Username and Password                  ${EMPTY}                             ${EMPTY}
    Verify Login Fails - Invalid Username                             mortezayazdaniiiii                   ${EMPTY}
    Verify Login Fails - Not Auth Username                            mortezayazdani3da06@gmaisal.coasm    ${EMPTY}
    Verify Login Fails - Wrong Password                               mortezayazdani306@gmail.com          maisonfkabjf
    Verify Login - Successful Login                                   mortezayazdani306@gmail.com          ${correct_password}

*** Keywords ***
Verify Login - Successful Login
    [Arguments]    ${username}  ${password}
    Go To   ${url}
    Click Element    ${btn_sign_up}
    Input Text   ${txtbox_username}  ${username}
    Click Button    ${btn_login1}
    Input Text    ${txtbox_password}  ${password}
    Click Button    ${btn_login2}
    Click Element    ${profile_icon}
    Element Should Contain    ${profile_dropdown}    ${logged_in-username}

Verify Login Fails - Blank Username and Password
    [Arguments]    ${username}  ${password}
    Go To   ${url}
    Click Element    ${btn_sign_up}
    Input Text   ${txtbox_username}  ${username}
    Click Button    ${btn_login1}
    Page Should Contain Element    ${invalid_msg}

Verify Login Fails - Invalid Username
    [Arguments]    ${username}  ${password}
    Go To   ${url}
    Click Element    ${btn_sign_up}
    Input Text   ${txtbox_username}  ${username}
    Click Button    ${btn_login1}
    Page Should Contain Element    ${invalid_msg}

Verify Login Fails - Not Auth Username
    [Arguments]    ${username}  ${password}
    Go To   ${url}
    Click Element    ${btn_sign_up}
    Input Text   ${txtbox_username}  ${username}
    Click Button    ${btn_login1}
    Page Should Contain Element    ${err_btn}

Verify Login Fails - Wrong Password
    [Arguments]    ${username}  ${password}
    Go To   ${url}
    Click Element    ${btn_sign_up}
    Input Text   ${txtbox_username}  ${username}
    Click Button    ${btn_login1}
    Input Text    ${txtbox_password}  ${password}
    Page Should Contain Element    ${err_btn}
