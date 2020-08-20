*** Settings ***
Library  mylibrary.py

*** Test Cases ***
Examples - topla
    ${result1} =  topla  10  20
    log to console  ${result1}

Examples - rastgele
    ${result2} =  rastgele  1  100
    log to console  ${result2}

Examples - cat image
    ${result3} =  get cat image
    log to console  ${result3}
