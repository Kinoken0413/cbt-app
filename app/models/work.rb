class Work < ApplicationRecord
  # ActiveHashとの関連付け拡張
  extend ActiveHash::Associations::ActiveRecordExtensions

  # 関連付け: ワークは複数の認知のゆがみを持つ
  has_many :cognitive_distortions

  # バリデーション: 必須項目として自動思考、認知のゆがみ、合理的な反応をチェック
  validates :automatic_thought, :cognitive_distortion_id, :rational_thought, presence: true
end