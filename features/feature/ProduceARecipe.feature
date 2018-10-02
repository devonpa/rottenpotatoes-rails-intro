Feature: The Recipe Lookup page should be able to return search from either searching by input or selecting from a category tree

	Scenario: If I enter a string of characters and click search, a search should go out looking for related recipes
		Given I am on the Recipe Lookup page
		When I enter "string" in the "recipelookup" page search bar
		And I click on "search" on the "recipelookup" page
		Then I should be returned "recipes" or an "Result not found"

	Scenario: If the click on a search category within the category tree I should be returned recipe results that are within that category
		Give I am on the Recipe Lookup page
		When I click on a "category" from the "categorytree"
		Then I should be returned related "recipes"

	Scenario: If I enter non-numeric values into the search bar and submit the search I should get no return
		Give I am on the Recipe Lookup page
		When I enter "non-numeric chars" into the "search" bar
		And I click on "search" on the "recipelookup" page
		Then I should be returned "nil"

	Scenario: If the search bar is empty I should not be able to click the search button
		Give I am on the Recipe Lookup page
		When I enter "nil" into the "search" bar
		Then the "search" button should be "inactive"