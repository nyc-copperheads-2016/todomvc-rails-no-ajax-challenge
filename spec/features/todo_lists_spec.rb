describe "Todo List" do
  let!(:todo) { create :todo }
  let!(:todos) { [todo, create(:todo)] }
  describe "User can see a all todo lists" do
    it "by visting the homepage" do
      visit root_path
      todos.each do |t|
        expect(page).to have_content t.title
      end
    end
  end

  describe "User can visit a todo list page" do
    it "by clicking on the a Todo List title on the homepage" do
      visit root_path
      click_on todo.title
      expect(current_path).to eq todo_path(todo)
      expect(page).to have_content todo.title
      expect(page).to_not have_content todos.last.title
    end
  end

  describe "User can create a todo list" do
    context "with valid title" do
      it "todo link will be appended to the page" do
        visit root_path
        fill_in "Title", :with => "Work"
        click_on "Add"
        expect(page).to have_content "Work"
      end
    end
    context "with invalid title" do
      it "existing title" do
        visit root_path
        fill_in "Title", :with => todo.title
        click_on "Add"
        expect(page).to have_content "Title has already been taken"
      end
      it "blank title" do
        visit root_path
        fill_in "Title", :with => nil
        click_on "Add"
        expect(page).to have_content "Title can't be blank"
      end

      it "clears the errors after success" do
        visit root_path
        fill_in "Title", :with => nil
        click_on "Add"
        expect(page).to have_content "Title can't be blank"
        fill_in "Title", :with => "Work"
        click_on "Add"
        expect(page).to have_content "Work"
        expect(page).to_not have_content "Title can't be blank"
      end
    end
  end

  describe "User can edit a todo list" do
    context "valid params" do
      it "updates the todo title" do
        visit root_path
        first(:link, 'edit').click
        fill_in 'Title', :with => "Work"
        click_on 'Add'
        expect(page).to have_content "Work"
      end
    end
    context "invalid params" do
      it "blank title" do
        visit root_path
        first(:link, 'edit').click
        fill_in 'Title', :with => ""
        click_on 'Add'
        expect(page).to have_content "Title can't be blank"
      end
    end
  end

  describe "User can delete a Todo list" do
    it "removes the todo title from the list" do
      visit root_path
      first(:link, 'delete').click
      expect(page).to_not have_content todo.title
    end
  end
end
