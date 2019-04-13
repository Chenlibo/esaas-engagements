Feature: searching to quickly find apps according to name/organization/description
	As a logged in user
	So that I can quickly find the app I'm looking for
	I should be able to search the app in the app listing page by name/organization/description

Background: Logged in
    Given the following apps exist:
        | name   | description             | org_id | status  |
        | app 1  | this is one test        | 1      | pending |
        | app 2  | this is two test        | 2      | pending |
        | app 3  | this is three test      | 3      | pending |

    And the following orgs exist:
        | name  | contact_id |
        | org A | 1          |
        | org B | 1          |
        | org C | 1          |

    And the following users exist:
        | name  | github_uid      | email         |
        | user1 | esaas_developer | test@user.com |
        | user2 |                 | test@user.com |
        | user3 |                 | test@user.com |

    And I'm logged in on the apps page

Scenario: search for an app by name
	Given I choose "App" 
    And I search app for "1"
	Then I should see "app 1"
	But I should not see "app 2"
    And I should not see "app 3"

    Given I choose "App" 
    And I search app for "app"
    Then I should see "app 1"
    And I should see "app 2"
    And I should see "app 3"

Scenario: search for an app by organization
    Given I choose "Organization" 
    And I search app for "B"
    Then I should see "app 2"
    But I should not see "app 1"
    And I should not see "app 3"

    Given I choose "Organization" 
    And I search app for "org"
    Then I should see "app 1"
    And I should see "app 2"
    And I should see "app 3"

Scenario: search for an app by description
    Given I choose "Description" 
    And I search app for "three"
    Then I should see "app 3"
    But I should not see "app 1"
    And I should not see "app 2"

    Given I choose "Description" 
    And I search app for "test"
    Then I should see "app 1"
    And I should see "app 2"
    And I should see "app 3"