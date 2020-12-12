class Share < ApplicationRecord
  validates :profile_shared, :status, presence: true
end
