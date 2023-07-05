FactoryBot.define do
  factory :entity do
   
    author { FactoryBot.create(:user) }
    name { Faker::Company.name }
    amount { Faker::Number.decimal(l_digits: 2) }
   
  end
end