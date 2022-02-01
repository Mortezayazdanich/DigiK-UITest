*** Settings ***
Library   SeleniumLibrary
Resource  ../Resources/Common.robot


*** Keywords ***
Verify Login - Successful Login
    [Arguments]    ${username}  ${password}
    [Documentation]  Successfully Login to digikala
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
    [Documentation]  Check how will digikala react to blank username
    Go To   ${url}
    Click Element    ${btn_sign_up}
    Input Text   ${txtbox_username}  ${username}
    Click Button    ${btn_login1}
    Page Should Contain Element    ${invalid_msg}

Verify Login Fails - Invalid Username
    [Arguments]    ${username}  ${password}
    [Documentation]  Check how will digikala react to an invalid username
    Go To   ${url}
    Click Element    ${btn_sign_up}
    Input Text   ${txtbox_username}  ${username}
    Click Button    ${btn_login1}
    Page Should Contain Element    ${invalid_msg}

Verify Login Fails - Not Auth Username
    [Arguments]    ${username}  ${password}
    [Documentation]  Check how will digikala react to a not authenticated username
    Go To   ${url}
    Click Element    ${btn_sign_up}
    Input Text   ${txtbox_username}  ${username}
    Click Button    ${btn_login1}
    Page Should Contain Element    ${err_btn}

Verify Login Fails - Wrong Password
    [Arguments]    ${username}  ${password}
    [Documentation]  Check how will digikala react to a wrong password
    Go To   ${url}
    Click Element    ${btn_sign_up}
    Input Text   ${txtbox_username}  ${username}
    Click Button    ${btn_login1}
    Input Text    ${txtbox_password}  ${password}
    Page Should Contain Element    ${err_btn}
