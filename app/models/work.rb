class Work < ApplicationRecord
  # ActiveHashとの関連付け拡張
  extend ActiveHash::Associations::ActiveRecordExtensions

  # バリデーション: 必須項目として自動思考、認知のゆがみ、合理的な反応をチェック
  validates :automatic_thought, :cognitive_distortion_id, :rational_thought, presence: true
end