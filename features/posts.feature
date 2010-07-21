Feature: Seeing if posts are behaving correctly
  In order to see if posts behave correctly
  As a normal user - viewer
  I want to display correctly posts



Scenario: Posts Index
  Given I go to the home page
  Then show me the page

@wip
Scenario: Show Post
  Given I go to the home page
  When I follow "Doloribus sunt id fugit. Dolores libero animi autem et excepturi cum quia. Dolor voluptas aut officiis voluptatem modi rerum ea accusamus. Asperiores quia molestiae quasi consequuntur ut occaecati repellendus at."
  Then I should see "Doloribus sunt"


Scenario: Create Post
  Given context
  When event
  Then outcome

Scenario: Edit post
  Given context
  When event
  Then outcome

Scenario: Destroy Post
  Given context
  When event
  Then outcome










  
