*** Settings ***
Documentation  https://github.com/Zeroune/robotframework-csvlib
Library  CSVLib

*** Test Cases ***
Examples
	${singlelist} =  CSVLib.Read CSV As Single List  test.csv
	log to console  ${singlelist}

	${list} =  CSVLib.read csv as list  test.csv
	log to console  ${list}

	${dict} =  CSVLib.read csv as dictionary  test.csv  Animal  Legs
	log to console  ${dict}
