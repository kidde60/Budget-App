require 'rails_helper'

RSpec.describe CategoryExpense, type: :model do
  describe 'Model Test' do
    before :each do
      @user = User.new(name: 'William')
      @repair = Category.new(name: 'Repair', icon: 'https://img.icons8.com/ios-filled/512/maintenance.png',
                             author: @user)
      @fan = Expense.new(name: 'Repair', amount: 4.99, author: @user)
      @fan_repair = CategoryExpense.new(expense: @fan, category: @repair)
    end

    it 'should check name data is not valid' do
      @fan_repair.expense = nil
      expect(@fan_repair).to_not be_valid
    end

    it 'should check icon data is not valid' do
      @fan_repair.category = nil
      expect(@fan_repair).to_not be_valid
    end

    it 'should check data is valid and equal to fan_id' do
      expect(@fan_repair.expense_id).to eql(@fan.id)
    end

    it 'should check data is valid and equal to repair_id' do
      expect(@fan_repair.category_id).to eql(@repair.id)
    end
  end
end
