# This doesn't work since I've no idea on handling the js file

# Feature: display list of movies filtered by MPAA rating
 
#   XXXXXXXXX DUMMY TEST FOR FEATURE 5 XXXXXXXXXX

# Background: apps with different status exist
#     Given the following orgs exist:
#         | name | contact_id |
#         | org1 | 1          |

#   And the following apps exist:
#         | name  | description   | org_id | repository_url | status      |
#         | app1  | test1         | 1      | test1@test.com | development |
#         | app2  | test2         | 1      | test2@test.com | pending     |
#         | app3  | test3         | 1      | test3@test.com | in_use      |

# Scenario: restrict QQQAAA
#   Given I am on the Apps page
#   When I uncheck "pending"
#   And I uncheck "development"
#   Then I should see "display"
#   And I should see "app1"
#   And I should see "app2"