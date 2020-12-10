class Exam < ApplicationRecord
  belongs_to :user

  has_one_attached :files

  validates :title, presence: true
  validates :date, presence: true
  validates :establishment, presence: true
  validates :description, presence: true
  validates :profile_id, presence: true

end
