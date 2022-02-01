*** Settings ***
Library    SeleniumLibrary
Resource  ../Resources/src_Login.robot

Suite Setup         Start TestCase
Suite Teardown      Finish TestCase


*** Test Cases ***                                                    USERNAME                             PASSWORD
Login Scenarios
    Verify Login Fails - Blank Username and Password                  ${EMPTY}                             ${EMPTY}
    Verify Login Fails - Invalid Username                             mortezayazdaniiiii                   ${EMPTY}
    Verify Login Fails - Not Auth Username                            mortezayazdani3da06@gmaisal.coasm    ${EMPTY}
    Verify Login Fails - Wrong Password                               mortezayazdani306@gmail.com          maisonfkabjf
    Verify Login - Successful Login                                   mortezayazdani306@gmail.com          ${correct_password}

