Feature: Week 4 assessment
  As a homepage owner
  In order for a vistor to be able to see my amazing stuff
  I would like to display my texts and images on a my page

  Background:
    Given "BollKalle" is a user in the database

  Scenario: User visits the site and is able to see his/her name on the page
    When the user visits the site
    Then he should see "BollKalle" is a student at Craft Academy

  Scenario: Sandra visits a url with her name and a user with that name is created
    When the user visits url with her name
    Then a user with the name "Sandra" is created
