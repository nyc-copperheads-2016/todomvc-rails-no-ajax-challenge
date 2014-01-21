require 'spec_helper'
describe "Todo List" do
  let!(:todo) { create :todo }
  let!(:todos) { [todo, create(:todo)] }
  describe "User can see a all todo lists" do
    it "by visting the homepage" do
      visit root_path
      todos.each do |t|
        expect(page).to have_content t.title
      end
    end
  end

  describe "User can visit a todo list page" do
    it "by clicking on the a Todo List title on the homepage" do
      visit root_path
      click_on todo.title
      expect(current_path).to eq todo_path(todo)
      expect(page).to have_content todo.title
      expect(page).to_not have_content todos.last.title
    end
  end
end
