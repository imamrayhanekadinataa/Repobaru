Feature: User
  As an admin
  I want to get detail user
  So that I can update the user data

 Scenario: POST - As an admin I have to be able to create new user
   Given I set an endpoint for POST new user
   When I request POST detail user
    Then I validate the status code is 201
    And validate the data detail after create user
  And get userId for other request

  Scenario: POST - As an admin I can't create new user with invalid password
    Given I set an endpoint for POST new user
    When I request POST detail user with invalid password
    Then I validate the status code is 400
    And validate the data detail after failed create user

 Scenario: POST - As a user I have to be able to generate token
  Given I set an endpoint for POST generate token
  When I request POST generate token
 Then I validate the status code is 200
 And validate the data detail after generate token
 And get token for other request

   Scenario: POST - As a user i can't generate token
     Given I set an endpoint for POST generate token
     When I request POST generate token with null username and password
     Then I validate the status code is 400
     And validate the data detail after generate token failed

     Scenario: POST - As a user i have to be able to check authorized
       Given I set an endpoint for POST authorized user
       When I request POST detail user auth
       Then I validate the status code is 200

       Scenario: POST- As a user i failed to authorized
         Given I set an endpoint for POST authorized user
         When I request POST detail user auth with null email and password
         Then I validate the status code for authorize is 400
         And validate the data detail after authorized


