class TodosController < ApplicationController
  def index
    @todo = Todo.new
    @todos = Todo.all
  end

  def show
    @todo = Todo.find params[:id]
  end

  def create
    @todo = Todo.new todos_params
    if @todo.save
      redirect_to root_path
    else
      @todos = Todo.all
      render :index
    end
  end

  private
  def todos_params
    params.require(:todo).permit(:title)
  end
end
