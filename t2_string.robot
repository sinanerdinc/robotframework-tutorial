*** Settings ***
Documentation  http://robotframework.org/robotframework/latest/libraries/String.html
Library  String

*** Variables ***
${text}  LOREM ipsum dolor sit AMET

*** Keywords ***
find digit
    [Arguments]  ${text}
    ${digit} =  Get Regexp Matches  ${text}  \\d+
    [Return]  ${digit}

*** Test Cases ***
Test Case 1
    ${str1} =  Convert To Lower Case  ${text}
    log to console  ${str1}
    ${str2} =  Convert To Upper Case  ${text}
    log to console  ${str2}
    ${str3} =  Replace String  ${text}  o  ${EMPTY}  count=1
    log to console  ${str3}
    ${str4} =  find digit  Sipariş numaranız 405060, teşekkür ederiz.
    log to console  ${str4}
    @{numbers} =  Split String  1,2,3,4,5  ,
    log to console  ${numbers}
