Given(/^"([^"]*)" is a user in the database$/) do |user|
  user = User.find_or_create_by(name: user)
  user.save
end

When(/^the user visits the site$/) do
  visit '/'
end

Then(/^he should see "([^"]*)" is a student at Craft Academy$/) do |name|
  expect(page).to have_content name
end

When(/^the user visits url with her name$/) do
  visit '/name/:name'
end

Then(/^a user with the name "([^"]*)" is created$/) do |arg1|
  expect(page).to have_content arg1
end
