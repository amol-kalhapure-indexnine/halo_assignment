*** Settings ***
Library    SeleniumLibrary
Library    Collections
Variables  ../Enviroment/environment.py
Resource   ../Resources/hotel_search_keywords.resource
Resource   ../Resources/login_keywords.resource
Library    ../Resources/process_testdata_keyword.py

Test Setup      Open Tripjack Application
Test Teardown   Close Browser

*** Variables ***
${SEARCH_FLIGHTS_TD}=           ${CURDIR}${/}..${/}Test Data${/}hotel_search_test_data.xlsx

*** Test Cases ***
TCH_01 Verify traveler can refine search results by inputting values in Min Price and Max Price text boxes
    [Tags]      TCH_01
    ${search_data}=    Fetch Testdata By Id    ${SEARCH_FLIGHTS_TD}      Sheet1    TCH_01
    Log    ${search_data}
    Login With Valid Corporate Traveller Username And OTP    ${search_data}
    Click On Hotels Tab Button
    Search The Destination Of Hotels        ${search_data}
    Click On Hotels Search Button
    Inputting Values In Min Price And Max Price Text Boxes

TCH_02 Verify total nights automatically recalculated based on updated check-in and check-out dates
    [Tags]      TCH_02
    ${search_data}=    Fetch Testdata By Id    ${SEARCH_FLIGHTS_TD}      Sheet1    TCH_02
    Login With Valid Corporate Traveller Username And OTP    ${search_data}
    Click On Hotels Tab Button
    Search The Destination Of Hotels        ${search_data}
    Click On Hotels Search Button
    Verify Checkout Date Before Checkin Date     ${search_data}
    Total Nights Automatically Recalculated Based On Updated Check-In And Check-Out Dates

