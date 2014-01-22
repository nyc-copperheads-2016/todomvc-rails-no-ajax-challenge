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

##What you'll implement:
  - user can mark a task as complete
  - user can mark a complete task as incomplete
  - user can edit a task
  - user can delete a task
## Objective:
BDD your way to building a Todo app with Rails. This will happen through a series of steps. This Readme will change with each step explaining the objective of the step, what's been implemented and what you'll be implementing.

Each step will build the previous step's "what you'll be implementing" section. This will allow you to compare your solution with mine.

## Your approach:
- Read the Readme.
- Review your solution of your previous step against our solution.
- Follow the instructions on how to run the "what's been implemented" section. Inspect, study and ask lots of questions about what's been implemented.
- Move to "what you'll be implementing":
  - Start with a plan: write your own Readme that outlines what you're about todo and the steps you'll take to meet your objectives. Please don't skip this, the format is irrelevant, choose something that makes sense to you and stick to it.
  - Implement your solutions as outlined in your Readme.
  - 1000.times { puts "please don't copy and paste"}, the purpose of this challenge is for you to get inspired by an example and go and implement your own. Make mistakes, get confused and most importantly ask lots of questions. Keep the "What's been implemented" section as a reference.
  - FYI: all of my work/solutions have been BDDed, not a single line of code in this project was written without a test first. The approach I outlined above, is the one I usually follow in my work as an engineer.

## [Todo] Before you start:
  - What's behavior driven development
  - Understand the Red, Green, Refactor cycle
  - We test outside in.
