*** Settings ***
Library    SeleniumLibrary
# add later
*** Test Cases ***
Open New Page
    Open The Other Web Page   https://www.youtube.com/    chrome



# using keyword variable
# add later
Open The Other Web Page
    [Arguments]  ${page_url}    ${browser}
    Open Browser    ${page_url}    ${browser}


# if-else
*** Variables ***
${MY_VALUE}=  5

*** Test Cases ***
Testing true if statement
    Run Keyword    If   ${MY_VALUE} > 2   Keyword 1

Testing false if statement
    Run Keyword    If   ${MY_VALUE} < 4   Keyword 1

Testing true if / else statement
    Run Keyword    If   ${MY_VALUE} < 4   Keyword 1  ELSE  Keyword 2

Testing true if / else-if / else statement
    Run Keyword    If   ${MY_VALUE} < 4   Keyword 1  ELSE IF   ${MY_VALUE} == 30  Keyword 2  ELSE   Keyword 3


*** Keywords ***
Keyword 1
    Log   It is true!

Keyword 2
    Log   It is false else!


Keyword 3
    Log   It is false else-if!



Navigate To Location
     [Arguments]  ${url}
    Go To   ${url}
    Location Should Be    ${url}


#Verify Page Loaded
  #  Page Should Contain Element    //*[@id="authportal-main-section"]/di
  #  Element Text Should Be    //*[@id="authportal-main-s   Sign In




 #   1) smoke test functions
 #   2) positive (should be)
 #   3) negative (should not be)
 #   4) if ... else
 #   5) saving in the variables
 #   6) python keywords
 #   7) python functions

