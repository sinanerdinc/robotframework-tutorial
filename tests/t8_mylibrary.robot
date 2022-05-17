*** Settings ***
Library  ../resources/libraries/mylibrary.py

*** Test Cases ***
Examples - topla
    ${result} =  topla  10  20
    log to console  ${result}

Examples - rastgele
    ${result} =  rastgele  1  100
    log to console  ${result}

Examples - cat image
    ${result} =  get cat image
    log to console  ${result}

Examples - crypto price
    ${result} =  get crypto price    BTC
    log to console  ${result}
