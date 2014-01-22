# TODO MVC on Rails Challenge


##What's been implemented:
### Steps:
Remember always start in this order: feature, controller, model. Each feature is implemented first in it's entirety. Meaning: I start writing a failing feature test, which leads me to write a controller tests/code, which leads me to write model tests/code.
### Features:
#####Feature: User can edit a Todo list

- As a guest user
- I can visit the homepage
- And see a list of all todo lists
- When I click on the edit link next to a list title
- I can edit the list title
- when I click save, the list title gets saved


#####Feature: User can delete a Todo list

- As a guest user
- I can visit the homepage
- And see a list of all todo lists
- I can delete a list by clicking on 'delete' next it's title

#####Feature: User can see a all tasks that belong to a Todo list

- As a guest user
- When I visit a Todo list's page
- I see a list of all tasks that belong the todo list

#####Feature: User can create a task for a Todo list

- Scenario: with valid params:
  - As a guest user
  - I can visit the Todo list's page
  - when I fill the form
  - I can see the task body prepended task list
- Scenario: with invalid params:
  - As a guest user
  - I can visit the Todo list's page
  - when I leave the form blank
  - I can see the error: "Body can't be blank"

##What's you'll implement:
  - user can mark a task as complete
  - user can mark a complete task as incomplete
  - user can edit a task
  - user can delete a task
  - bonus for awesomeness: make it a one page app:
    when you click on a todo list title, it shows the tasks and task form below it.
