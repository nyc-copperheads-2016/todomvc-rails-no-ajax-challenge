class TasksController < ApplicationController
  before_filter :load_todo
  def create
    @task = @todo.tasks.build params[:task]
    if @task.save
      redirect_to @todo
    else
      render 'todos/show'
    end
  end

  private
  def load_todo
    @todo = Todo.find params[:todo_id]
  end
end
