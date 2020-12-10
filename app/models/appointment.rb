class Appointment < ApplicationRecord
  validates :professional, :date_time, :specialty, :diagnostics, :complaints, presence: true
end
