@javascript
Feature: Editing the Todolist
 
  Background: creating a list of todolist record
   	Given the following 'TodoList' exist:
		 	|title               | description 			 |
			| cucumber session 1 | session 1         |
			| cucumber session 2 | session 2         |
			| cucumber session 3 | session 3         |
			| cucumber session 4 | session 4         |
			| cucumber session 5 | session 5         |

  @edit
	Scenario: Edit a todo list
		And I am on the edit_todo_list page for 'cucumber session 3'
		Then I edit the following fields
			|title                    | description 			 |
			| cucumber session three  | session one        |
		Then I should be able to see "Todo list was successfully updated."
		And I should have the following 'TodoList'
			|title                    | description           			 |
			| cucumber session three  | session one                  |


