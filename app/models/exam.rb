class Exam < ApplicationRecord
  belongs_to :user

  has_one_attached :files

  validates :title, :date, :establishment, :description, :profile_id, presence: true
end
