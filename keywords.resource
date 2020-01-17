***Settings***
Library        			SeleniumLibrary
Resource				testdata.resource
Resource				locators.resource

Launch WebApp
	Open Browser		${URL}   GC			#GC defines google chrome
	Maximize Browser Window
	Wait Until Element Is Visible		${MyAccountLocator}    ${LocatorWaitTime}
	
Search Hotel on date
  [Arguments]		${CityTosearch}
  Launch WebApp
  Wait Until Element Is Visible    ${Searchbyhotelinputboxlocator}   ${LocatorWaitTime}
  Input Text		           ${Searchbyhotelinputboxlocator}   ${location}
  Wait Until Element Is Visible   xpath=//*[contains(text(),'${CityTosearch}')]	${LocatorWaitTime}
  Click Element		          xpath=//*[contains(text(),'${CityTosearch}')]
  ${Date}                  	  Get Current Date
  ${CheckinDate}	         Add Time To Date   ${Date}   		1 day   result_format=%d/%m/%Y
  ${CheckoutDate}	         Add Time To Date   ${Date}             4 day   result_format=%d/%m/%Y
  Input Text		         ${CheckinDatelocator}			 ${CheckinDate}
  Input Text								${CheckoutDatelocator}			 ${CheckoutDate}
  Click Element			${SearchButtonlocator}
  Click Element           	${DetailsButtonLocator}
  Click Element           	${PriceDateButtonLocator}
 Click Element           	${BookNowButtonLocator}


Search flight on date
  Launch WebApp
  Click Link                                    xpath=//a[@href="#flights"]
  Wait Until Element Is Visible			${LocationFromLocator}	   ${LocatorWaitTime}
  Input Text			                ${LocationFromLocator}	   Delhi
   Wait Until Element Is Visible		${LocationtoLocator}	   ${LocatorWaitTime}
  Input Text			                ${LocationtoLocator}	   Sydney
  ${Date}                                       Get Current Date
  ${FlightsDateStart}			       Add Time To Date   ${Date}   		1 day   result_format=%d/%m/%Y
  Input Text				       ${FlightStartDateLocator}			 ${FlightsDateStart}
  Click Element			               ${SearchButtonlocator}
	
