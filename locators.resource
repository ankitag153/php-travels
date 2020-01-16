*** Variables ***

${LocatorWaitTime}			60
${URL}						https://www.phptravels.net/home
${MyAccountLocator}			xpath=//*[@class='dropdown dropdown-login dropdown-tab']
${LoginLinklocator}			xpath=//div/a[contains(text(),'Login')]
${LoginButtonlocator}		xpath=//button[contains(text(),'Login')]
${emailInputlocator}		name=username
${passwordinputlocator}		name=password
${Searchbyhotelinputboxlocator}		xpath=//span[contains(text(),'Search by Hotel')]/../../input
${Hotelslinklocator}        class=text-center hotels active
${Locationlocator}	        id=select2-drop
${CheckinDatelocator}		name=checkin
${CheckoutDatelocator}		name=checkout
${AdultsCountlocator}       name=adults
${SearchButtonlocator}		xpath=//div/button[contains(text(),'Search')]/../button[@type='submit']
${DetailsButtonLocator}     xpath=//*[@id="LIST"]/li[1]/div/div/div[2]/div/div[3]/div/div[2]/form/button
${PriceDateButtonLocator}   class=anchor btn btn-primary btn-wide mt-5
${BookNowButtonLocator}     class=btn btn-primary btn-sm btn-block
${FirstNameLocator}         id=first_name
${LastNameLocator}         id=last_name
${EmailLocator}            id=email
