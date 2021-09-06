Given("I am a user and should create the following TodoList") do |table|
  attributes = table.rows_hash
  visit new_todo_list_path
  fill_in 'Title', with: attributes['title']
  fill_in 'Description', with: attributes['description']
  click_on 'Create Todo list'
end

Then("I should be able to see {string}") do |string|
 expect(page).to have_text(string)
end

Then("I should have the following {string}") do |string, table|
  attributes = table.hashes
  model = string.constantize
  title =  model.find_by_title(attributes.first['title']).title
  expect(attributes.first['title']).to eq(title)
end

Given("the following {string} exist:") do |string, table|
  model = string.constantize
  values = table.hashes
  model.create(values)
end

Given("I am on the edit_todo_list page for {string}") do |string|
  todolist = TodoList.find_by_title(string)
  visit edit_todo_list_path(todolist)
end

Then("I edit the following fields") do |table|
 attributes = table.hashes

 fill_in 'Title', with: attributes.first['title']
 fill_in 'Description', with: attributes.first['description']

 click_on 'Update Todo list'
end

# Adapted from https://stackoverflow.com/a/4682205
Then /^I explore the app$/ do
  require 'io/wait'
  done = false
  until done
    if $stdin.ready?
      line = $stdin.readline.strip
      done = true if line.present?
    end
    sleep 1
  end
end
