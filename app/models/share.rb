class Share < ApplicationRecord
  belongs_to :profile

  validates :profile_shared, presence: true

  enum status: { active: 1,  inactive: 2 }
end
