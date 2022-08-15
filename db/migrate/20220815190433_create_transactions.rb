class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.string :identifier
      t.string :customer_id
      t.integer :input_amount
      t.string :input_currency
      t.integer :output_amount
      t.string :output_currency
      t.date :transaction_date

      t.timestamps
    end
  end
end
