*** Settings ***
Documentation  https://guykisel.github.io/robotframework-faker/
Library  FakerLibrary

*** Test Cases ***
Examples
    ${Address} =  FakerLibrary.Address
    log to console  ${Address}
    ${City} =  FakerLibrary.City
    log to console  ${City}
    ${sha} =  FakerLibrary.Sha 256
    log to console  ${sha}
    ${rnd} =  FakerLibrary.Random Int  min=100  max=999
    log to console  ${rnd}
    ${Email} =  FakerLibrary.Company Email
    log to console  ${Email}
    ${Credit_Card} =  FakerLibrary.Credit Card Full
    log to console  ${Credit_Card}
    ${Date} =  FakerLibrary.Date Between  start_date=-5y  end_date=today
    log to console  ${Date}
    ${Iban} =  FakerLibrary.Iban
    log to console  ${Iban}
    ${Image} =  FakerLibrary.Image Url
    log to console  ${Image}
    ${Text} =  FakerLibrary.Text  max_nb_chars=50
    log to console  ${Text}
