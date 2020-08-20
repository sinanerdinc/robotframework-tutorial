*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
title should be
    [Arguments]  ${title}
    ${site_title} =  get text  xpath=//h1
    Should Be Equal  ${title}  ${site_title}