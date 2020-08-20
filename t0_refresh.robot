*** Settings ***
Documentation  My documentation is here.
Library  DebugLibrary
Test Setup  log to console  Test Başladı.
Test Teardown  log to console  Test Bitti.

*** Variables ***
${first_name}  Sinan

*** Keywords ***
say hi
    log to console  Hi ${first_name}

say hello
    [Arguments]  ${name}
    log to console  Hello ${name}

*** Test Cases ***
Test Case 1
    say hi

Test Case 2
    [Tags]  hello
    say hello  Erdinç
    say hello  Ahmet
