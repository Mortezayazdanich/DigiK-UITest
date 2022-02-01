*** Settings ***
Library    SeleniumLibrary
Resource  ../Resources/src_Delete.robot


Suite Setup         Run Keywords    Start TestCase
...                 Successful Login
Suite Teardown      Finish TestCase

Default Tags  Delete Product
*** Test Cases ***
Buy Product Test
    [Documentation]  This particular test case removes the phone we added to the cart earlier
    Go to Cart
    Remove Product
    Remove Title Check

