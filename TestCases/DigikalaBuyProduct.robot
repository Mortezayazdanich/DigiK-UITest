*** Settings ***
Library    SeleniumLibrary
Resource  ../Resources/src_Buy.robot

Suite Setup         Run Keywords    Start TestCase
...                 Successful Login
Suite Teardown      Finish TestCase

Default Tags  Buy Product
*** Test Cases ***
Buy Product Test
    [Documentation]     A simple test that adds a phone into cart
    Hover on Categories
    Select a Category
    Select The Seller
    Select The Brand
    Select a Product
    Add To Cart
    Complete Purchase
    Check The TestCase

