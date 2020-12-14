class AppointmentDetail < ApplicationRecord
  belongs_to :appointment
  belongs_to :detailable, polymorphic: true
end
