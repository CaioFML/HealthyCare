class Appointment < ApplicationRecord
  validates :professional, presence: true
  validates :date_time, presence: true
  validates :specialty, presence: true
  validates :diagnostics, presence: true
  validates :complaints, presence: true
end
