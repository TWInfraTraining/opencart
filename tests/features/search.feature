Feature: opencart
  As a user
  I want to search for a product
  So that I can learn more about it

  Scenario: Searching for monitors
    When I search for "apple"
    Then I should see "Apple Cinema 30"
    When I follow "Apple Cinema 30""
    Then I should see "The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution"
