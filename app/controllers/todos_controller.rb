class TodosController < ApplicationController
  before_filter :load_todo, :except => [:index, :create]

  def index
    @todo = Todo.new
    @todos = Todo.all
  end

  def show
  end

  def create
    @todo = Todo.new params[:todo]
    if @todo.save
      render :partial => 'todo', :locals => { :todo => @todo }
    else
      render :text => @todo.errors.full_messages.join(', '), :status => :unprocessable_entity
    end
  end

  def edit
    render :partial => 'form', :locals => { :todo => @todo }
  end

  def update
    if @todo.update_attributes params[:todo]
      render :partial => 'todo', :locals => { :todo => @todo }
    else
      render :text => @todo.errors.full_messages.join(', '), :status => :unprocessable_entity
    end
  end

  def destroy
    @todo.destroy
    render :text => {}
  end

  private
  def load_todo
    @todo = Todo.find params[:id]
  end
end
