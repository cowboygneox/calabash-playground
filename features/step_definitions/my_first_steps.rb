Given(/^I am on the root view$/) do
end

Then(/^I should see "(.*?)" on row (\d+)$/) do |arg1, arg2|
  check_element_exists("tableViewCell index:#{arg2.to_i - 1} label marked:'#{arg1}'")
end

Then(/^I touch delete$/) do
  touch("tableViewCellDeleteConfirmationButton id:'Delete'")
end

Then /^I swipe left on cell number (\d+)$/ do |index|
  index = index.to_i
  screenshot_and_raise "Index should be positive (was: #{index})" if (index<=0)
  swipe("left", {:query => "tableViewCell index:#{index-1}"})
  sleep(STEP_PAUSE)
end
