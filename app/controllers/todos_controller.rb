class TodosController < ApplicationController
  before_filter :load_todo, :except => [:index, :create]

  def index
    @todo = Todo.new
    @todos = Todo.all
  end

  def show
    @task = Task.new
  end

  def create
    @todo = Todo.new todos_params
    if @todo.save
      redirect_to root_path
    else
      render :edit
    end
  end

  def edit
  end

  def update
    if @todo.update_attributes params[:todo]
      redirect_to @todo
    else
      flash[:alert] =  @todo.errors.full_messages.join(', ')
      render :edit
    end
  end

  def destroy
    @todo.destroy
    redirect_to root_path
  end

  private
  def todos_params
    params.require(:todo).permit(:title)
  end

  def load_todo
    @todo = Todo.find params[:id]
  end
end
