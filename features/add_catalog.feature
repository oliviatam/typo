Feature: Write Articles
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add articles to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully add categories
    Given I am on the new categories page
    When I fill in "Name" with "book cat ###"
    And I fill in "Keywords" with "book"
    And I fill in "Description" with "book desc blah blah"
    And I press "Save"
    Then I should be on the new categories page
    And I should see "book cat ###"
    And I should see "book desc blah blah"
