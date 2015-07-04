Then(/^not "(.*?)"$/) do |text|
    expect(find('#results')).not_to have_content(text)
end

Then(/^which should match "(.*?)", "(.*?)", "(.*?)" and "(.*?)"$/) do |arg1, arg2, arg3, arg4|
  expect(find('#results')).to (have_content(arg1) and have_content(arg2) and have_content(arg3) and have_content(arg4))
end

Then(/^not "(.*?)", "(.*?)" or "(.*?)"\.$/) do |arg1, arg2, arg3|
  expect(find('#results')).not_to (have_content(arg1) or have_content(arg2) or have_content(arg3))
end
