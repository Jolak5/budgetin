require 'faker'
require 'open-uri'

FactoryBot.define do
  factory :group do
    author { FactoryBot.create(:user) }
    name { Faker::Company.name }

    after(:build) do |group|
      group.icon.attach(
        io: URI.open(Faker::LoremFlickr.image),
        filename: "#{Faker::Lorem.word}.png",
        content_type: 'image/png'
      )
    end
  end
end
