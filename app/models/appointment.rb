class Appointment < ApplicationRecord
  belongs_to :profile
  has_many :appointment_details, dependent: :restrict_with_error

  validates :professional, :date_time, :specialty, :diagnostics, :complaints, presence: true
end
