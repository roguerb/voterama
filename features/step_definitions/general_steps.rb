Given(/^I am on the "(.*?)" page$/) do |resource|
  visit send "#{resource}_path"
end

When(/^I click on "(.*?)"$/) do |link|
  click_on link
end

When(/^I visit the "(.*?)" page$/) do |resource|
  visit send "#{resource}_path"
end
