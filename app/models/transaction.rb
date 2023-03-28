class Transaction < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :category_transactions, dependent: :destroy
  has_many :categories, through: :category_transactions, dependent: :destroy
end
