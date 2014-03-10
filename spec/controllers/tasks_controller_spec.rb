require 'spec_helper'
describe TasksController do
  let!(:todo) { create :todo }
  context "#create" do
    it "creates a task with valid params" do
      expect {
        post :create, :todo_id => todo.id, :task => attributes_for(:task)
        expect(response).to be_redirect
      }.to change { Task.count }.by(1)
    end
    it "doesn't create a task with invalid params" do
      expect {
        post :create, :todo_id => todo.id, :task => { :body => nil }
        expect(response).to render_template('todos/show')
      }.to_not change { Task.count }
    end
  end
end
