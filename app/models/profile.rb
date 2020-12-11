class Profile < ApplicationRecord
  belongs_to :user

  has_many :appointment

  validates :name, :cell_phone, presence: true
  validates :birthday, presence: true, birthday: true
  validates :weight, :height, numericality: { greater_than: 0 }

  has_one_attached :photo
end
