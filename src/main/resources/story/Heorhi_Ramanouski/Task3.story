
Scenario: Create a board
Meta:
	@layout desktop
	
Given I am on the main application page

When I click on element located `By.xpath(/html/body/header/nav/div/a[1])`
When I enter `${useremail}` in field located `By.xpath(//*[@id="user"])`
When I enter `${userpassword}` in field located `By.xpath(//*[@id="password"])`
When I click on element located `By.xpath(//*[@id="login"])`
When I enter `${userpassword}` in field located `By.xpath(//*[@id="password"])`
When I click on element located `By.xpath(//*[@id="login-submit"]/span/span)`
When I wait until element located `By.xpath(//button[text()='View all closed boards'])` appears
When I find = `1` elements by `By.xpath(//div[@class='board-tile mod-add'])` and for each element do
|step|
|When I click on element located `By.xpath(//div[@class='board-tile mod-add'])`|
|When I enter `test1` in field located `By.xpath(//input[@data-test-id='create-board-title-input'])`|
|When I click on element located `By.xpath(//button[@data-test-id='create-board-submit-button'])`|


Scenario: Create several boards
Meta:
	@layout desktop
	

When I find > `1` elements by `By.xpath(//span[@class='board-tile-fade'])` and for each element do
|step|
|When I click on element located `By.xpath(//div[@class='board-tile mod-add'])`|
|When I enter `More boards` in field located `By.xpath(//input[@data-test-id='create-board-title-input'])`|
|When I click on element located `By.xpath(//button[@data-test-id='create-board-submit-button'])`|



