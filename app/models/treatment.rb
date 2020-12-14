class Treatment < ApplicationRecord
  belongs_to :profile
  validates :title, :description, :establishment, :type, presence: true
end
