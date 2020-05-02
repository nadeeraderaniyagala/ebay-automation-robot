*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Start test case
    Open Browser  http://www.ebay.com  chrome
    Maximize Browser Window

End Test Case
    Close Browser
