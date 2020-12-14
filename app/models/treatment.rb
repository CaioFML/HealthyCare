class Treatment < ApplicationRecord
  validates :title, :description, :establishment, :type, presence: true
end