FactoryBot.define do
  factory :work do
    automatic_thought { Faker::Lorem.sentence[0...1000] }
    cognitive_distortion_id { Faker::Number.between(from: 1, to: 10) }
    rational_thought { Faker::Lorem.sentence[0...1000] }
  end
end