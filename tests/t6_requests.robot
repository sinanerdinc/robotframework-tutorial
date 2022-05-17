*** Settings ***
Documentation  http://marketsquare.github.io/robotframework-requests/doc/RequestsLibrary.html
Library  Collections
Library  RequestsLibrary
Test Setup  open session
Test Teardown  close session

*** Keywords ***
open session
    Create Session  Api  https://jsonplaceholder.typicode.com  verify=True

close session
    Delete All Sessions

*** Test Cases ***
Examples GET
    ${resp} =  GET On Session  Api  /posts/9
    Status Should Be  200  ${resp}
    Request Should Be Successful  ${resp}
    Should Be Equal As Strings  ${resp.json()["id"]}  9

Examples POST
    &{data} =  Create dictionary  title=Robot Framework    body=Ankara Testing Days    userId=1090
    ${resp} =  POST On Session  Api  /posts  json=${data}
    Should Be Equal As Strings  ${resp.json()["id"]}  101
    Should Be Equal As Strings  ${resp.json()["body"]}  Ankara Testing Days
    Should Be Equal As Strings  ${resp.json()["userId"]}  1090

Examples PUT
    &{data} =  Create dictionary  title=Robot Framework    body=Updated    userId=1091
    ${resp} =  PUT On Session  Api  /posts/1  json=${data}
    Should Be Equal As Strings  ${resp.json()["userId"]}  1091
    Should Be Equal As Strings  ${resp.json()["body"]}  Updated