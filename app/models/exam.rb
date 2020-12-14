class Exam < ApplicationRecord
  belongs_to :user

  has_one_attached :files

  has_many :appointment_detail, as: :detailable, dependent: :destroy

  validates :title, :date, :establishment, :description, :profile_id, presence: true
end
