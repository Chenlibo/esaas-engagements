
Given(/^I search app for "([^"]*)"$/) do |arg1|
  # puts body   really good debugging trick
  fill_in "app_keyword", with: arg1
  click_on "app_Search"
end
