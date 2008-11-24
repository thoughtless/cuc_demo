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
    
  More Examples:
    | page          | name label  | name                 | body label  | body                            | button         | verify text                     | url              | verify text                     |
    | the home page | Unique name | Posties Rule         | Your Postie | Type a lot.                     | Post my postie | Type a lot.                     | postiesrule      | Type a lot.                     |
    | the home page | Unique name | Posties are cool     | Your Postie | <script>alert('p0wnd')</script> | Post my postie | <script>alert('p0wnd')</script> | postiesarecool   | <script>alert('p0wnd')</script> |
    | the home page | Unique name | This is a test       | Your Postie | Type a lot.                     | Post my postie | Type a lot.                     | thisisatest      | Type a lot.                     |
    | the home page | Unique name | what about 'quotes'? | Your Postie | '; delete from posties; --      | Post my postie | T'; delete from posties; --     | whataboutquotes  | '; delete from posties; --      |
    | the home page | Unique name | test_Under_scOre     | Your Postie | Type a lot.                     | Post my postie | Type a lot.                     | test_under_score | Type a lot.                     |
    

