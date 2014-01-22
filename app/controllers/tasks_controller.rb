class TasksController < ApplicationController
  before_filter :load_todo
  def create
    @task = @todo.tasks.build params[:task]
    if @task.save
      render :partial => 'todos/task', :locals => { :task => @task }
    else
      render :partial => 'shared/errors', :locals => { :object => @task }, :status => :unprocessable_entity
    end
  end

  private
  def load_todo
    @todo = Todo.find params[:todo_id]
  end
end
