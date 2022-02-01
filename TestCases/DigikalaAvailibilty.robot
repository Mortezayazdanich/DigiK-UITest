*** Settings ***
Library    SeleniumLibrary
Resource  ../Resources/src_Availablity.robot

Suite Setup         Run Keywords    Start TestCase
...                 AND    Successful Login
Suite Teardown      Finish TestCase


*** Test Cases ***
Availibity Test
    Hover on Categories
    Select a Category
    Sort By Popularity
    Go to Second Page
    Select a Product
    Ring The Bell

