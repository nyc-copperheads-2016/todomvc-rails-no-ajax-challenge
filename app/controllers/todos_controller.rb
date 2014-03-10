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
    @todo = Todo.new params[:todo]
    if @todo.save
      redirect_to root_path
    else
      @todos = Todo.all
      render :index
    end
  end

  def edit
  end

  def update
    if @todo.update_attributes params[:todo]
      redirect_to @todo
    else
      render :edit
    end
  end

  def destroy
    @todo.destroy
    redirect_to root_path
  end

  private
  def load_todo
    @todo = Todo.find params[:id]
  end
end
