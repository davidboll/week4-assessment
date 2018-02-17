When(/^the user visits the site$/) do
  visit '/'
end

Then(/^he should see "([^"]*)"$/) do |text|
  expect(page).to have_content text
end
