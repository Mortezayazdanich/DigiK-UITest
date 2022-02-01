*** Settings ***
Library    SeleniumLibrary
Resource  ../Resources/src_Delete.robot


Suite Setup         Run Keywords    Start TestCase
...                 Successful Login
Suite Teardown      Finish TestCase


*** Test Cases ***
Buy Product Test
    Go to Cart
    Remove Product
    Remove Title Check

