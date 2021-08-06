
Scenario: Sign In User
Meta:
	@layout desktop
	
Given I am on the main application page

When I click on element located `By.xpath(/html/body/header/nav/div/a[1])`
When I enter `${useremail}` in field located `By.xpath(//*[@id="user"])`
When I enter `${userpassword}` in field located `By.xpath(//*[@id="password"])`
When I click on element located `By.xpath(//*[@id="login"])`
When I enter `${userpassword}` in field located `By.xpath(//*[@id="password"])`
When I click on element located `By.xpath(//*[@id="login-submit"]/span/span)`
When I wait until element located `By.xpath(//*[@id="header"]/div[2]/button[4]/div/span)` appears
When I click on element located `By.xpath(//*[@id="header"]/div[2]/button[4]/div/span)`

Then number of elements found by `By.xpath(//span[text()="uncommonlj@gmail.com"])` is equal to `1`


Scenario: Page with Account modal 
Meta:
	@layout desktop
	
When I COMPARE_AGAINST baseline with `PageAccSettings` ignoring:
|ELEMENT     |AREA   |
|By.xpath(.//ul[@class='boards-page-board-section-list'])| By.cssSelector(footer)|

Scenario: Page with Account settings 
Meta:
	@layout desktop
	
When I click on element located `By.xpath(//a[@data-test-id='header-member-menu-settings'])`
When I COMPARE_AGAINST baseline with `PageSettings`

Scenario: Page with Account Profiles
Meta:
	@layout desktop
	
When I click on element located `By.xpath(//*[@id="content"]/div/div[2]/ul/li[1]/a)`
When I COMPARE_AGAINST baseline with `PageProfile`

Scenario: Page with Templates
Meta:
	@layout desktop
	
When I go to the relative URL '/templates'
When I wait until element located `By.xpath(//h1[text()='Featured categories'])` appears
When I COMPARE_AGAINST baseline with `PageTemplates`
