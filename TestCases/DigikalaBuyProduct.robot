*** Settings ***
Library    SeleniumLibrary
Resource  ../Resources/src_Buy.robot

Suite Setup         Run Keywords    Start TestCase
...                 Successful Login
Suite Teardown      Finish TestCase


*** Test Cases ***
Buy Product Test
    Set Browser Implicit Wait    10s
    Hover on Categories
    Select a Category
    Select The Seller
    Select The Brand
    Select a Product
    Add To Cart
    Complete Purchase
    Check The TestCase

