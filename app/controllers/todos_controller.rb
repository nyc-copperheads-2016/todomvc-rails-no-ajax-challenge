class TodosController < ApplicationController
  def index
    @todo = Todo.new
    @todos = Todo.all
  end

  def show
    @todo = Todo.find params[:id]
  end

  def create
    @todo = Todo.new params[:todo]
    if @todo.save
      render :partial => 'todo', :locals => { :todo => @todo }
    else
      render :text => @todo.errors.full_messages.join(', '), :status => :unprocessable_entity
    end
  end
end
