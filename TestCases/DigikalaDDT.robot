*** Settings ***
Library    SeleniumLibrary
Resource  ../Resources/src_DDT.robot


Suite Setup         Run Keywords    Start TestCase
...                 AND    Successful Login
Suite Teardown      Finish TestCase
Test Template       Digikala DataDriven

Default Tags    DataDriven Test
*** Test Cases ***
Local magazines     ${Local-MagCategory}  ${Local-CoverType}  ${Local-CoverType_paper}  ${Local-FirstItem}
    [Documentation]    A simple Data driven test on digikala - Local
Global magazines     ${Global-MagCategory}  ${Global-CoverType}  ${Global-CoverType_paper}  ${Global-FirstItem}
    [Documentation]    A simple Data driven test on digikala - Global

