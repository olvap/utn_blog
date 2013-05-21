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
  click_on Post.first.title
end

Then(/^I can read the entire post$/) do
  page.should have_content 'Body Text'
end

When(/^I click on 'new post'$/) do
  click_on 'Write a post'
end

When(/^I write a new post$/) do
  fill_in 'post_title', with: 'Amazing post'
  fill_in 'post_body', with: 'Interesting things to say'
  click_on 'Create Post'
end

Then(/^I should see my post$/) do
  page.should have_content 'Amazing post'
  page.should have_content 'Interesting things to say'
end

When(/^I submit an empty title$/) do
  fill_in 'post_body', with: 'Interesting things to say'
  click_on 'Create Post'
end

Then(/^I should see an error message$/) do
  page.should have_content 'there is an error'
end
