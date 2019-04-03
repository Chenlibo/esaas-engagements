Feature: when creating an app, the vetting status dropdown should include all possible status
As a user of the app
So that I should be able to take care of the vetting status for each app
I want to do a string matching within the dropdown menu

Background: user and orgs have been added to database
# The following tables are not needed for the feature, just copied from the original file
  And the following orgs exist:
        | id | name     | contact_id |
        | 1  | Berkeley | 1          |
        | 2  | Stanford | 1          |
        | 3  | org3     | 1          |
        | 4  | org4     | 1          |

  And the following users exist:
        | name              | id | github_uid      | email          | user_type |
        | user1             | 1  | esaas_developer | test1@user.com | coach     |

  And I am logged in

@javascript
Scenario: I can search the dropdown list of vet_status on new app page

  Given I am on the new app page
  # Not sure below is the correct id for vetting status
  And I click "#select2-app_vet_status-container"
  And I type in "dec" in ".select2-search__field"
  Then I should see "Declined by Staff" inside ".select2-results"
  And I should see "Declined by Customer" inside ".select2-results"
  And I should see "Declined by Customer–Available Next Sem" inside ".select2-results"

@javascript
Scenario: I can see the dropdown list of vet_status on new app page

  Given I am on the new app page
  # Not sure below is the correct id for vetting status
  And I click "#select2-app_vet_status-container"
  Then I should see "Vetting Pending" inside ".select2-results"
  And I should see "On Hold" inside ".select2-results"
  And I should see "Staff Approved" inside ".select2-results"
  And I should see "Customer Informed" inside ".select2-results"
  And I should see "Customer Confirmation Received" inside ".select2-results"
  And I should see "Declined by Staff " inside ".select2-results"
  And I should see "Declined by Customer" inside ".select2-results"
  And I should see "Declined by Customer–Available Next Sem" inside ".select2-results"
  And I should see "Backup" inside ".select2-results"


# Copied from the original file, meaningless for this feature
# @javascript
# Scenario: I can still create a new app as usual

#   Given I am on the new app page
#   When I fill in "App Name" with "Fake app"
#   When I fill in "App Description" with "Fake app description"
#   When I fill in "Repository Url" with "http://fakeapp.com"
#   And I click "#select2-app_org_id-container"
#   And I type in "org" in ".select2-search__field"
#   And I press enter in ".select2-search__field"
#   And I press "Create App"
#   Then I should be on the apps page
#   And I should see "App was successfully created."