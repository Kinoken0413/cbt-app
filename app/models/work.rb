class Work < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :cognitive_distortions

  validates :automatic_thought,  :cognitive_distortion_id, :rational_thought, presence: true
end