# TODO MVC on Rails Challenge


##What's been implemented:
### Steps:
Remember always start in this order: feature, controller, model. Each feature is implemented first in it's entirety. Meaning: I start writing a failing feature test, which leads me to write a controller tests/code, which leads me to write model tests/code.
### Features:
#####Feature: User can see a all Todo lists

- As a guest user
- I can visit the homepage
- And see a list of all todo lists
- When I click on a list title
- I go to that list's page


#####Feature: User can create a Todo list

- Scenario: with valid params:
  - As a guest user
  - I can visit the homepage
  - when I fill the form with a unique title  and click on "Add Todo List"
  - I can see the title link prepended to the todo lists titles
- Scenario: with invalid params:
  - As a guest user
  - I can visit the homepage
  - when I fill the form with a taken title and click on "Add Todo List"
  - I can see "Title must be unique" appear on top of the form
  - when I click on "Add Todo List"
  - I can see "Title can't be blank" appear on top of the form



##What you'll implement:
  - user can edit a todo list
  - user can delete a todo list
