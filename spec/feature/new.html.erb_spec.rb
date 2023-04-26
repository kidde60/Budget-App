require 'rails_helper'

RSpec.feature 'Category page' do
  feature 'Display all the categories' do
    background do
      visit new_user_session_path
      @first = User.create(name: 'William', email: 'william@gmail.com', password: '123456')
      @category_one = Category.create(name: 'Education', icon: 'icons/education.png', author_id: @first.id)
      @expense_one = Expense.create(name: 'Bananas', amount: 100, author_id: @first.id)

      fill_in 'Email', with: @first.email
      fill_in 'Password', with: @first.password

      click_button 'Log in'

      visit categories_path
    end

    scenario 'shows each category' do
      expect(page).to have_content('ALL CARTEGORIES')
      expect(page).to have_content('Add New Category')
    end
    scenario 'Shows some text in the categories page' do
      expect(page).to have_content('Pro Budget App')
      expect(page).to have_content('ALL CARTEGORIES')
    end
  end
end
