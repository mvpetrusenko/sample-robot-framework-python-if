*** Settings ***
Library  SeleniumLibrary


*** Variables ***


*** Keywords ***
Input Valid Credentials
    [Arguments]  ${email}  ${password}
    Click Button    //button[.//text()='Consent']
    Click Link  //*[@id="idcta-link"]
    Wait Until Page Contains Element    //*[@id="submit-button"]
    Input Text    //*[@id="user-identifier-input"]    ${email}
    Input Password    //*[@id="password-input"]    ${password}
    Click Button    //*[@id="submit-button"]
    Wait Until Page Contains    Your account
    Page Should Contain    Your account



Input Invalid Password
    [Arguments]  ${email}  ${password}
    Click Button    //button[.//text()='Consent']
    Click Link  //*[@id="idcta-link"]
    Wait Until Page Contains Element    //*[@id="submit-button"]
    Input Text    //*[@id="user-identifier-input"]    ${email}
    Input Password    //*[@id="password-input"]    ${password}
    Click Button    //*[@id="submit-button"]
    Wait Until Page Contains Element    //*[@id="submit-button"]
    Page Should Contain Element    //*[@id="form-message-password"]


Input Invalid Credentials
    [Arguments]  ${email}  ${password}
    Click Button    //button[.//text()='Consent']
    Click Link  //*[@id="idcta-link"]
    Wait Until Page Contains Element    //*[@id="submit-button"]
    Input Text    //*[@id="user-identifier-input"]    ${email}
    Input Password    //*[@id="password-input"]    ${password}
    Click Button    //*[@id="submit-button"]
    Wait Until Page Contains Element    //*[@id="submit-button"]
    Page Should Not Contain    Congrats


