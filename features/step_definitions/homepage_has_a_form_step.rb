Given(/^I visit the homepage$/) do
  visit "/"
end

Then(/^I should see an input tag named "(.*?)"$/) do |arg1|
  expect(has_field?(arg1)).to be true
end

Then(/^I should see a button named "(.*?)"$/) do |arg1|
  expect(has_button?(arg1)).to be true
end

When(/^fill the input "(.*?)" with "(.*?)"$/) do |input_search, text|
  fill_in input_search, :with => text
end

When(/^click on the button "(.*?)"$/) do |button_name|
  click_button button_name
end

Then(/^All the divs with class result containt "(.*?)"$/) do |text|

    all('.result').each do |result|
        within(result) do
            assert_text(text)
        end
    end
end

