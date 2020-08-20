*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
go to homepage
    go to  ${site}

go to category
    [Arguments]  ${category_name}
    go to  ${site}/${category_name}

click article
    [Arguments]  ${number}
    click element  xpath=//article[@class="post-preview"][${number}]/a/h2

