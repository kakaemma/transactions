class TransactionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_transaction, only: %i[show update]


  def index
    #return all transactions
    transactions = Transaction.all
    json_response(transactions)
  end

  def create
    #create new transactions
    new_transaction = Transaction.create!(transaction_params)
    json_response(new_transaction, :created)
  end

  def show
    # get the specific transaction by ID
    json_response(@transaction)
  end

  # UPDATING A TRANSACTION
  # CHECK IF CHECK IF THE TRANSACTION EXIST
  # VALIDATIONS FOR DATA
  # UPDATE
  def update
    @transaction.update!(transaction_params)
    message = {"message":"transaction was update successfully"}
    json_response(@transaction)
  end

  private

  def transaction_params
    params.require(:transaction).permit(
      :identifier, :customer_id, :input_amount,
      :input_currency, :output_amount, :output_currency,
      :transaction_date
    )
  end

  def set_transaction
    @transaction = Transaction.find(params[:id])
  end
end
