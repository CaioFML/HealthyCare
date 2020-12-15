class Exam < ApplicationRecord
  belongs_to :user
  has_many :appointment_detail, as: :detailable, dependent: :restrict_with_error

  has_one_attached :files

  validates :title, :date, :establishment, :description, :profile_id, presence: true
end
