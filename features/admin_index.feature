Feature: allow admins to view all users' emails in one page

As an admin member
So that I may quickly get every users' email
I want to be able to see every users' email in one page

Scenario: Admin user visits /admin
  Given I am logged in as "an admin"
  When I go to the Admin Database page
  Then I should see every users' email

Scenario: Regular user visits /admin
  Given I am logged in as "a regular user"
  When I go to the Admin Database page
  Then I should be on the profile page for the user with email "example@example.com"

Scenario: Non-signed in user visits /admin
  Given I am not logged in
  When I go to the Admin Database page
  Then I should be on the login page
