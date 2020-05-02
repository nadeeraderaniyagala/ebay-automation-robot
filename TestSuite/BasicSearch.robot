*** Settings ***
Documentation  Basic search functionality
Library  SeleniumLibrary
Resource  ../Resources/CommonFunctionality.robot

Test Setup  CommonFunctionality.Start test case
#Test Teardown  CommonFunctionality.End Test Case

*** Variables ***
${search_text}  mobile
${second_element}   xpath:(//h3[@class='s-item__title s-item__title--has-tags'])[2]
${second_element_title}  id:itemTitle
${second_element_title_text}

*** Test Cases ***
Verify end to end functionality for ebay
    [Documentation]  This test case verifies the end to end functionality on ebay
    [Tags]  funtional

    Input search Text
    Click on the second search result
    Verify result

*** Keywords ***
Input search Text
    Input Text  xpath://input[@placeholder='Search for anything']  ${search_text}
    Press Keys  xpath://input[@type='submit']  [Return]
    Page Should Contain  results for ${search_text}

Click on the second search result
    ${second_element_title_text}  Get Text   ${second_element}
    Click Element  ${second_element}


Verify result
    Page Should Contain   ${second_element_title_text}