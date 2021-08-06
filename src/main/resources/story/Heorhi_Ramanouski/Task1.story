
Scenario: Sign Up new User
Meta:
	@layout desktop
	
	
Given I am on the main application page

When I enter `<EMail>` in field located `By.xpath(//*[@id="hero"]/div/div/div[2]/form/div[1]/input)`
When I click on element located `By.xpath(//*[@id="hero"]/div/div/div[2]/form/div[2]/button)`
When I enter `<UserName>` in field located `By.xpath(//*[@id="displayName"])`
When I click on element located `By.xpath(//*[@id="signup-submit"])`
Examples:
|EMail                					     |UserName|
|#{generate(regexify '[a-z]{5}')}@anymail.com|#{generate(Name.FirstName)} #{generate(Name.LastName)}|
|#{generate(regexify '[a-z]{5}')}@anymail.com|#{generate(Name.FirstName)} #{generate(Name.LastName)}|

Scenario: create a board
Meta:
	@layout desktop
	
	
Given request body: {
	"key":"0471642aefef5fa1fa76530ce1ba4c85",
	"token":"9eb76d9a9d02b8dd40c2f3e5df18556c831d4d1fadbe2c45f8310e6c93b5c548",
	"name":"NewBoard"}
	
When I issue a HTTP HEAD request for a resource with the URL 'https://trello.com/thename7/boards/'
Then `${responseCode}` is equal to `200`