*** Settings ***
Documentation  https://github.com/Zeroune/robotframework-csvlib
Library  CSVLib

*** Test Cases ***
Examples
	${singlelist} =  Read CSV As Single List    ./tests/test.csv
	log to console  ${singlelist}

	${list} =  read csv as list  ./tests/test.csv
	log to console  ${list}

	${dict} =  read csv as dictionary  ./tests/test.csv  Animal  Legs
	log to console  ${dict}
