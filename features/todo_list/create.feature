@javascript
Feature: A user can create todolist

Scenario: creating a todolist
	Given I am a user and should create the following TodoList
	|title        | cucumber session   |
	| description | session 1          |
	Then I should be able to see "Todo list was successfully created."
	Then I explore the app
	And I should have the following 'TodoList'
	|title             | description 			 |
	| cucumber session | session 2         |


