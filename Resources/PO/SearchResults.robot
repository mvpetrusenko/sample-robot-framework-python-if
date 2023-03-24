*** Settings ***
Library  SeleniumLibrary


*** Variables ***


*** Keywords ***
Search for the result
    [Arguments]  ${name}
    Click Button    //button[.//text()='Consent']
    Click Element    //*[@id="orbit-search-button"]
    Wait Until Page Contains Element    //*[@id="search-input"]
    Input Text    //*[@id="search-input"]    ${name}
    Click Button    //button[@data-testid="test-search-submit"]

    ${search_results}=    Get Text    //*[@id='main-content']/div[3]/div/div/ul
    Run Keyword If    '${name}' in '${search_results}'    Log    Here is your results
    ...    ELSE    Log    Sorry for the invalid search result
    [Return]    ${search_results}
    ...    Run Keyword If    '${name}' not in '${search_results}'    Log    Sorry, something went wrong. Search results are invalid



#*** Test Cases ***
#User can search for the article :: Basic info about the test
#    [Documentation]    This test case verifies that the user can search for an article
#    Search for the result    England
#    Verify search valid result
#
#
#*** Keywords ***
#
#
#Verify search valid result
#    Location Should Be    https://www.bbc.co.uk/search?q=England&page=1
#
#Verify search invalid result
#    Page Should Not Contain    mmmmmm

