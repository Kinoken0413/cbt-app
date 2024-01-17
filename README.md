# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association

- has_many :works

## works テーブル

| Column                   | Type       | Options                        |
| ------------------------ | ---------- | ------------------------------ |
| user                     | references | null: false, foreign_key: true |
| automatic_thought        | text       | null: false                    |
| cognitive_distortion_id  | integer    | null: false                    |
| rational_thought         | text       | null: false                    |

### Association

- belongs_to :user