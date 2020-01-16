*** Settings ***
Library        			SeleniumLibrary
Library        			DateTime
Resource				keywords.resource


*** Test Cases ***

Login Test
	[Tags]           	Login
	Login to Web App		${username}				demouser
	
Search Hotel Test
	[Tags]           hotelsearch	
	Search Hotel on date		${location}

Search flight Test
     [Tags]           flightsearch
	Search flight on date		${from}   ${to}
