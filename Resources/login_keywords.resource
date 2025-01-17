*** Settings ***
Library    Collections
Library    String
Library    SeleniumLibrary

Library     ../../CustomKeywords/process_testdata_keywords.py
Variables    ../../../../../Environment/environments.py
Variables  ../../../PageObjects/Login/login_locators.py
Variables    ../../../PageObjects/SearchFlights/search_flights_locators.py

*** Variables ***
${SEARCH_FLIGHTS_TD}=           ${CURDIR}${/}..${/}Test Data..${/}hotel_search_test_data.xlsx

*** Keywords ***
Open Tripjack Application
#    Set Screenshot Directory    ${screenshot_directory}
#    ${options} =  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
#    ${prefs}  Create Dictionary  download.default_directory=${default_download_path}
#    Call Method  ${options}  add_experimental_option  prefs  ${prefs}
#    Call Method  ${options}  add_argument  --headless
#    Open Browser     ${tripjack_url}    ${browser}  options=${options}
    Open Browser     ${staging_url}    ${browser}
    Maximize Browser Window
    Set Window Size    ${window_height}    ${window_width}
    Wait Until Page Contains Element    ${email_field}    timeout=10s

Login With Valid Corporate Traveller Username And OTP
    [Arguments]     ${search_data}
    ${my_dict}    Create Dictionary   &{search_data}
    Input Text    ${email_field}    ${my_dict.Username}
    Click Element    ${login_next_button}
    Input Static Otp In The Otp Field    ${search_data}
    Wait Until Element Is Visible    ${corporate_traveller_home_navigation_text}    timeout=10s

Input Static Otp In The Otp Field
    [Arguments]    ${search_data}
    Input Text    ${otp_field}    ${search_data['Otp']}
    Click Element    ${verify_otp_button}
