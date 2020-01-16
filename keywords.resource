***Settings***
Library        			SeleniumLibrary
Resource				testdata.resource
Resource				locators.resource

*** Keywords ***

Launch WebApp
	Open Browser		${URL}			GC			#GC defines google chrome
	Maximize Browser Window
	Wait Until Element Is Visible		${MyAccountLocator}		${LocatorWaitTime}

Login to Web App
	[Arguments]		${username}		${password}		${LocatorWaitTime}=60	#minimum 2 spaces between two arguments
	Launch WebApp
	Wait Until Element Is Visible		${MyAccountLocator}		${LocatorWaitTime}
	Click Element		${MyAccountLocator}
	Wait Until Element Is Visible		${LoginLinklocator}		${LocatorWaitTime}
	Click Element		${LoginLinklocator}
	Wait Until Element Is Visible		${emailInputlocator}		${LocatorWaitTime}
	Input Text		   ${emailInputlocator}			${username}
	Input Text		   ${passwordinputlocator}			${password}
	Capture Page Screenshot
	Click Element		${LoginButtonlocator}
	Wait Until Page Contains		Hi, Demo User			${LocatorWaitTime}
	Capture Page Screenshot
	
Search Hotel on date
	[Arguments]		${CityTosearch}
	Launch WebApp
	Wait Until Element Is Visible			${Searchbyhotelinputboxlocator}				${LocatorWaitTime}
	Input Text			${Searchbyhotelinputboxlocator}			${Location}
	Click Element		xpath=//*[@id="select2-drop"]/ul/li/ul/li/div/span
	${Date}                  Get Current Date
    ${CheckinDate}			Add Time To Date   ${Date}   		1 day   result_format=%d/%m/%Y
    ${CheckoutDate}			Add Time To Date   ${Date}   4 day   result_format=%d/%m/%Y
	Input Text				${CheckinDatelocator}			 ${CheckinDate}
	Input Text				${CheckoutDatelocator}			 ${CheckoutDate}
	Click Element			${SearchButtonlocator}
	Click Element           ${DetailsButtonLocator}
	Click Element           ${PriceDateButtonLocator}
	Click Element           ${BookNowButtonLocator}


Search Hotel with zero adults
    [Arguments]		${CityTosearch}
	Launch WebApp
	Wait Until Element Is Visible			${Searchbyhotelinputboxlocator}				${LocatorWaitTime}
	Input Text			${Searchbyhotelinputboxlocator}			${CityTosearch}
	Wait Until Element Is Visible			xpath=//*[contains(text(),'${CityTosearch}')]				${LocatorWaitTime}
	Click Element		xpath=//*[contains(text(),'${CityTosearch}')]
	${Date}                  Get Current Date
    ${CheckinDate}			Add Time To Date   ${Date}   		1 day   result_format=%d/%m/%Y
    ${CheckoutDate}			Add Time To Date   ${Date}   4 day   result_format=%d/%m/%Y
    ${AdultsCountlocator}   0
	Input Text				${CheckinDatelocator}			 ${CheckinDate}
	Input Text				${CheckoutDatelocator}			 ${CheckoutDate}
	Click Element			${SearchButtonlocator}
	