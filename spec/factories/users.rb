# FactoryBotを使用したUserモデルのファクトリー定義

FactoryBot.define do
  factory :user do
    # ランダムな名前
    name { Faker::Name.first_name }

    # ランダムなメールアドレス
    email { Faker::Internet.email }

    # パスワード: "aaaaa1"
    password { "aaaaa1" }

    # パスワード確認: 同じく "aaaaa1"
    password_confirmation { password }
  end
end
