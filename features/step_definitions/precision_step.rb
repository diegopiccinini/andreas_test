When(/^check the checkbox "(.*?)"$/) do |name|
  check name
end

Then(/^has not results$/) do
  assert_no_selector('.result')
end

When(/^the checkbox "(.*?)" is unchecked$/) do |name|
  uncheck name
end

Then(/^has results$/) do
 assert_selector('.result')
end
