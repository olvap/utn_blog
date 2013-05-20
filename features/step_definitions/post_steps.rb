Given(/^there are two posts$/) do
  2.times { create(:post) }
end

When(/^I visit home page$/) do
  visit '/'
end

Then(/^I see a list of posts$/) do
  page.should have_content 'Post 1'
  page.should have_content 'Post 2'
end

Given(/^I'm in home page$/) do
  visit '/'
end

When(/^I select a post$/) do
  click_on 'Post 1'
end

Then(/^I can read the entire post$/) do
  page.should have_content 'Body Text'
end

