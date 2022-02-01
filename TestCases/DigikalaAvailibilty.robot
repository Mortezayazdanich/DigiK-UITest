*** Settings ***
Library    SeleniumLibrary
Resource  ../Resources/src_Availablity.robot

Suite Setup         Run Keywords    Start TestCase
...                 AND    Successful Login
Suite Teardown      Finish TestCase

Default Tags   Availibility
*** Test Cases ***
Availibity Test
    [Documentation]   A simple test on digikala availability
    Hover on Categories
    Select a Category
    Sort By Popularity
    Go to Second Page
    Select a Product
    Ring The Bell

