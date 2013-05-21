Feature: Writting posts
  In order to spread interesting ideas
  A writer
  Should be able to write a new post.

  Background:
    Given I'm in home page
    When I click on 'new post'

  Scenario: Write a post
    When I write a new post
    Then I should see my post

  Scenario: Write a post without title
    When I submit an empty title
    Then I should see an error message
