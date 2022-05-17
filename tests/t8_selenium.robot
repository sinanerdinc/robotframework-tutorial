*** Settings ***
Documentation    https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html
Resource  ../resources/utilsApp.robot
Resource  ../resources/homePageApp.robot
Resource  ../resources/paginationApp.robot
Resource  ../resources/articleDetailApp.robot
Test Setup  utilsApp.create browser
Test Teardown  utilsApp.close browser

*** Test Cases ***
Example 1
    homePageApp.go to homepage
    paginationApp.click next page
    paginationApp.click previous page
    homePageApp.click article  3
    articleDetailApp.title should be  Map, Zip, Reduce ve Filter Fonksiyonları

Example 2
    homePageApp.go to category  python
    homePageApp.click article  5
    articleDetailApp.title should be  Python Enum Kütüphanesi Kullanımı
