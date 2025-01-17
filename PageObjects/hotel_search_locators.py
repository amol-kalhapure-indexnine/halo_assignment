to_enter_destination_hotels_inputbox ='//input[@placeholder="Enter Destination"]'
hotels_option = '//button[contains(@class,"MuiButtonBase-root")]//div[normalize-space()="Hotels"]'
hotels_search_button = '//div[contains(@class,"icon-search MuiBox-root")]'
hotels_search_button_disable = '//button[contains(@class,"MuiButtonBase-root Mui-disabled MuiIconButton-root Mui-disabled")]'
search_destination = '//div[normalize-space()="city"]'
hotel_page_search_button = '//button[contains(text(),"Search")]'
search_destination_on_hotel_page = '//div[contains(text(),"city")]'
hotel_landing_page_txt = '//div[normalize-space()="Hotels for city"]'
hotel_landing_page_hotel_name = '(//div[contains(@class,"css-w2mlyf")]//div[contains(@class,"css-1itv5e3")])[1]'
hotel_search_page_inputbox = '//input[contains(@class,"MuiInputBase-input MuiOutlinedInput-input MuiInputBase")]'
hotel_search_page_invalid_value = '(//div[contains(@class,"flex-column-start cursorPointer MuiBox-root css-0")])[1]'
disabled_check_out_date = "//div[@class='react-datepicker__current-month' and text()='replacemonth replaceyear']/../../div[@class='react-datepicker__month']/div/div[contains(@class,'react-datepicker__day') and @role='option' and @aria-disabled='true' and contains(text(),'replaceday') ]"
guests_and_rooms_text = "//div[contains(text(),'Guests & Rooms')]"
add_rooms_button = "//div[contains(text(),'+ Add Room')]"
plus_button_adults = "//div[contains(@class,'cursorPointer increment')]"
max_limit_exceeded_room_txt = '//div[contains(text(),"replace_max_limit_txt")] '
done_button_adults_and_rooms = '//div[contains(text(),"Done")]'
hotel_page_xpath = '//div[@class="flex-basic-start text-h5 font-weight-600 flex-basic-end MuiBox-root css-pb69ky"]//div'

hotel_result_min_price_inputbox = "//input[@name='min']"
hotel_result_max_price_inputbox = "//input[@name='max']"
hotel_result_freecancelleation_toggle_btn = "//span[contains(@class,'MuiButtonBase-root MuiSwitch-switchBase')]/../.."
hotel_result_special_category_checkbox = "//div[contains(text(),'Special Category')]/../preceding-sibling::span[contains(@class,'MuiButtonBase-roo')]"
hotel_result_errormsg_for_hotel = "//div[contains(text(),'Sorry, No hotels match your selected criteria.')]"
hotel_result_star_rating_four ="(//div[contains(text(),'')]/../preceding-sibling::span[contains(@class,'MuiButtonBase-roo')])[1]"
hotel_result_star_rating_verification = "//div[contains(@class,'d-flex MuiBox')]/parent::div[contains(@class,'MuiBox-root css-1itv5e3')]"
hotel_result_accomodation_type = "//div[contains(text(),'Accomodation Types')]"
hotel_result_accomodation_type_hotel = "//div[contains(text(),'Hotel')]/../preceding-sibling::span[contains(@class,'MuiButtonBase-roo')]"
hotel_result_mealbasic_room_only = "//div[contains(text(),'Room Only')]/../preceding-sibling::span[contains(@class,'MuiButtonBase-roo')]"
hotel_result_room_only_text = "//div[contains(text(),'ROOM ONLY')]"
hotel_result_total_night_calculate = "//input[contains(@class,'MuiInputBase-input MuiOutlinedInput-input Mui-read')]"
hotel_result_clear_all_button = "//div[contains(text(),'Clear all')]"
hotel_result_uncheck_special_category_checkbox = "//div[contains(text(),'Special Category')]/../preceding-sibling::span[contains(@class,'MuiButtonBase-roo')]//child::div[@class='icon-unchecked-state MuiBox-root css-ex1lad']"
hotel_result_uncheck_accomodation_type_checkbox ="//div[contains(text(),'Hotel')]/../preceding-sibling::span[contains(@class,'MuiButtonBase-roo')]//child::div[@class='icon-unchecked-state MuiBox-root css-ex1lad']"

final_date_locator_to_replace = "//div[@class='react-datepicker__current-month' and text()='replacemonth replaceyear']/../../div[@class='react-datepicker__month']/div/div[contains(@class,'react-datepicker__day') and @role='option' and   not(contains(@class,'outside-month')) and  not(contains(@class,'disabled')) and text()='replaceday']"
special_return_title = "//div[normalize-space()='Special Return']"
flight_select_button = "//button[normalize-space()='Select']"
traver_detail_primary = "//div[@class='primaryTraveller text-medium font-weight-300 MuiBox-root css-w945fp']"
confrigration_arrow_dropdown = "//div[contains(@class,'travellerDetailsFormContainer MuiBox-root css-hix1c1')]//button[contains(@title,'Open')]//*[name()='svg']"
confrigration_clear_field = "//div[text()='Clear'][1]"
configuration_traveler_detail_primary = "(//div[@class='MuiAvatar-root MuiAvatar-circular MuiAvatar-colorDefault css-gx88r5'])[1]"
traveller_dropdow_arrow = "//div[@class=' icon-arrow_dropdown cursorPointer MuiBox-root css-0']"
traveller_my_icon_profile = "//span[@class='icon-customer']"
primary_traveller_select_gender_male = "//li[normalize-space()='Male']"
primary_traveller_gender_arow = "//div[@id='mui-component-select-travelerDetails.0.gender']"
flight_count = '//div[contains(@class,"flightsCount")]'
flight_seat_map = "//div[contains(@class,'aircraftContainer')]"
departure_date_field = "(//input[contains(@class,'customDatePicker')])[1]"
next_month_button = "//button[@aria-label='Next Month']"
departure_date_selected_text = "(//input[contains(@class, 'customDatePicker')])[1]"
return_date_field = "(//input[contains(@class,'customDatePicker')])[2]"
return_date_selected_text = "(//input[contains(@class, 'customDatePicker')])[2]"

