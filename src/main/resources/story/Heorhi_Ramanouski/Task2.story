
Scenario: Sign In User
Meta:
	@layout desktop
Given I am on the main application page

When I click on element located `By.xpath(/html/body/header/nav/div/a[1])`
When I enter `uncommonlj@gmail.com` in field located `By.xpath(//*[@id="user"])`
When I enter `Password1` in field located `By.xpath(//*[@id="password"])`
When I click on element located `By.xpath(//*[@id="login"])`
When I enter `Password1` in field located `By.xpath(//*[@id="password"])`
When I click on element located `By.xpath(//*[@id="login-submit"]/span/span)`
When I wait until element located `By.xpath(//*[@id="header"]/div[2]/button[4]/div/span)` appears
When I click on element located `By.xpath(//*[@id="header"]/div[2]/button[4]/div/span)`

Then number of elements found by `By.xpath(//span[text()="uncommonlj@gmail.com"])` is equal to `1`



