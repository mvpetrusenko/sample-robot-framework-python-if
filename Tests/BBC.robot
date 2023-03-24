*** Settings ***
Documentation  Basic info about the whole suite
# Link to the Resources folder which contains keywords
Resource    ../Resources/BBC.robot
Resource    ../Resources/Common.robot
#Suite Setup  Insert Testing Data
Test Setup      Begin Web Test
#Test Teardown   End Web Test
#Suite Teardown  Cleanup Testing Data

*** Variables ***
${BROWSER}=  chrome
${START_URL}=  https://www.bbc.com/
${SEARCH_TERM}=  keyboard



*** Test Cases ***




#User can sign in to the account
    #[Documentation]  Basic info about the test
    #[Tags]  Smoke  Positive
    #BBC.Sign Into Account

#User enters invalid password
    #[Documentation]  Basic info about the test
    #[Tags]  Smoke  Positive
    #BBC.Enter invalid password


#User can NOT sign in to the account
    #[Documentation]  Basic info about the test
    #[Tags]  Smoke   Negative
    #BBC.Enter invalid credentials


User can search for the article
   [Documentation]  Basic info about the test
   [Tags]  Smoke   Positive
   BBC.Search for the valid article


#User gets wrong search results
    #[Documentation]  Basic info about the test
    #[Tags]  Smoke   Negative
    #BBC.Search for the invalid article


#User gets correct category results
    #[Documentation]  Basic info about the test
    #[Tags]  Smoke   Positive
    #BBC.Valid category result


#User gets wrong category results
    #[Documentation]  Basic info about the test
    #[Tags]  Smoke   Negative
    #BBC.Invalid category result


 #Logging info
    #[Documentation]  Basic info about the test
    #[Tags]  Smoke
    #${variable}=    Set Variable    Everything is OK!
    #Log To Console    ${variable}












