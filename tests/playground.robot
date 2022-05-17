*** Settings ***

*** Variables ***

*** Keywords ***

*** Test Cases ***
test1
    FOR    ${i}    IN RANGE    1    10
       log to console    Selam ${i}
    END