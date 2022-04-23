#Scenario: GET - As a user i can not to get detail user
#Given: I set an endpoint for GET detail user
#When: I request GET detail user with unregistered userId
#Then: I validate the status code is 401
#And: validate the data detail after failed get detail user
#
##Scenario: GET - As a user i want to get detail books without parameter
#Given: I set an endpoint for GET detail books
#When: I request GET detail books without parameter
#Then: I validate the status code is 200
#And: validate the data detail after get detail books
#
#Scenario: POST - As a user i can set isbn
#Given: I set an endpoint for POST set isbn
#When: I request POST set isbn
#Then: I validate the status code is 200
#And: validate the data detail after post set isbn
#
#Scenario: POST - As a user i can not set isbn with invalid userId
#Given: I set an endpoint for POST set isbn
#When: I request POST set isbn with invalid userId
#Then: I validate the status code is 401
#And: validate the data detail after failed post set isbn
#
#Scenario: DELETE - As a user i can delete books
#Given: I set an endpoint for DELETE books
#When: I request DELETE books
#Then: I validate the status code is 204
#And: validate the data detail after delete books
#
#Scenario: DELETE - As a user i can not delete books with invalid userId
#Given: I set an endpoint for DELETE books
#When: I request DELETE books with invalid userId
#Then: I validate the status code is 401
#And: validate the data detail after failed delete books invalid userId
#
#Scenario: GET - As a user i can get detail book
#Given: I set an endpoint for GET detail book
#When: I request GET detail book
#Then: I validate the status code is 200
#And: validate the data detail after get detail book
#
#Scenario: GET - As a user i can not get detail book invalid isbn
#Given: I set an endpoint for GET detail book
#When: I request GET detail book with invalid isbn
#Then: I validate the status code is 400
#And: validate the data detail after failed get detail book
#
#Scenario: DELETE - As a user i can delete book
#Given: I set an endpoint for DELETE book
#When: I request DELETE book
#Then: I validate the status code is 204
#And: validate the data detail after delete book
#
#Scenario: DELETE - As a user i can not delete book with null userId
#Given: I set an endpoint for DELETE book
#When: I request DELETE book with null userId
#Then: I validate the status code is 401
#And: validate the data detail after failed delete book null userId
#
#Scenario: PUT - As a user i can replace isbn
#Given: I set an endpoint for PUT replace isbn
#When: I request PUT replace isbn
#Then: I validate the status code is 204
#And: validate the data detail after put replace isbn
#
#Scenario: PUT - As a user i can not replace isbn with null isbn
#Given: I set an endpoint for PUT replace isbn
#When: I request PUT replace isbn with null isbn
#Then: I validate the status code is 400
#And: validate the data detail after failed put replace isbn
