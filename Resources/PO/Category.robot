*** Settings ***
Library  SeleniumLibrary


*** Variables ***


*** Keywords ***
Choose the article category
    Click Button    //button[.//text()='Consent']
    Click Link    //a[@href="https://www.bbc.com/sport"]
    Click Link    //a[@href="/sport/football"]
    Click Link    //a[@href="/sport/football/gossip"]

Verify valid category 
    Location Should Be    https://www.bbc.com/sport/football/gossip

Verify invalid category
    Page Should Not Contain    dancec
