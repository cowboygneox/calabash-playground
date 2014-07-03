Given(/^I am on the root view$/) do
end

Then(/^I should see "(.*?)" on row (\d+)$/) do |arg1, arg2|
  check_element_exists("tableViewCell index:#{arg2.to_i - 1} label marked:'#{arg1}'")
end
