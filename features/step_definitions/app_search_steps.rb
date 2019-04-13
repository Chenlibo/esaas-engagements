Given(/^I search app for "([^"]*)"$/) do |arg1|
  # puts body   really good debugging trick
  fill_in "text", with: arg1
  click_on "go"
end

Given(/^I'm logged in on the apps page$/) do
  visit "/apps"
end