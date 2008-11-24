In order to share my brilliance with the world
As an annonymous user
I want to post some text on the internet

  Scenario: Post some text and view it
    Given there are no posties
    When I go to "the home page"
    And I fill in "Unique name" with "iamsmart"
    And I fill in "Your Postie" with "I am brilliant. Listen to me"
    And I press "Post my postie"
    Then I should see "I am brilliant. Listen to me"
    When I go to "/iamsmart"
    Then I should see "I am brilliant. Listen to me"
