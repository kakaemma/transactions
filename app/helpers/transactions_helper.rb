module TransactionsHelper
  def is_amount_number?(amount)
    return false unless  amount.is_a?(Integer)
    true
  end

  def is_currency_code_in_array(code)
    arr = ['USD']
  end
end
