class Share < ApplicationRecord
  belongs_to :profile

  validates :profile_shared, :status, presence: true

  enum status: { active: 1,  inactive: 2 }
end
