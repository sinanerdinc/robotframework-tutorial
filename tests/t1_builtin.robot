*** Settings ***
Documentation  http://robotframework.org/robotframework/latest/libraries/BuiltIn.html

*** Variables ***
${text}  LOREM ipsum dolor sit AMET

*** Keywords ***
now
    ${now} =  Get Time
    log to console  ${now}
    [Return]  ${now}

*** Test Cases ***
Test Case 1
    ${str1} =  Catenate  SEPARATOR=,  Pazartesi  Salı  Çarşamba
    log to console  ${str1}
    ${length} =	Get Length  Sinan Erdinç
    log to console  ${length}
    ${yyyy}  ${mm}  ${dd} =  Get Time  year,month,day
    log to console  ${yyyy} ${mm} ${dd}
    Set Suite Variable  ${year}  ${yyyy}

Test Case 2
    Repeat Keyword	3 times	  now
    Should Be Equal   ${year}  2022
    ${metin} =  Set Variable  Kara inek aslında kara değil
    Should Contain X Times	${metin}  kara	3  ignore_case=True
    Sleep  2s  Sigara molası
