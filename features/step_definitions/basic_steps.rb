Given(/^"([^"]*)" is a user in the database$/) do |user|
  user = User.find_or_create_by(name: user)
  user.save
end

When(/^the user visits the site$/) do
  visit '/'
end

Then(/^he should see "([^"]*)" is a student at Craft Academy"$/) do |username|
  expect(page).to have_content username
end
