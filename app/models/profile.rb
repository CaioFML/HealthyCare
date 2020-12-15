class Profile < ApplicationRecord
  belongs_to :user
  has_many :appointments, dependent: :restrict_with_error
  has_many :shares, dependent: :restrict_with_error
  has_many :exams, dependent: :restrict_with_error
  has_many :treatments, dependent: :restrict_with_error

  validates :name, :cell_phone, presence: true
  validates :birthday, presence: true, birthday: true
  validates :weight, :height, numericality: { greater_than: 0 }

  has_one_attached :photo
end
