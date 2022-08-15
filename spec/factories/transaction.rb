FactoryBot.define do
  factory :transaction do
    identifier { Faker::Name.name }
    customer_id { Faker::Internet.uuid  }
    input_amount { Faker::Internet.free_email }
    input_currency { Faker::Currency.code }
    output_amount { Faker::Internet.password(11) }
    output_currency { Faker::Currency.code }
    transaction_date { rand(3).days.ago.to_date }
  end
end
