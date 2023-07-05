require 'faker'

FactoryBot.define do
  factory :group do
    author { FactoryBot.create(:user) }
    name { Faker::Company.name }

    after(:build) do |group|
      group.icon.attach(
        io: File.open(Rails.root.join('app', 'assets', 'images', 'icon.jpg')),
        filename: "#{Faker::Lorem.word}.jpeg",
        content_type: 'image/jpeg'
      )
    end
  end
end
