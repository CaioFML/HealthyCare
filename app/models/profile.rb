class Profile < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :cell_phone, presence: true
  validates :birthday, presence: true, birthday: true
  validates :weight, numericality: { greater_than: 0 }
  validates :height, numericality: { greater_than: 0 }
end
