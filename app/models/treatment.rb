class Treatment < ApplicationRecord
  belongs_to :profile

  has_many :appointment_detail, as: :detailable, dependent: :destroy

  validates :title, :description, :establishment, :type, presence: true
end
