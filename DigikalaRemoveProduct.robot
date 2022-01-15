*** Settings ***
Library    SeleniumLibrary
Resource  ../Resources/Common.robot


Suite Setup         Start TestCase
Suite Teardown      Finish TestCase


*** Variables ***

*** Test Cases ***
Buy Product Test
    Set Browser Implicit Wait    10s
    Successful Login    mortezayazdani306@gmail.com    ${correct_password}


*** Keywords ***
Go to Cart
    Click Element    id=cart-button

Remove Product
    Click Element    css=.c-cart-item__delete

Remove Title Check
    Page Should Contain Element    css=.c-checkout-empty__title