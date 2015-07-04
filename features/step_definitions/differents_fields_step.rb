Then(/^I should see a checkbox named "(.*?)"$/) do |name|
  expect(has_field?(name)).to be true
end

When(/^Searching "(.*?)" by field "(.*?)"$/) do | text, field |
  fill_in field, :with => text
end

When(/^"(.*?)" is checked$/) do |name|
  check name
end
