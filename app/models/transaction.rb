class Transaction < ApplicationRecord
  validates_presence_of  :identifier, :customer_id, :input_amount,
                         :input_currency, :output_amount, :output_currency,
                         :transaction_date
end
