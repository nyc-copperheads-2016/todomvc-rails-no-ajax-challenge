require 'spec_helper'
describe TodosController do
  context "#index" do
    it "is successful" do
      get :index
      expect(response).to be_success
    end

    it "assigns @todos to Todo.all" do
      get :index
      expect(assigns(:todos)).to eq Todo.all
    end
  end

  context "#show" do
    let(:todo) { create :todo }
    it "is successful" do
      get :show, :id => todo.id
      expect(response).to be_success
    end

    it "assigns @todo to todo" do
      get :show, :id => todo.id
      expect(assigns(:todo)).to eq todo
    end
  end
end
