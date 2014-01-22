require 'spec_helper'
describe "Tasks", :js => true do
  let!(:task) { create :task }
  let(:todo) { task.todo }
  describe "User can see todo tasks" do
    it "by visting the todo list page" do
      visit todo_path(todo)
      expect(page).to have_content task.body
    end
  end
  describe "User can create a task" do
    context "with valid body" do
      it "task link will be appended to the page" do
        visit todo_path(todo)
        fill_in "Body", :with => "clean house"
        click_on "Create Task"
        wait_for_ajax_to_finish
        expect(page).to have_content "clean house"
      end
    end
    context "with invalid body" do
      it "blank body" do
        visit todo_path(todo)
        fill_in "Body", :with => nil
        click_on "Create Task"
        wait_for_ajax_to_finish
        expect(page).to have_content "Body can't be blank"
      end

      it "clears the errors after success" do
        visit todo_path(todo)
        fill_in "Body", :with => nil
        click_on "Create Task"
        wait_for_ajax_to_finish
        expect(page).to have_content "Body can't be blank"
        fill_in "Body", :with => "Work"
        click_on "Create Task"
        wait_for_ajax_to_finish
        expect(page).to have_content "Work"
        expect(page).to_not have_content "Body can't be blank"
      end
    end
  end
end
