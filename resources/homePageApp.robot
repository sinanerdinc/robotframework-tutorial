*** Settings ***
Library  SeleniumLibrary
Resource    ./utilsApp.robot

*** Variables ***
${site}    http://www.sinanerdinc.com

*** Keywords ***
go to homepage
    go to  ${site}

go to category
    [Arguments]  ${category_name}
    go to  ${site}/${category_name}

click article
    [Arguments]  ${number}
    utilsApp.click    xpath=//article[@class="post-preview"][${number}]/a/h2

