*** Settings ***
Library  SeleniumLibrary
Library  String
Library  DateTime

*** Variables ***
${browser}  chrome
${TIMEOUT}  15 seconds
${site}  http://www.sinanerdinc.com

*** Keywords ***
create browser
    open browser  about:blank  ${browser}
    Set Selenium Timeout  ${TIMEOUT}
    maximize browser window
    Set Window Size  1920  1080

close browser
    close all browsers

click
    [Arguments]  ${SELECTOR}
    Wait Until Page Contains Element  ${SELECTOR}
    click element  ${SELECTOR}

click button text
    [Arguments]  ${button_text}
    wait until element is enabled  xpath=//button[text()='${button_text}']
    utils.click  xpath=//button[text()='${button_text}']

press enter
    Press Keys  NONE  ENTER

find digit in text
    [Documentation]  Verilen bir metinde numarayı bulur.
    [Arguments]  ${text}
    ${digit} =  Get Regexp Matches  ${text}  \\d+
    [Return]  ${digit}


get date time
    [Documentation]  Verilen gün kadar öncesi veya sonrasının datetime değerini döner.
    [Arguments]  ${day}
    ${result} =  Get Current Date  increment=${day} days
    [Return]  ${result}
