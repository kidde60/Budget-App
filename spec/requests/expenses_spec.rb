require 'rails_helper'

RSpec.describe Expense, type: :request do
  describe 'POST/expenses' do
    it 'returns http success' do
      post category_expenses_path(2)
      expect(response).to have_http_status(302)
    end
  end

  describe 'GET /expenses/new' do
    it 'returns http success' do
      get new_category_expense_path(2)
      expect(response).to have_http_status(302)
    end
  end
end