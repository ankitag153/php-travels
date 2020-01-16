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

Search Hotel Test
     [Tags]           hotelsearch2
	Search Hotel with zero adults		${location}