*** Settings ***
Documentation  http://marketsquare.github.io/robotframework-requests/doc/RequestsLibrary.html
Library  Collections
Library  RequestsLibrary
Library  DebugLibrary
Test Setup  open session
Test Teardown  close session

*** Keywords ***
open session
    Create Session  Api  https://jsonplaceholder.typicode.com  verify=True

close session
    Delete All Sessions

*** Test Cases ***
Examples GET
    ${resp} =  Get Request  Api  /posts/9
    debug
    Status Should Be  200  ${resp}
    Request Should Be Successful  ${resp}
    Should Be Equal As Strings  ${resp.json()["id"]}  9

Examples POST
    ${data} =  To Json  {"title": "Robot Framework","body": "Eğitim","userId": 1090}
    ${resp} =  Post Request  Api  /posts  json=${data}
    Should Be Equal As Strings  ${resp.json()["id"]}  101
    Should Be Equal As Strings  ${resp.json()["body"]}  Eğitim

Examples PUT
    ${data} =  To Json  {"title": "Robot","body": "Updated","userId": 1091}
    ${resp} =  Put Request  Api  /posts/1  json=${data}
    Should Be Equal As Strings  ${resp.json()["userId"]}  1091
    Should Be Equal As Strings  ${resp.json()["body"]}  Updated