class Appointment < ApplicationRecord
  belongs_to :profile
  validates :professional, :date_time, :specialty, :diagnostics, :complaints, presence: true
end
