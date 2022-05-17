*** Settings ***
Documentation  http://franz-see.github.io/Robotframework-Database-Library/api/1.2.2/DatabaseLibrary.html
Library  Collections
Library  DatabaseLibrary
Library  FakerLibrary
Library  DebugLibrary
Test Setup  connect db
Test Teardown  disconnect db

*** Keywords ***
connect db
    Connect To Database  pymysql  A2oi17f9Xs  A2oi17f9Xs  H3LbxyKCCa  remotemysql.com  3306

disconnect db
    Disconnect from Database

*** Test Cases ***
Examples - SELECT
    ${results} =  DatabaseLibrary.query  SELECT * FROM users  returnAsDict=True
    log to console  ${results}

Examples - Row Count
    ${results} =  Row Count  SELECT * FROM users
    log to console  ${results}
    Row Count Is Equal To X  SELECT * FROM users  5
    Row Count Is Greater Than X  SELECT * FROM users  1
    Row Count Is Less Than X  SELECT * FROM users  10

Examples - INSERT
    [Tags]  insert
    ${email} =  FakerLibrary.Email
    ${last_name} =  FakerLibrary.Last Name
    ${first_name} =  FakerLibrary.First Name
    log to console  ${email} ${last_name} ${first_name}
    ${result} =  DatabaseLibrary.Execute Sql String  INSERT INTO users (firstname, lastname,email) VALUES ('${first_name}', '${last_name}', '${email}')
    log to console  ${result}

Examples - UPDATE
    [Tags]  update
    ${last_name} =  FakerLibrary.Last Name
    ${results} =  DatabaseLibrary.Execute Sql String  UPDATE users SET lastname='${last_name}' WHERE id=1
    log to console  ${results}
