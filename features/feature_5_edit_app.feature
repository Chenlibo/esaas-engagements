Feature: an app can be edited

    As an admin user
    So that we can update the app with correct information (check for vetting status only for this feature)
    I want to edit a app

Background: Logged in
	Given the following users exist:
	  | name            | github_uid      | email                         | user_type |
	  | ESaaS Developer | esaas_developer | esaas_developer@saasbook.info | coach     |
	  | Armando Fox     | armandofox      | armandofox@berkeley.edu       | coach     |
	  | Adnan Hemani    | adnanhemani     | adnanhemani@berkeley.edu      | coach     |

	And the following apps exist:
	  | name                     | description  | org_id | status  |
	  | AFX Dance                | Awesome!     | 3      | pending |
	  | Go Bird                  | Great!       | 1      | pending |
	  | ESaaS Engagement Tracker | The Best App | 2      | pending |

	And the following orgs exist:
	  | name                         | contact_id |
	  | Berkeley Student Cooperative | 1          |
	  | UC Berkeley CS169            | 2          |
	  | Secret Society by Armando    | 2          |
	  | Bachelor Party with Adnan    | 3          |

	And the following engagements exist:
	  | app_id | coach_id | team_number | start_date | student_names     |
	  | 1      | 1        | 13          | 2012-03-13 | a, b, c           |
	  | 3      | 1        | 20          | 2017-09-15 | SC,JD,KH,DK,JS,KP |

	And the following iterations exist:
	  | engagement_id | end_date   |
	  | 1             | 2012-05-23 |
	  | 2             | 2017-11-27 |

	And I am logged in

    # And I'm logged in on the apps page
    # This is probably not working, please check
    # Given I am on the edit app page for app: "AFX Dance"

Scenario: There is a form on the edit app page
    # Given I am on the edit app page for app id: "1"
    Given I am on the apps page
    Then I press "Edit" for "AFX Dance"
    And I should see "App Name"
    And I should see "App Description"
    And I should see "Deployment Url"
    And I should see "Repository Url"
    And I should see "Code Climate Url"
    And I should see "Organization"
    And I should see "Status"
    And I should see "Vetting Status"

Scenario: When I click back I go back to the apps page
    Given I am on the apps page
    Then I press "Edit" for "AFX Dance"
    And I follow "Back"
    Then I am on the apps page


