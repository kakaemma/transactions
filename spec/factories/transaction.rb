FactoryBot.define do
  factory :transaction do
    identifier { Faker::Name.name }
    customer_id { Faker::Internet.uuid  }
    input_amount { Faker::Number.number(digits: 4) }
    input_currency { Faker::Currency.code }
    output_amount { Faker::Number.number(digits: 4) }
    output_currency { Faker::Currency.code }
    transaction_date { rand(3).days.ago.to_date }
  end
end
