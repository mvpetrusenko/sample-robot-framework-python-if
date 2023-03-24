*** Settings ***
Resource    ../Resources/PO/SearchResults.robot
Resource    ../Resources/PO/SignIn.robot
Resource    PO/Category.robot



*** Keywords ***
Sign Into Account
    Input Valid Credentials    mariiape3330@gmail.com    mariiape333$$$


Enter invalid password
    Input Invalid Password    mariiape3330@gmail.com    mari 


Enter invalid credentials
    Input Invalid Credentials    mari0@gmail.com    mari 
    
    
Search for the valid article
    Search for the result    England
    Verify search valid result


Search for the invalid article
    Search for the result    England
    Verify search invalid result


Valid category result
    Choose the article category
    Verify valid category


Invalid category result
    Choose the article category
    Verify invalid category




