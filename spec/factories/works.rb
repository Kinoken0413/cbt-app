# FactoryBotを使用したWorkモデルのファクトリー定義

FactoryBot.define do
  factory :work do
    # ランダムな1000文字以内の文を自動思考に設定
    automatic_thought { Faker::Lorem.sentence[0...1000] }

    # ランダムな1から10までの数を認知のゆがみIDに設定
    cognitive_distortion_id { Faker::Number.between(from: 1, to: 10) }

    # ランダムな1000文字以内の文を合理的な反応に設定
    rational_thought { Faker::Lorem.sentence[0...1000] }
  end
end
