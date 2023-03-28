class CreateCategoryTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :category_transactions do |t|
      t.references :category, null: false, foreign_key: { to_table: :categories }
      t.references :transaction, null: false, foreign_key: { to_table: :transactions }

      t.timestamps
    end
  end
end
