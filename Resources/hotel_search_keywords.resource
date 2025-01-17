*** Settings ***
Library    SeleniumLibrary
Library    Collections
#Library      ../../../../../CommonBase/Flights/Resources/CustomKeywords/process_testdata_keywords.py
Variables    ../PageObjects/login_locators.py
Variables    ../PageObjects/hotel_search_locators.py

*** Keywords ***


Click On Hotels Tab Button
    Wait Until Element Is Visible    ${hotels_option}       timeout=30
    Click Element    ${hotels_option}

Search The Destination Of Hotels
    [Arguments]     ${search_data}
    ${my_dict}=         Create Dictionary   &{search_data}
    Wait Until Element Is Visible       ${to_enter_destination_hotels_inputbox}     timeout=10
    ${input_city}   Replace String    ${search_destination}     city    ${my_dict.HotelCity}
    Input Text    ${to_enter_destination_hotels_inputbox}    ${my_dict.HotelCity}
    Wait Until Element Is Visible    ${input_city}     timeout=10
    Click Element    ${input_city}

Click On Hotels Search Button
    Wait Until Element Is Visible    ${hotels_search_button}    timeout=10
    Wait Until Keyword Succeeds    10    20    Click Element    ${hotels_search_button}

Inputting Values In Min Price And Max Price Text Boxes
    Wait Until Element Is Visible    ${hotel_result_min_price_inputbox}       timeout=90
    Click Element    ${hotel_result_min_price_inputbox}
    Press Keys           ${hotel_result_min_price_inputbox}     BACKSPACE+BACKSPACE
    Click Element    ${hotel_result_min_price_inputbox}
    Input Text    ${hotel_result_min_price_inputbox}  5
    ${minvalue}     Get Value    ${hotel_result_min_price_inputbox}
    Wait Until Element Is Visible    ${hotel_result_max_price_inputbox}       timeout=30
    Click Element    ${hotel_result_max_price_inputbox}
    Press Keys           ${hotel_result_max_price_inputbox}    BACKSPACE+BACKSPACE
    Click Element    ${hotel_result_max_price_inputbox}
    Input Text    ${hotel_result_max_price_inputbox}  505
    ${maxvalue}     Get Value    ${hotel_result_max_price_inputbox}

Verify Checkout Date Before Checkin Date
    [Arguments]     ${search_data}
    ${my_dict}=         Create Dictionary   &{search_data}
    Select Departure Date   ${my_dict.NumberOfMonthsAhead}   ${my_dict.DepartureDate}
    Select Checkout Date Before Check In Date   ${my_dict.NumberOfMonthsAheadForReturn}   ${my_dict.ReturnDate}

Total Nights Automatically Recalculated Based On Updated Check-In And Check-Out Dates
        ${value}    Get Value    ${hotel_result_total_night_calculate}

Select Departure Date
    [Arguments]       ${no_of_months}     ${day}
    ${day}=    Convert To String    ${day}
    ${list_for_dates}        No Of Months Ahead    ${no_of_months}
    ${month}    Get From List    ${list_for_dates}    1
    ${year}    Get From List    ${list_for_dates}    2
    ${replaced_with_year}        Replace String    ${final_date_locator_to_replace}          replaceyear         ${year}
    ${replaced_with_year}        Replace String    ${replaced_with_year}          replacemonth         ${month}
    ${replaced_with_day}        Replace String    ${replaced_with_year}          replaceday         ${day}
    Wait Until Element Is Visible    ${departure_date_field}    timeout=30
    Click Element    ${departure_date_field}
    ${no_of_months_departure}     Convert To Number    ${no_of_months}
#    Set Test Variable   ${no_of_months_departure}
    Set Global Variable    ${no_of_months_departure}
    FOR    ${counter}    IN RANGE    1    ${no_of_months_departure}+1
        Log    ${counter}
        Wait Until Element Is Visible    ${next_month_button}
        Wait Until Element Is Enabled    ${next_month_button}
        Click Element    ${next_month_button}
    END
    Wait Until Element Is Visible    ${replaced_with_day}
    Click Element     ${replaced_with_day}
    ${selected_departure_date}   Get Value    ${departure_date_selected_text}
    Set Test Variable    ${selected_departure_date}

Select Checkout Date Before Check In Date
    [Arguments]       ${no_of_months}     ${day}
    ${day}=    Convert To String    ${day}
    ${list_for_dates}        No Of Months Ahead    ${no_of_months}
    ${month}    Get From List    ${list_for_dates}    1
    ${year}    Get From List    ${list_for_dates}    2
    ${departure_Date_value}  Split String    ${selected_departure_date}     -
    ${checkout_date}=  Evaluate     ${departure_Date_value}[0]-1
    ${checkout_date_value}  Convert To String    ${checkout_date}
    ${replaced_with_year}        Replace String    ${disabled_check_out_date}          replaceyear         ${year}
    ${replaced_with_year}        Replace String    ${replaced_with_year}          replacemonth         ${month}
    ${replaced_with_day}        Replace String    ${replaced_with_year}          replaceday         ${checkout_date_value}
    Click Element    ${return_date_field}
    Wait Until Element Is Visible    ${hotel_page_search_button}    timeout=30
    Click Element    ${hotel_page_search_button}

