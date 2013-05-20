Feature: Readin posts
  In order to read interesting posts
  A visitor
  Should be able to list and find the posts.

  Background: There are some posts
    Given there are two posts

  Scenario: Visit home page
    When I visit home page
    Then I see a list of posts

  Scenario: Read a complete post
    Given I'm in home page
    When I select a post
    Then I can read the entire post
