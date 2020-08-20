*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
click next page
  click element  xpath=//a[@title="Sonraki Sayfa"]

click previous page
  click element  xpath=//a[@title="Önceki Sayfa"]