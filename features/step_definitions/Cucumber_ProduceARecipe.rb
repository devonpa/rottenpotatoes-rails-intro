require "watir-webdriver" 
require "rspec/expectations" 

When I enter "(/^\W*/i)" into the "(.*)"
And /^I click on "(.*)" on the "(.*)" Page$/ do |element|
	$recipes.include? element = true || if $recipes.include? element == false; return_message = "Recipe not found"; 
	end
end

When /^I click on "(.*)" $/ do |element|
	$recipes.food_category.include? element = true || if $recipes.include? element == false; $return = "Recipe not found";
	end
end

When I enter "(/\W*/i)" into the "(.*)"
And /^I click on "(.*)" on the "(.*)" Page$/ do |element|
	$return = "Recipe not found";
end

When I enter "('')" into the "(.*)"
And /^I click on "(.*)" on the "(.*)" Page$/ do |element|
	$return = "Recipe not found";
end