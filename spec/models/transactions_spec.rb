require 'rails_helper'
RSpec.describe Transaction, type: :model do
  it { should validate_presence_of(:identifier) }
  it { should validate_presence_of(:customer_id) }
  it { should validate_presence_of(:input_amount) }
  it { should validate_presence_of(:input_currency) }
  it { should validate_presence_of(:output_amount) }
  it { should validate_presence_of(:output_currency) }
  it { should validate_presence_of(:transaction_date) }
end