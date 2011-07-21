Feature: opencart
  As a user
  I want to search for a product
  So that I can learn more about it

  Scenario: Visiting home page
    When I go to "http://web.part2.com"
    When I fill in "filter_keyword" with "apple"
    Then I should see "Apple Cinema 30"
    When I follow "Apple Cinema 30""
    Then I should see "The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution"

